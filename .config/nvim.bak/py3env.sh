#!/bin/sh

# Creates a python virtual environment.

python3 -m env py3env && \
	source py3env/bin/activate && \
	python3 -m pip install -U pip pynvim

