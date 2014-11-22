#!/bin/bash

sudo -u postgres createuser gisuser
sudo -u postgres createdb --encoding=UTF8 --owner=gisuser gis