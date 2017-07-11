#!/bin/bash
# Automatically replace "TAIGA_SECRET_KEY" with the environment variable
sed -i "s/TAIGA_SECRET_KEY/$TAIGA_SECRET_KEY/g" /usr/src/taiga-events/config.json

sed -i "s/RABBITMQ_DEFAULT_USER/$RABBITMQ_DEFAULT_USER/g" /usr/src/taiga-events/config.json
sed -i "s/RABBITMQ_DEFAULT_PASS/$RABBITMQ_DEFAULT_PASS/g" /usr/src/taiga-events/config.json
sed -i "s/RABBITMQ_DEFAULT_VHOST/$RABBITMQ_DEFAULT_VHOST/g" /usr/src/taiga-events/config.json


exec "$@"
