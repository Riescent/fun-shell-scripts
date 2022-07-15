# Prints a string in the middle of the terminal

message=$1
declare -i height=$(tput lines)/2-1 # -1 to account for the line where the user types
declare -i width=$(tput cols)/2-${#message}/2

# Move cursor to center
for i in $(seq 1 $height); do
	printf "\n"
done
for i in $(seq 1 $width); do
	printf " "
done

echo ${message}

# Moves cursor to the bottom since the terminal will automaticaly print userName@compterName:filePath$
for i in $(seq 1 $height); do
        printf "\n"
done

unset message
unset height
unset width
