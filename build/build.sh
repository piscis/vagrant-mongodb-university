#!/bin/bash
echo "Updating chef cookbooks..."
cd chef
librarian-chef update
echo "Starting vagrant..."
cd ..
vagrant up