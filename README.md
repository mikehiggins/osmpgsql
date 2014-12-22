##osmpgsql
========
A simple shell script which uses Vagrant to get a PostgreSQL DB instance up and running quickly with OSM data
imported and ready to query from the host machine.

##Method
A basic bash script which sequentially calls other scripts in the `/scripts/` directory 
to do the following:
1. `01-create-pgdb.sh` - Create the PostgreSQL database and install necessary PostGIS extensions
2. `02-install-osm2pgsql.sh` - Install the osm2pqsql utility
3. `03-download-osm-data.sh` - Download the latest osm extract file and save to the `data/` directory
4. `04-import-osm-data.sh` - Run the import script to get the OSM data from the downloaded file into the PostgreSQL DB
 



