# Aleksei Devyatkin`s python simple project template

This is a [Cookiecutter](https://github.com/cookiecutter/cookiecutter) template
for a simple **Python 3** package.

```bash
$ pip install --upgrade cookiecutter
$ cookiecutter gh:devalv/cookiecutter-python
```

## Hooks
**pre-commit**:
* isort
* pre-commit-hooks
* black
* flake8

### FAQ

```bash
pre-commit run --all-files
```

## CI
GitHub actions located on **.github/workflows** directory.

### Default rules:
* any commit starts linter check
* any PR/MR starts docker-compose docker-compose-test.yml
* any PR/MR starts codecov uploader

## PyPi
Don`t forget to set **PYPI_USERNAME** and **PYPI_PASSWORD** variables on a **GitHub**.