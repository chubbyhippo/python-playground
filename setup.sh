#!/usr/bin/env sh
curl -k "https://raw.githubusercontent.com/chubbyhippo/python-playground/refs/heads/main/mise.toml" -o "mise.toml"
curl -k "https://raw.githubusercontent.com/chubbyhippo/python-playground/refs/heads/main/requirements.txt" -o "requirements.txt"
mise exec python@3 -- python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
