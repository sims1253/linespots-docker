#!/bin/bash
pipenv run python linespots/utils/json_builder.py
pipenv run python full-evaluation.py -p $1
cp ../evaluation_projects/full_evaluation.csv ../host/
