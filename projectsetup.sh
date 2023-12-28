#!/bin/bash

# Create a virtual environment
python3 -m venv env

# Activate the virtual environment
source env/bin/activate

# Install project dependencies
pip install -r requirements.txt

# Set Flask app environment variable
export FLASK_APP=app.py

# Run the Flask app
flask run