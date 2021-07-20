[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)
[![codecov](https://codecov.io/gh/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}/branch/main/graph/badge.svg)](https://codecov.io/gh/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }})

# {{ cookiecutter.project_name }}
For additional instructions please see
[Wiki](https://github.com/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}/wiki)

## Git hooks
Please install [pre-commit](https://pre-commit.com) hook.

```bash
pre-commit install
```

## Directory structure

```
├── .github                    -- preconfigured Github Actions
│   ├── workflows
├── src                        -- place for source code of your package
│   ├── __init__.py
├── tests                      -- place for tests of your package
│   ├── __init__.py
│   └── conftest.py
├── .editorconfig
├── .gitignore
├── .pre-commit-config.yaml    -- hooks configuration
├── app.py                     -- local package runner (examples and etc)
├── LICENSE
├── Pipfile                    -- preconfigured requirements
├── README.md
├── setup.py                   -- your package configuration file
└── tox.ini                    -- python dev-tools configuration
```

## Participation
```
Fork -> Changes -> PR
```
