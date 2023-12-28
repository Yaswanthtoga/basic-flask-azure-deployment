#!/bin/bash

# Login to the azure
az login

# Check if the required arguments are provided
if [ $# -lt 2 ]; then
    echo "Usage: $0 <web-app-name> <resource-group-name>"
    exit 1
fi

# Assign arguments to variables
WEB_APP_NAME=$1
RESOURCE_GROUP_NAME=$2

# Set other configurations
RUNTIME="PYTHON:3.10"
SKU="F1"

# Deploy the Flask app to Azure Web App
az webapp up --name "$WEB_APP_NAME" --resource-group "$RESOURCE_GROUP_NAME" --runtime "$RUNTIME" --sku "$SKU"

# Get the publishing credentials and capture the password
PASSWORD=$(az webapp deployment list-publishing-credentials --name "$WEB_APP_NAME" --resource-group "$RESOURCE_GROUP_NAME" --query "publishingPassword" --output tsv)

# Check if the password is empty (indicating an error in the command)
if [ -z "$PASSWORD" ]; then
    echo "Error getting publishing credentials."
    exit 1
fi

echo "Copy this password any store it somewhere securely for further usage: $PASSWORD"
