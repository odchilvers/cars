#! /bin/bash
# cars.sh
# Olivia Chilvers
INPUT="0"
while [ "$INPUT" -ne "3" ]
do
echo "Options"
echo "Type in Number 1: Enter a new car"
echo "Type in Number 2: Display the list of cars"
echo "Type in Number 3: Quit and Exit the program"
read -r INPUT
case "$INPUT" in
"1") echo "Type in the year of the car"
read -r YEAR
echo "Type in the make of the car"
read -r MAKE
echo "Type in the model of the car"
read -r MODEL
NEWCAR="$YEAR:$MAKE:$MODEL"
echo "$NEWCAR" >> My_old_cars;;
"2") sort My_old_cars;;
"3") echo "Thank you! Goodbye.";;
*) echo "Uh oh! That is not a valid option. Try again...";; 
esac
done
