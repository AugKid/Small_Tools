
#!/bin/bash

# Generate a ticket for the Powerball lottery

# Generate five random numbers between 1 and 69
echo -n "Your ticket numbers are: "
for i in {1..5}; do
	number=$RANDOM
	let "number %= 69"
	echo -n "$number "
done

# Generate one random number between 1 and 26
echo -n "and the Powerball number is: "
number=$RANDOM
let "number %= 26"
echo $number

echo "Good luck! This shell will now auto close in 10 seconds"

read -t10 -n1
