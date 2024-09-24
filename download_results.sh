#!/bin/bash

mkdir -p control
lines=`awk  -F ',' 'NR>1 { sub(/https:\/\/openalex.org\//, "", $1); sub(/druid:/, "", $3); print $1, $3 }' records.csv`
while IFS= read -r line || [[ -n $line ]]; do
  id=${line% *}
  druid=${line#* }

  curl -s https://sul-purl-stage.stanford.edu/$druid.json |  jq '{ title: .label, authors: .description.contributor | map( .name[0] | { first: .structuredValue[0].value, last: .structuredValue[1].value}), abstract: ((.description.note[] | select(.type=="abstract").value) // null), keywords: .description.subject | map(select(.type == "topic").value) }' > control/$id.json || echo "ERROR WITH $druid"
  echo -n .
done < <(printf '%s' "$lines")
