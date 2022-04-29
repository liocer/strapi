#!/bin/sh
cd /opt/
if [ ! -e /opt/app/package.json ]
then
  yarn create strapi-app app --quickstart --no-run
  cd app
  yarn add mysql
  yarn build
fi
cd app
yarn develop
