#!/bin/bash

public_folder="../lib/public"

# Clear out public folder without removing it

rm -rf $public_folder
mkdir $public_folder

echo "CLEARED PUBLIC FOLDER $public_folder"

