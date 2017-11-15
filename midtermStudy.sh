#!/bin/bash
echo Welcome to the greatest Midterm Review Bash script!
input="w"
while [ "$input" != "y" ]; do
	echo $input
	echo "********   Are You Ready? (Y/N)   ********"
	read input
	if [ "$input" == "n" ]; then
		echo "********   GET READY!   ********"
	elif [ "$input" != "y" ]; then
		echo "********   Not an Option!   ********"
	fi
done

run="Y"
while [ "$run" != "N" ]; do

	echo; echo  "########   Select (A)RRAY (P)ROCESSES P(I)PES (M)AKE  (E)NV  ########"
	read choice
	if [ "$choice" == "a" ]; then
		## ARRAYS
		echo "~~~~~~~~~~~~~~~~    Welcome to Arrays!\
			~~~~~~~~~~~~~~~~"
		echo
		echo -e "\t* declared variables are by default arrays!"
		echo -e "\t* arrays are not strictly numbered"

		echo;echo
		echo "Lets Declare two arrays!"

		# -e here means enable backlash keys such as \n
		echo -e "imAnArray[0]='jim is cool'\
			\nimAnArray[4]=bob\
			\nimAnArray[10]=sam\
			\nimAnArrayToo=( one two three )"

		imAnArray[0]='jim is cool'
		imAnArray[4]=bob
		imAnArray[10]=sam
		imAnArrayToo=( one two three )
		
		echo; echo "For Loop printing Arrays"
		for i in "${imAnArray[@]}"
		do
			echo "imAnArray: $i"
		done
		echo; echo; echo
		for i in "${imAnArrayToo[@]}"
		do
			echo "imAnArrayToo: $i"
		done
	elif [ "$choice" == "i" ]; then
		echo "~~~~~~~~~~~~~~~~    Welcome to Pipes!\
			~~~~~~~~~~~~~~~~"
		echo "##    Lets make some files to mess with!"
		echo "**   redirection operator '>' operator will overwrite a file, the >> operator will append to a file"
		echo; echo;
		echo "Consider the following commands"
		echo ">>>>>>$   man vim | grep doc > newfile.txt"
		echo ">>>>>>$   ls | wc -l > count.txt"
		man vim | grep doc > newfile.txt
		ls | wc -l > count.txt  	
		read trash
		echo; echo
		echo "****  Pop Quiz!!!!  ****"
		echo "##  What is in newfile.txt:"
		echo -e "\tA) The vim Documentation"
		echo -e "\tB) Nothing newfile.txt is empty"
		echo -e "\tC) Lines with 'doc' from the vim man page"
		read answer
		if [ "$answer" != "c" ]; then
			echo "~~~     Wrong!"
		else
			echo "~~~     Correct!"
		fi

		echo "##  How many number are in count.txt"
		echo -e "\tA) 1"
		echo -e "\tB) 2"
		echo -e "\tC) 3"
		read answer
		if [ "$answer" != "a" ]; then
			echo "~~~     Wrong!"
		else
			echo "~~~     Correct!"
		fi

	elif [ "$choice" == "p" ]; then
		echo "~~~~~~~~~~~~~~~~    Welcome to PS Command!\
			~~~~~~~~~~~~~~~~"
		echo -e "\t*ps is used to report information on running processes"
		echo "The -a argument lists processes from all users"
		echo "The -e argument lists all processes on the system"
		echo "The -f argument provides more information"
		echo "In every unix system PID=1 is the gradparent, the parent of all children"
		echo "The PID of the kernel is 0"
		echo; echo
		echo "# Running the command ps -ef | grep user"
		ps -ef | grep user

	elif [ "$choice" == "m" ]; then	
		echo "~~~~~~~~~~~~~~~~    Welcome to MakeFiles!\
			~~~~~~~~~~~~~~~~"
		echo -e "\t MakeFiles can be used for automating tedious bash commands"
		echo -e "\t A common usage is in C and C++ files"
		echo -e "\t An very simple example of a make file looks as such :\n"
		cat makefile



	elif [ "$choice" == "e" ]; then			
		echo "~~~~~~~~~~~~~~~~    Welcome to Env Variables!\
				~~~~~~~~~~~~~~~~"
		echo -e "\tPATH lists directories that the shell will search for commands"
		echo PATH: $PATH
		echo; echo
		echo  -e "\tHOME User's home directory"
		echo HOME: $HOME
		echo; echo
		echo -e "\tSHELL The current shell"
		echo SHELL: $SHELL
		echo; echo
	else
		echo "Not a valid choice"

	fi
	
	echo; echo
	echo "Again? (Y/N)"
	read run

done
