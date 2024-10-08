# preprints-evaluation-dataset
A dataset contructed to evaluate metadata extraction from academic paper preprints

## Methodology

* Create initial dataset (Yo @edsu how did you do this?)
* Filter to last 5 years. (how?)
* Select 3 items from each discipline. (how?)
* Note: We didn't filter by OpenAlex's "Type: Article", so we need to manually examine each and determine if it is appropriate for inclusion in the set.
* Produce data collection inventory sheet: https://docs.google.com/spreadsheets/d/1Jl1TKbTgeM3z8S-AO0FaH1VgRjMVP49dg4wZLkpGPus/edit?gid=1284016921#gid=1284016921
* Copy the druids that were cataloged (and are preprints) from the spreadsheet and put them in `records.csv`
* Run `download_results.sh` which collects the data from SDR and distills it into our control set (in `control/`)
* Collect experimental data.  One experiment is [gemini-1.5-flash](gemini-1.5-flash). The notebook and expermental results are in that directory. 
* Compare the experimental results with the control data. Method TBD.

## Notebooks

To run the notebooks you will need to create a virtual environment and activate it:

```
$ python -mvenv .venv
$ source .venv/bin/activate
```

Then install the dependencies:

```
$ pip install -r requirements.txt
```

Then run Jupyter:

```
$ jupyter lab
```

This should launch your browser with the Jupyter Lab running, from where you can select the notebook you are interested in using.
