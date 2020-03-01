#!/bin/bash
while true
do
# Parent menu items declared here
select item in Mouse Printer Monitor HDD
do

# case statement to compare the first menu items
case $item in
Mouse)
echo "Which type of monitor you like?"
;;
Printer)
# Sub-menu items here declared here
select sub_item in Samsung HP Dell
do
# case statement for sun-menu items
case $sub_item in
Samsung)
echo "The price of samsung printer is $100"
break
;;
HP)
echo "New HP 880 printer price printer is $450"
# return to parent menu
break
;;
Dell)
echo "No Dell printer is available now"
# return to the parent menu
break 2
;;
esac
done
break
;;
Monitor)
echo "Buy our new Samsung Monitor at low cost"
break # return to current (main) menu
;;
HDD)
echo "Good quality HDD are available in the stock"
# return from the script
break 2
esac
done
done
