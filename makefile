readme.md:
	echo "### This is my title" > readme.md
	
	date >> readme.md
	
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
