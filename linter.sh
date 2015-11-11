#!/bin/sh

# Before using this script please make sure that it's executable.
# You can do this by running the following command: "$ chmod +x linter.sh"
# To run the script please run the following command: "$ ./linter.sh"

echo
echo "Hi, $USER!"
echo
echo "The linter starts now and it will check all CS, HAML & SCSS files."
echo

sleep 3

echo "Checking CoffeeScript files:"
rake coffeelint
echo
echo "------------------------------ *** ------------------------------"
echo
echo

echo "Checking HAML files:"
haml-lint app/views/
echo
echo "------------------------------ *** ------------------------------"
echo
echo

echo "Checking APP SCSS files:"
scss-lint app/assets/stylesheets/
echo
echo "------------------------------ *** ------------------------------"
echo
echo

echo "Checking Vendor SCSS files:"
scss-lint vendor/assets/stylesheets/
echo
echo "------------------------------ *** ------------------------------"
echo
echo

echo "The linter has ended."
echo "If any errors have been flagged please correct them."
echo "You may run the linter again to confirm."
