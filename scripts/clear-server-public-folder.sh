#!/bin/bash

public_folder="../lib/public"

# Clear out public folder without removing it
rm -r "$public_folder/*"

echo "CLEARED PUBLIC FOLDER $public_folder"
