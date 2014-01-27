#!/bin/bash

../bin/gunicorn_paster -c gunicorn_config.py development.ini
