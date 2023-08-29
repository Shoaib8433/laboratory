#!/bin/bash

# Run ansible on server for node exporter

# Setup docker compose for prometheus
docker compose up -d prometheus
docker compose up -d grafana