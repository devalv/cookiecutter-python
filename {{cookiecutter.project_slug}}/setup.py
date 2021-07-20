# -*- coding: utf-8 -*-
"""Python package config."""
import setuptools

with open('README.md', 'r') as fh:
    long_description = fh.read()

setuptools.setup(
    name='{{ cookiecutter.project_slug }}',
    version='{{ cookiecutter.version }}',
    author='{{ cookiecutter.full_name }}',
    author_email='{{ cookiecutter.email }}',
    description='{{ cookiecutter.project_name }}',
    long_description=long_description,
    long_description_content_type='text/markdown',
    url='https://github.com/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}',
    packages=setuptools.find_packages(),
    classifiers=[
        'Programming Language :: Python :: 3',
        'License :: OSI Approved :: MIT License',
        'Development Status :: 5 - Production/Stable',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.9',
    install_requires=[]
)
