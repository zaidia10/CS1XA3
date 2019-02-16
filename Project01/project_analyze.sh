echo "Hey! What's your name?"
read name
echo "Right on, dude. Do you want to see the TODO Log?"
read answer
if [ $answer == "Yes" ] || [ $answer == "yes" ];
then
	if [ -f ~/CS1XA3/Project01/todo.log ];
	then
		>todo.log
		linesTodo=$(grep -Rn '#TODO' /home/zaidia10/CS1XA3)
		echo "$linesTodo" > "todo.log"
	else
		touch todo.log
		linesTodo=$(grep -Rn '#TODO' /home/zaidia10/CS1XA3)
		echo "$linesTodo" > "todo.log"
	fi
else
	echo "No worries, dude. Please execute this again"
fi
