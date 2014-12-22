#!/bin/bash

# the below install of pgsql was not working without this below update
sudo apt-get -y update

# Install PGsql and PostGIS
sudo apt-get -y install postgresql postgresql-contrib postgis postgresql-9.3-postgis-2.1

sudo -u postgres createuser gisuser
sudo -u postgres createdb --encoding=UTF8 --owner=gisuser gis

# Create hstore extension
sudo -u postgres psql -d gis -c "CREATE EXTENSION hstore;"

sudo -u postgres psql -d gis -f /usr/share/postgresql/9.3/contrib/postgis-2.1/postgis.sql
sudo -u postgres psql -d gis -f /usr/share/postgresql/9.3/contrib/postgis-2.1/spatial_ref_sys.sql
sudo -u postgres psql -d gis -f /usr/share/postgresql/9.3/contrib/postgis-2.1/postgis_comments.sql
sudo -u postgres psql -d gis -c "GRANT SELECT ON spatial_ref_sys TO PUBLIC;"
sudo -u postgres psql -d gis -c "GRANT ALL ON geometry_columns TO gisuser;"

# The below shows how to permit password-less access to DB for the postgis user
# essentially, need to edit /etc/postgresql/9.3/main/pg_hba.conf and in the final lines
# replace "ident" and "md5" with the word "trust"
# http://wiki.openstreetmap.org/wiki/PostGIS/Installation

# then need to reload the config file
# sudo -u postgres service postgresql reload