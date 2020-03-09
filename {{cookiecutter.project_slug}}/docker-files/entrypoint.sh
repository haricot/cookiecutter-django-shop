#!/bin/bash
set -e

{% if cookiecutter.travis_ci== "y" -%}
/web/manage.py initialize_shop_demo --noinput
timeout 10s bash -c "/web/manage.py runserver 0.0.0.0:9009"
{% else %}
npm install
/web/manage.py initialize_shop_demo --noinput
exec /web/manage.py runserver 0.0.0.0:9009
{% endif %}
