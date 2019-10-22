mn1b=$(/root/mnTroubleshoot/vivo/vivo1_getInfo.sh | grep blocks)
mn1s=$(/root/mnTroubleshoot/vivo/vivo1_masternode_status.sh | grep status)
mn2b=$(/root/mnTroubleshoot/vivo/vivo2_getInfo.sh | grep blocks)
mn2s=$(/root/mnTroubleshoot/vivo/vivo2_masternode_status.sh | grep status)
mn3b=$(/root/mnTroubleshoot/vivo/vivo3_getInfo.sh | grep blocks)
mn3s=$(/root/mnTroubleshoot/vivo/vivo3_masternode_status.sh | grep status)
mn4b=$(/root/mnTroubleshoot/vivo/vivo4_getInfo.sh | grep blocks)
mn4s=$(/root/mnTroubleshoot/vivo/vivo4_masternode_status.sh | grep status)
mn5b=$(/root/mnTroubleshoot/vivo/vivo5_getInfo.sh | grep blocks)
mn5s=$(/root/mnTroubleshoot/vivo/vivo5_masternode_status.sh | grep status)
mn6b=$(/root/mnTroubleshoot/vivo/vivo6_getInfo.sh | grep blocks)
mn6s=$(/root/mnTroubleshoot/vivo/vivo6_masternode_status.sh | grep status)
mn7b=$(/root/mnTroubleshoot/vivo/vivo7_getInfo.sh | grep blocks)
mn7s=$(/root/mnTroubleshoot/vivo/vivo7_masternode_status.sh | grep status)
mn8b=$(/root/mnTroubleshoot/vivo/vivo8_getInfo.sh | grep blocks)
mn8s=$(/root/mnTroubleshoot/vivo/vivo8_masternode_status.sh | grep status)
mn9b=$(/root/mnTroubleshoot/vivo/vivo9_getInfo.sh | grep blocks)
mn9s=$(/root/mnTroubleshoot/vivo/vivo9_masternode_status.sh | grep status)
mn10b=$(/root/mnTroubleshoot/vivo/vivo10_getInfo.sh | grep blocks)
mn10s=$(/root/mnTroubleshoot/vivo/vivo10_masternode_status.sh | grep status)
mn11b=$(/root/mnTroubleshoot/vivo/vivo11_getInfo.sh | grep blocks)
mn11s=$(/root/mnTroubleshoot/vivo/vivo11_masternode_status.sh | grep status)
mn12b=$(/root/mnTroubleshoot/vivo/vivo12_getInfo.sh | grep blocks)
mn12s=$(/root/mnTroubleshoot/vivo/vivo12_masternode_status.sh | grep status)
mn13b=$(/root/mnTroubleshoot/vivo/vivo13_getInfo.sh | grep blocks)
mn13s=$(/root/mnTroubleshoot/vivo/vivo13_masternode_status.sh | grep status)
mn14b=$(/root/mnTroubleshoot/vivo/vivo14_getInfo.sh | grep blocks)
mn14s=$(/root/mnTroubleshoot/vivo/vivo14_masternode_status.sh | grep status)
mn15b=$(/root/mnTroubleshoot/vivo/vivo15_getInfo.sh | grep blocks)
mn15s=$(/root/mnTroubleshoot/vivo/vivo15_masternode_status.sh | grep status)
mn16b=$(/root/mnTroubleshoot/vivo/vivo16_getInfo.sh | grep blocks)
mn16s=$(/root/mnTroubleshoot/vivo/vivo16_masternode_status.sh | grep status)
mn17b=$(/root/mnTroubleshoot/vivo/vivo17_getInfo.sh | grep blocks)
mn17s=$(/root/mnTroubleshoot/vivo/vivo17_masternode_status.sh | grep status)
mn18b=$(/root/mnTroubleshoot/vivo/vivo18_getInfo.sh | grep blocks)
mn18s=$(/root/mnTroubleshoot/vivo/vivo18_masternode_status.sh | grep status)
mn19b=$(/root/mnTroubleshoot/vivo/vivo19_getInfo.sh | grep blocks)
mn19s=$(/root/mnTroubleshoot/vivo/vivo19_masternode_status.sh | grep status)
mn20b=$(/root/mnTroubleshoot/vivo/vivo20_getInfo.sh | grep blocks)
mn20s=$(/root/mnTroubleshoot/vivo/vivo20_masternode_status.sh | grep status)

mnTroubleshoot/vivo_getBlockCountFromExplorer.sh


echo "Masternode  1: $mn1b - $mn1s "
echo "Masternode  2: $mn2b - $mn2s "
echo "Masternode  3: $mn3b - $mn3s "
echo "Masternode  4: $mn4b - $mn4s "
echo "Masternode  5: $mn5b - $mn5s "
echo "Masternode  6: $mn6b - $mn6s "
echo "Masternode  7: $mn7b - $mn7s "
echo "Masternode  8: $mn8b - $mn8s "
echo "Masternode  9: $mn9b - $mn9s "
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
sleep 5


echo "Erori sentinel: "
echo "MN01 "
/root/mnTroubleshoot/vivo/vivo1_runSentinelToSeeOutput.sh
echo "MN02 "
/root/mnTroubleshoot/vivo/vivo2_runSentinelToSeeOutput.sh
echo "MN03 "
/root/mnTroubleshoot/vivo/vivo3_runSentinelToSeeOutput.sh
echo "MN04 "
/root/mnTroubleshoot/vivo/vivo4_runSentinelToSeeOutput.sh
echo "MN05 "
/root/mnTroubleshoot/vivo/vivo5_runSentinelToSeeOutput.sh
echo "MN06 "
/root/mnTroubleshoot/vivo/vivo6_runSentinelToSeeOutput.sh
echo "MN07 "
/root/mnTroubleshoot/vivo/vivo7_runSentinelToSeeOutput.sh
echo "MN08 "
/root/mnTroubleshoot/vivo/vivo8_runSentinelToSeeOutput.sh
echo "MN09 "
/root/mnTroubleshoot/vivo/vivo9_runSentinelToSeeOutput.sh
echo "MN10 "
/root/mnTroubleshoot/vivo/vivo10_runSentinelToSeeOutput.sh
echo "MN11 "
/root/mnTroubleshoot/vivo/vivo11_runSentinelToSeeOutput.sh
echo "MN12 "
/root/mnTroubleshoot/vivo/vivo12_runSentinelToSeeOutput.sh
echo "MN13 "
/root/mnTroubleshoot/vivo/vivo13_runSentinelToSeeOutput.sh
echo "MN14 "
/root/mnTroubleshoot/vivo/vivo14_runSentinelToSeeOutput.sh
echo "MN15 "
/root/mnTroubleshoot/vivo/vivo15_runSentinelToSeeOutput.sh
echo "MN16 "
/root/mnTroubleshoot/vivo/vivo16_runSentinelToSeeOutput.sh
echo "MN17 "
/root/mnTroubleshoot/vivo/vivo17_runSentinelToSeeOutput.sh
echo "MN18 "
/root/mnTroubleshoot/vivo/vivo18_runSentinelToSeeOutput.sh
echo "MN19 "
/root/mnTroubleshoot/vivo/vivo19_runSentinelToSeeOutput.sh
echo "MN20 "
/root/mnTroubleshoot/vivo/vivo20_runSentinelToSeeOutput.sh
