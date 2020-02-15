#!/bin/bash

# Initialize Jenkins
echo "Jenkins starting. Please wait.."
systemctl start --now jenkins.service > /dev/null 2>&1


