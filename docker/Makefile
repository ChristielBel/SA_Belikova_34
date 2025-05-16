.PHONY: install install-dev test run

install:
	pip install --prefix=/install .

install-dev:
	pip install --prefix=/install ".[test]"

test:
	pytest tests

run:
	uvicorn src.main:app --host 0.0.0.0 --port 8058 --reload
