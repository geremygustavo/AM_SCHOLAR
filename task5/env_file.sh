#!/usr/bin/bash

export OS_AUTH_URL=http://10.28.3.240:5000/v3
export OS_IDENTITY_API_VERSION=3
export OS_TENANT_NAME="93d169e50ba94a0d85753185fff2efa1"
export OS_PROJECT_NAME="fj_abelmallcu_at08-desktop"
export OS_USERNAME="AbelMallcu"
echo "Please enter your OpenStack Password for project $OS_PROJECT_NAME as user $OS_USERNAME: "
read -sr OS_PASSWORD_INPUT
export OS_PASSWORD=$OS_PASSWORD_INPUT
export OS_DOMAIN_NAME=fundacion-jala
export OS_FLAVOR="f2.desktop.large"
export OS_IMAGE=ubuntu-18.04-amd64-mate_desktop_19122018
export OS_KEY_PAIR_NAME="win-abel2"
export OS_REGION_NAME=bootstack-jalasoft