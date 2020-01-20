# what is this?

Example app to demo API Star w/ an OpenAPI service.

# how to use?

* __Git__: clone the repo, then make it your own by removing the connection to this remote (`git remote rm git@github.com:zachvalenta/flask-openapi.git`) and re-initializing the commit history (`rm .git` then `git init`)
* __dependencies__: `poetry install`
* __env var__: `ln -sf .env.dev .env`
* __run__: `make flask`
* __everything else__: `make help`

```Makefile
======================================================================

📡  API

valid:      validate schema.yaml
docs:       start docs server
flask:      start built-in Flask dev server
get:        hit index endpoint

📊 CODE QUALITY

test:       run unit tests, view basic coverage report in terminal
cov:        view HTML coverage report in browser
lint:       lint using flake8
fmt:        autoformat using black

📦 DEPENDENCIES

env:        show environment info
deps:       list prod dependencies

======================================================================
```
