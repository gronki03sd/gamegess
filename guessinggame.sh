# guessinggame.sh

# Function to count files in the current directory
count_files() {
  echo $(ls -1 | wc -l)
}

# Number of files in the current directory
file_count=$(count_files)

echo "Welcome to the Guessing Game!"

while true; do
  echo -n "How many files are in the current directory? Enter your guess: "
  read user_guess

  if ! [[ $user_guess =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number."
    continue
  fi

  if (( user_guess < file_count )); then
    echo "Too low! Try again."
  elif (( user_guess > file_count )); then
    echo "Too high! Try again."
  else
    echo "Congratulations! You guessed the correct number of files: $file_count."
    break
  fi

done
