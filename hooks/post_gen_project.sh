#!/bin/bash -e

echo -ne "Running with "
python --version

echo "Creating new venv .."
python -m pip install -U pipenv
python -m pipenv install --dev

echo "Installing pre-commit hooks"
git init
git add README.md
git commit -m "first commit"
git branch -M main
pipenv run pre-commit install

echo "Adding pretty-errors"
pipenv run python -m pretty_errors

echo "Running greeting"
pipenv run python app.py

echo "Done"