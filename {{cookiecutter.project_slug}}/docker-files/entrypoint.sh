#!/bin/bash
set -e

npm install
/web/manage.py initialize_shop_demo --noinput
timeout 10s bash -c "/web/manage.py runserver 0.0.0.0:9009"
