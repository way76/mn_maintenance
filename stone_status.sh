getinfo='getinfo'
gb='grep blocks'
mnstatus='masternode status'
gs='grep status'
utb='stone-'

ut01=${utb}mn1
ut02=${utb}mn2
ut03=${utb}mn3
ut04=${utb}mn4
ut05=${utb}mn5
ut06=${utb}mn6
ut07=${utb}mn7
ut08=${utb}mn8
ut09=${utb}mn9
ut10=${utb}mn10
ut11=${utb}mn11
ut12=${utb}mn12
ut13=${utb}mn13
ut14=${utb}mn14
ut15=${utb}mn15
ut16=${utb}mn16
ut17=${utb}mn17
ut18=${utb}mn18
ut19=${utb}mn19
ut20=${utb}mn20

cli='/usr/local/bin/stone-cli'



mn1b=$(${cli} -datadir=/home/${ut01}/.stone -conf=/home/${ut01}/.stone/stone.conf ${getinfo} | ${gb})
mn1s=$(${cli} -datadir=/home/${ut01}/.stone -conf=/home/${ut01}/.stone/stone.conf ${mnstatus} | ${gs})
mn2b=$(${cli} -datadir=/home/${ut02}/.stone -conf=/home/${ut02}/.stone/stone.conf ${getinfo} | ${gb})
mn2s=$(${cli} -datadir=/home/${ut02}/.stone -conf=/home/${ut02}/.stone/stone.conf ${mnstatus} | ${gs})
mn3b=$(${cli} -datadir=/home/${ut03}/.stone -conf=/home/${ut03}/.stone/stone.conf ${getinfo} | ${gb})
mn3s=$(${cli} -datadir=/home/${ut03}/.stone -conf=/home/${ut03}/.stone/stone.conf ${mnstatus} | ${gs})
mn4b=$(${cli} -datadir=/home/${ut04}/.stone -conf=/home/${ut04}/.stone/stone.conf ${getinfo} | ${gb})
mn4s=$(${cli} -datadir=/home/${ut04}/.stone -conf=/home/${ut04}/.stone/stone.conf ${mnstatus} | ${gs})
mn5b=$(${cli} -datadir=/home/${ut05}/.stone -conf=/home/${ut05}/.stone/stone.conf ${getinfo} | ${gb})
mn5s=$(${cli} -datadir=/home/${ut05}/.stone -conf=/home/${ut05}/.stone/stone.conf ${mnstatus} | ${gs})
mn6b=$(${cli} -datadir=/home/${ut06}/.stone -conf=/home/${ut06}/.stone/stone.conf ${getinfo} | ${gb})
mn6s=$(${cli} -datadir=/home/${ut06}/.stone -conf=/home/${ut06}/.stone/stone.conf ${mnstatus} | ${gs})
mn7b=$(${cli} -datadir=/home/${ut07}/.stone -conf=/home/${ut07}/.stone/stone.conf ${getinfo} | ${gb})
mn7s=$(${cli} -datadir=/home/${ut07}/.stone -conf=/home/${ut07}/.stone/stone.conf ${mnstatus} | ${gs})
mn8b=$(${cli} -datadir=/home/${ut08}/.stone -conf=/home/${ut08}/.stone/stone.conf ${getinfo} | ${gb})
mn8s=$(${cli} -datadir=/home/${ut08}/.stone -conf=/home/${ut08}/.stone/stone.conf ${mnstatus} | ${gs})
mn9b=$(${cli} -datadir=/home/${ut09}/.stone -conf=/home/${ut09}/.stone/stone.conf ${getinfo} | ${gb})
mn9s=$(${cli} -datadir=/home/${ut09}/.stone -conf=/home/${ut09}/.stone/stone.conf ${mnstatus} | ${gs})
mn10b=$(${cli} -datadir=/home/${ut10}/.stone -conf=/home/${ut10}/.stone/stone.conf ${getinfo} | ${gb})
mn10s=$(${cli} -datadir=/home/${ut10}/.stone -conf=/home/${ut10}/.stone/stone.conf ${mnstatus} | ${gs})
mn11b=$(${cli} -datadir=/home/${ut11}/.stone -conf=/home/${ut11}/.stone/stone.conf ${getinfo} | ${gb})
mn11s=$(${cli} -datadir=/home/${ut11}/.stone -conf=/home/${ut11}/.stone/stone.conf ${mnstatus} | ${gs})
mn12b=$(${cli} -datadir=/home/${ut12}/.stone -conf=/home/${ut12}/.stone/stone.conf ${getinfo} | ${gb})
mn12s=$(${cli} -datadir=/home/${ut12}/.stone -conf=/home/${ut12}/.stone/stone.conf ${mnstatus} | ${gs})
mn13b=$(${cli} -datadir=/home/${ut13}/.stone -conf=/home/${ut13}/.stone/stone.conf ${getinfo} | ${gb})
mn13s=$(${cli} -datadir=/home/${ut13}/.stone -conf=/home/${ut13}/.stone/stone.conf ${mnstatus} | ${gs})
mn14b=$(${cli} -datadir=/home/${ut14}/.stone -conf=/home/${ut14}/.stone/stone.conf ${getinfo} | ${gb})
mn14s=$(${cli} -datadir=/home/${ut14}/.stone -conf=/home/${ut14}/.stone/stone.conf ${mnstatus} | ${gs})
mn15b=$(${cli} -datadir=/home/${ut15}/.stone -conf=/home/${ut15}/.stone/stone.conf ${getinfo} | ${gb})
mn15s=$(${cli} -datadir=/home/${ut15}/.stone -conf=/home/${ut15}/.stone/stone.conf ${mnstatus} | ${gs})
mn16b=$(${cli} -datadir=/home/${ut16}/.stone -conf=/home/${ut16}/.stone/stone.conf ${getinfo} | ${gb})
mn16s=$(${cli} -datadir=/home/${ut16}/.stone -conf=/home/${ut16}/.stone/stone.conf ${mnstatus} | ${gs})
mn17b=$(${cli} -datadir=/home/${ut17}/.stone -conf=/home/${ut17}/.stone/stone.conf ${getinfo} | ${gb})
mn17s=$(${cli} -datadir=/home/${ut17}/.stone -conf=/home/${ut17}/.stone/stone.conf ${mnstatus} | ${gs})
mn18b=$(${cli} -datadir=/home/${ut18}/.stone -conf=/home/${ut18}/.stone/stone.conf ${getinfo} | ${gb})
mn18s=$(${cli} -datadir=/home/${ut18}/.stone -conf=/home/${ut18}/.stone/stone.conf ${mnstatus} | ${gs})
mn19b=$(${cli} -datadir=/home/${ut19}/.stone -conf=/home/${ut19}/.stone/stone.conf ${getinfo} | ${gb})
mn19s=$(${cli} -datadir=/home/${ut19}/.stone -conf=/home/${ut19}/.stone/stone.conf ${mnstatus} | ${gs})
mn20b=$(${cli} -datadir=/home/${ut20}/.stone -conf=/home/${ut20}/.stone/stone.conf ${getinfo} | ${gb})
mn20s=$(${cli} -datadir=/home/${ut20}/.stone -conf=/home/${ut20}/.stone/stone.conf ${mnstatus} | ${gs})

echo "Masternode 1:  $mn1b - $mn1s "
echo "Masternode 2:  $mn2b - $mn2s "
echo "Masternode 3:  $mn3b - $mn3s "
echo "Masternode 4:  $mn4b - $mn4s "
echo "Masternode 5:  $mn5b - $mn5s "
echo "Masternode 6:  $mn6b - $mn6s "
echo "Masternode 7:  $mn7b - $mn7s "
echo "Masternode 8:  $mn8b - $mn8s "
echo "Masternode 9:  $mn9b - $mn9s "
echo "Masternode 10: $mn10b - $mn10s "
echo "Masternode 11: $mn11b - $mn11s "
echo "Masternode 12: $mn12b - $mn12s "
echo "Masternode 13: $mn13b - $mn13s "
echo "Masternode 14: $mn14b - $mn14s "
echo "Masternode 15: $mn15b - $mn15s "
echo "Masternode 16: $mn16b - $mn16s "
echo "Masternode 17: $mn17b - $mn17s "
echo "Masternode 18: $mn18b - $mn18s "
echo "Masternode 19: $mn19b - $mn19s "
echo "Masternode 20: $mn20b - $mn20s "
