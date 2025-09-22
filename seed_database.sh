#!/bin/bash

rm db.sqlite3
rm -rf ./sample-backendapi/migrations
python3 manage.py migrate
python3 manage.py makemigrations sample-backendapi
python3 manage.py migrate sample-backendapi
python3 manage.py loaddata users
python3 manage.py loaddata tokens

