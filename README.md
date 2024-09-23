# preprints-evaluation-dataset
A dataset contructed to evaluate metadata extraction from academic paper preprints

## Methodology

* Create initial dataset (from where?)
* Filter to last 5 years. (how?)
* Select 3 items from each discipline. (how?)
* Note: We didn't filter by OpenAlex's "Type: Article", so we need to manually examine each and determine if it is appropriate for inclusion in the set.
* Produce data collection inventory sheet: https://docs.google.com/spreadsheets/d/1Jl1TKbTgeM3z8S-AO0FaH1VgRjMVP49dg4wZLkpGPus/edit?gid=1284016921#gid=1284016921
* Copy the druids that were cataloged (and are preprints) from the spreadsheet and add them to `download_results.sh` then run it.
* TODO: Evaluate various Document question models with this dataset.

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
