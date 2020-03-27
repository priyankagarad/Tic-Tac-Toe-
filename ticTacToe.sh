#!/bin/bash -x 
echo "Welcome on Tic Tac Toe Game"
declare -a board

#variable
cell_count=0
max_cell=9

# display board
function board() {
board=(1 2 3 4 5 6 7 8 9)
for (( i=0;i<9;i=i+3 ))
do
		echo " |${board[$i]} | ${board[$i+1]} | ${board[$i+2]} |"
		echo "             "
done
}

#assign value to user
function assignSymbol()
{
	symbol=$((RANDOM%2))
		if [[ $symbol -eq 1 ]]
		then
				player="user"
				user="X"
				computer="O"
		else
				player="computer"
				user="O"
				computer="X"
		fi
}

# To know who play
function switchPlayer(){
   if [[ $player == "user" ]]
   then
   printf  "$user"
   else
    printf "$computer"
   fi
}

#to show Board Condition
function checkCondition()
{
   board
   (( cell_Count++ ))
}

board
assignSymbol
switchPlayer

