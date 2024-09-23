#!/bin/bash

mkdir output
druids=(by432qh9476 cm292rt3568 cm519sm7175 cv788rk8775 df625mx6241 dt900cp4655 fy534kx0887 hg936dq0657 wq745mn2633 gx957zk5574 hy021zn7242 jf164cr9577 jf663zk9641 jg868kp6262 jq279pz2088 jq688zd8574 kd320vy3294 kt124pw7658 kt342kq6331 kw111wz3043 nc165yp8360 nm560sj3327 ny096xg8412 pf494rb6827 qj864kb6479 rc235st5761 sd570xv3570 sq475wr5654 sw902wx2411 tx033hq3853 vv703fs0823 vx966vb2602 vy902bz5532 wb233rd7257 wg278mx6077 xb043gc4872 xn919my5309 xs423ty1162 yg487ck7556 yg846np7137 zc558cm6201 zv617qm5276)
for druid in ${druids[@]}; do
  echo $druid
  curl https://sul-purl-stage.stanford.edu/$druid.json |  jq '{ label: .label, authors: .description.contributor | map( .name[0] | { first_name: .structuredValue[0].value, last_name: .structuredValue[1].value}), abstract: .description.note[] | select(.type=="abstract").value, keywords: .description.subject | map(select(.type == "topic").value) }' > output/$druid.json
done
