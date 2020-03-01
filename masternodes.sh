#!/bin/bash
while true
do
# Parent menu items declared here
select coin in Snodecoin 1x2coin Marcoin Pacglobal Dogecash Terracoin Exit
do
# case statement to compare the first menu items
case $coin in
Snodecoin)
echo "scelto snodecoin"
;;
1x2coin)
echo "scelto 1x2coin"
;;
Marcoin)
echo "scelto marcoin"
;;
Pacglobal)
echo "scelto pacglobal"
;;
Dogecash)
echo "scelto dogecash"
;;
Terracoin)
echo "scelto terracoin"
;;
Exit)
echo "scelto uscita"
break
;;




# Sub-menu items here declared here
select snd_sub in Snodecoin
do
# case statement for sun-menu items
case $snd_sub in
Snodecoin)
echo "scelto snodecoin sub1"
break
;;
1x2coin)
echo "scelto 1x2coin sub"
# return to parent menu
break
;;
Marcoin)
echo "scelto marcoin sub"
# return to the parent menu
break 2
;;
esac
done
break
;;
PacGlobal)
echo "scelto pacglobal sub"
break # return to current (main) menu
;;
Dogecash)
echo "scelto dogecash submenu"
# return from the script
break 2
esac
done
done
