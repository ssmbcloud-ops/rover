#!/bin/bash


res=$(which git)
if [ ! $? == 0 ]; then
    >&2 echo -e "You must install git to install the Azure CAF rover"
    exit 1
fi

# Create the base folder structure
folder="${HOME}/git/github.com/ssmbcloud-ops"

# Install only if the rover is not yet installed
if [ ! -d ${folder} ]; then
    mkdir -p ${folder}
    ssmbcloud-ops_folder="${HOME}/git/github.com/ssmbcloud-ops"
    cd ${ssmbcloud-ops_folder}

    # Clone the rover
    git clone https://github.com/brettoj/rover.git
    cd rover

    # check the pre-requisites
    ./scripts/pre_requisites.sh

    echo ""
    echo "The Azure CAF Rover has been installed sucessfully."

else
    echo "Azure CAF Rover already installed. Refreshing"
    rover_folder="${HOME}/git/github.com/ssmbcloud-ops/rover"
    cd ${rover_folder}
    pwd
    git pull 
fi

alias rover=$(pwd)/rover.sh

echo ""
echo "To complete the initialisation you need to:"
echo " - go to the rover folder 'cd ${HOME}/git/github.com/ssmbcloud-ops/rover'"
echo " - build the rover with the public landingzones (just type 'make')"
echo " - login to the Azure subscription 'rover login [optional_subscription_id] [optional_tenantname.onmicrosoft.com_or_tenantguid]'"
echo " - initialise the launchpad by running 'rover'"
echo " - your are now set to deploy your landingzones. Refer to the readme for more details on those steps"
echo ""


