#!/usr/bin/env bash

if [ ! -d /app ]; then
  mkdir /app
  echo "##########################################################"
  echo "## Be carefull, /app folder seems not being persistent, ##"
  echo "## Your modifications won't be stored.                  ##"
  echo "##########################################################"
fi

cd /app

if [ ! -f /app/server.py ]; then
  echo "##########################################################"
  echo "## Be carefull, /app/server.py was'nt existing          ##"
  echo "## Your /app folder may not be persistent.              ##"
  echo "##########################################################"
  cp -R /opt/jam-py/demo/* .
fi

chown -R jampy:jampy /app
su -l jampy -c ./server.py
