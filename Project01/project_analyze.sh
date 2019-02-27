echo "Hey! What's your name?"
read name
echo "Right on, dude. Do you want to see the TODO Log?"
read answer1
if [ $answer1 == "Yes" ] || [ $answer1 == "yes" ];
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
fi

echo "Do you want to see the File Type Count?"
read answer2
if [ $answer2 == "Yes" ] || [ $answer2 == "yes" ];
then
	htmlCount="$(find /home/zaidia10/CS1XA3 -name '*.html' | wc -l)"
	jsCount="$(find /home/zaidia10/CS1XA3 -name '*.js' | wc -l)"
	cssCount="$(find /home/zaidia10/CS1XA3 -name '*.css' | wc -l)"
	pyCount="$(find /home/zaidia10/CS1XA3 -name '*.py' | wc -l)"
	hsCount="$(find /home/zaidia10/CS1XA3 -name '*.hs' | wc -l)"
	shCount="$(find /home/zaidia10/CS1XA3 -name '*.sh' | wc -l)"
	echo "HTML: " "$htmlCount" " JavaScript: " "$jsCount" " CSS: " "$cssCount" " Python: " "$pyCount" " Haskell: " "$pyCount" " Bash: " "$shCount"
fi

echo "Do you want to see where your name is mentioned?"
read answer3
if [ $answer3 == "Yes" ] || [ $answer3 == "yes" ];
then
	nameMentions=$(grep -Rn "$name" /home/zaidia10/CS1XA3)
	echo "$nameMentions"
else
	echo "Dang, dude. That's all I got. Execute the file again to get the options again"
fi
