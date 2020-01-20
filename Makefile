.PHONY: test

help:
	@echo
	@echo "======================================================================"
	@echo
	@echo "📡  API"
	@echo
	@echo "valid:      validate schema.yaml"
	@echo "docs:       start docs server"
	@echo "flask:      start built-in Flask dev server"
	@echo "get:        hit index endpoint"
	@echo
	@echo "📊 CODE QUALITY"
	@echo
	@echo "test:       run unit tests, view basic coverage report in terminal"
	@echo "cov:        view HTML coverage report in browser"
	@echo "lint:       lint using flake8"
	@echo "fmt:        autoformat using black"
	@echo
	@echo "📦 DEPENDENCIES"
	@echo
	@echo "env:        show environment info"
	@echo "deps:       list prod dependencies"
	@echo
	@echo "======================================================================"
	@echo

#
# 🛠 UTILS
#

valid:
	poetry run apistar validate

docs:
	poetry run apistar docs --serve

flask:
	poetry run flask run

get:
	poetry run http http://localhost:5000/index?echo=zjv

#
# 📊 CODE QUALITY
#

test:
	poetry run coverage run --source='app' -m pytest -v && poetry run coverage report -m

cov:
	poetry run coverage html; open htmlcov/index.html

lint:
	poetry run flake8 *.py

fmt:
	poetry run isort *.py; poetry run black *.py

#
# 📦 DEPENDENCIES
#

env:
	poetry env info

deps:
	poetry show --tree --no-dev
