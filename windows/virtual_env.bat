@echo off
REM Check Python version
python --version

REM Install pip if necessary
python -m ensurepip --upgrade

REM Install the Python virtual environment package
pip install virtualenv

REM Create a virtual environment called my_env
python -m venv my_env

REM Activate the virtual environment
call my_env\Scripts\activate
