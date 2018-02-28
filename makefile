README.md:
	touch README.md
	echo "# UnixWorkbench:guessinggame.sh" > README.md
	echo "\nThe makefile created: " >> README.md
	date >> README.md
	echo "\nThe script has " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo " lines" >> README.md

clean:
	rm README.md
