#!/bin/bash
echo "OSM PGSQL utility to:"
echo "- Create Postgres DB"
echo "- Download and install osm2pgsql"
echo "- Download OSM data"
echo "- Import OSM data into PGSQL DB"

./scripts/01-create-pgdb.sh

# Still testing the base install procedures
# ./scripts/02-install-osm2pgsql.sh
# ./scripts/03-download-osm-data.sh
# ./scripts/04-import-osm-data.sh
