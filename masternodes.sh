#!/bin/bash
while true
do
# Parent menu items declared here
select item in Snodecoin 1x2coin Marcoin PacGlobal Dogecash Terracoin Exit
do
# case statement to compare the first menu items
case $item in
Snodecoin)
echo "scelto snodecoin"
;;
1x2coin)
# Sub-menu items here declared here
select sub_item in Snodecoin 1x2coin Marcoin PacGlobal Dogecash Terracoin
do

# case statement for sun-menu items
case $sub_item in
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
