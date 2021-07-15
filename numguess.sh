num=0
echo "$0 Enter a number between 1 and 20"
(( secret = RANDOM % 20 - 1 ))
while [[ guess -ne secret ]]
do
(( num = num + 1 ))
read -p "Enter guess:" guess
if ( $guess < $secret );then
echo "Try a higher number"
elif ( $guess > $secret );then
echo "Try a lower number"
fi
done
printf "Yes! you guessed it in $num guesses\n"
