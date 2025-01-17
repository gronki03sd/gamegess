# Makefile

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "\n## Description" >> README.md
	echo "This project is a Bash script game where the user guesses the number of files in the current directory." >> README.md
	echo "\n## How to Play" >> README.md
	echo "Run the script using the command: \`bash guessinggame.sh\`" >> README.md
	echo "\n## Project Details" >> README.md
	echo "- **Date and Time**: $$(date)" >> README.md
	echo "- **Number of lines in guessinggame.sh**: $$(wc -l < guessinggame.sh)" >> README.md
