#!/bin/bash


#####
#
# the menu
#
#####

#mainmenu subroutine

function mainmenu {

select menusel in "perform backup" "HS server administration" "DU server administration" "Multi server administration" "Shell administration" "" "Logout" "command line" "HELP!" "EXIT PROGRAM"; do
case $menusel in
	"perform backup")
		echo "you chose option 1" ;;
	
	"HS server administration")
		echo "you chose option 2" ;;
	
	"DU server administration")
		echo "you chose option 3" ;;
	
	"Multi server administration")
		echo "you chose option 4" ;;
	
	"Shell administration")
		echo "you chose option 5" ;;
	
	"Logout")
		echo "you chose option 8" ;;
	
	"command line")
		echo "you chose option 9" ;;
	
	"HELP!")
		echo "i wish!" ;;

	"EXIT PROGRAM")
		exit 0 ;;
esac

break

done
}

while true; do mainmenu; done
