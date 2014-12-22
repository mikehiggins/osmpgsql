#!/bin/bash

# osm2pgsql -s -k --username gisuser --create --database gis --cache-strategy sparse --cache 600 ../data/hong-kong_china.osm.pbf

osm2pgsql -s -k --username gisuser --create --database gis --cache-strategy sparse --cache 600 ../data/australia-latest.osm.pbf