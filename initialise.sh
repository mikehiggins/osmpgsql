#!/bin/bash
echo "========================"
echo "= Installing Geo tools ="
echo "========================"

echo "Installing: GDAL 2.1"
# https://stackoverflow.com/questions/37294127/python-gdal-2-1-installation-on-ubuntu-16-04
sudo add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update 
sudo apt-get upgrade # if you already have gdal 1.11 installed 
sudo apt-get -y install gdal-bin python-gdal python3-gdal # if you don't have gdal 1.11 already installed

echo "Installing: OSM Osmosis"
sudo apt-get -y install osmosis

echo "Installing: mapnik"
sudo apt-get -y install mapnik

echo "Installing: jq (command line json processing tool)"
sudo apt-get -y install jq