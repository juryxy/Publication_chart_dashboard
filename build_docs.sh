#!/usr/bin/env bash
set -e
python3 -m venv .docs-venv
. .docs-venv/bin/activate
python -m pip install --upgrade pip
python -m pip install -r readthedocs/requirements-docs.txt
python -m sphinx -b html readthedocs readthedocs/_build/html
printf '\nDocumentation built at readthedocs/_build/html/index.html\n'
