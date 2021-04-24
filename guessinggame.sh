# !/usr/bin/env bash

function count_files {
  answer=$(ls | wc -l)
  echo $answer
}

answer=$(count_files)
echo $answer
echo "How many files are in the current directory? Please make a guess: "
read response
while [[ $response -ne $answer ]]
do
  if [[ $response -gt $answer ]]
  then
    echo "Your guess is too high"
  elif [[ $response -lt $answer ]]
  then
    echo "Your choice is too low"
  fi
read response
done

echo "Congratulations! There are $response files"
