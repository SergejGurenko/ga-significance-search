#
#

test:
	pytest tests/ -v

strip:
	jupyter nbconvert --clear-output --inplace notebooks/*.ipynb

