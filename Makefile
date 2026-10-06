#
#
.PHONY: all test strip format

all: strip format test

test:
	pytest tests/ -v

strip:
	jupyter nbconvert --clear-output --inplace notebooks/*.ipynb

format:
	black notebooks/*.ipynb
	black src/*.py
