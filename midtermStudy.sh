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

	echo; echo  "########   Select (A)RRAY (V)ARIABLES (F)ILES   ########"
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
	elif [ "$choice" == "f" ]; then
		echo "~~~~~~~~~~~~~~~~    Welcome to Files!\
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

	else
		echo "Not a valid choice"
	fi
	

	echo "Again? (Y/N)"
	read run

done
# cat ~/Desktop/get-pip.py > hailmarry.txt

# z=0
# while [ $z -lt 5 ]; do
# 	echo Where tf is cheng cheng
# 	let z=z+1
# done

# for i in $( ls ); do
# 	echo item from ls: $i
# done

# echo lets look at some processes

# ps -aef | grep Reaper
# # the a is all users not just current
# # the e is list information aboput processes
# # the f is a list of fewer items

# echo lets get some info about reaper
# finger Reaper

# mydir=`pwd` 
# # remeber the ` lets us run a command
# echo my directory:  $mydir

# echo who command outputs
# who
# echo the number of lines in who is
# who | wc -l

# who | wc -l #: Prints the number of lines in a file.
# who | wc -w #: prints the number of words in a file.
# who | wc -m #: prints the count of characters from a file.

# # default wc gives lines words bytes
# who | wc


# samp=10

# if [ $samp -lt 20 ]
# then
# 	echo cunt samp is less than 20
# else
# 	echo cunt life
# fi



## ARRAYS
# a[4]=bob
# a[10]=sam
# a[2]=jim
# # a=( one two three )
# for i in "${a[@]}"
# do
# 	echo $i
# done



# area[51]=UFOs
# area[11]=23
# echo ${area[11]}    #  {curly brackets} needed.
# #  Array members need not be consecutive or contiguous.

# #  Some members of the array can be left uninitialized.
# #  Gaps in the array are okay.
# #  In fact, arrays with sparse data ("sparse arrays")
# #+ are useful in spreadsheet-processing software.


# echo -n "area[11] = "
