.PHONY: lint fix format export-dependencies

default: format

lint:
	ruff check
	mypy .

fix:
	ruff check --fix

format:
	ruff check --select I --fix
	ruff format

export-dependencies:
	uv export --no-hashes -o requirements.txt
	uv export --only-dev --no-hashes -o requirements-dev.txt