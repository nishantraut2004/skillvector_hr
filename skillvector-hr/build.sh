#!/usr/bin/env bash
# exit on error
set -o errexit

# Install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Download spaCy NLP model
python -m spacy download en_core_web_sm

# Apply database migrations
flask db upgrade
