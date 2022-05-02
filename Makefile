install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
    
lint:
	pylint --disable=R,C *.py
	
check:
	flake8 .

format:
	black *.py

security:
	bandit *.py

test:
	python -m pytest --cov -vv *.py
