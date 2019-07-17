#!/bin/bash

BLOCCO=457000
EXPBLOCK=$(curl -s4 "http://149.28.83.1:3001/api/getblockcount")
EXPBLOCKLOW=$(expr $EXPBLOCK - 50)
EXPBLOCKHIGH=$(expr $EXPBLOCK + 50)
BLOCKHASH=$(vivo-cli -conf=/etc/masternodes/vivo_n1.conf getblockhash $BLOCCO)



MNBLOCK01=$(vivo-cli -conf=/etc/masternodes/vivo_n1.conf getblockcount)
MNBLOCK02=$(vivo-cli -conf=/etc/masternodes/vivo_n2.conf getblockcount)
MNBLOCK03=$(vivo-cli -conf=/etc/masternodes/vivo_n3.conf getblockcount)
MNBLOCK04=$(vivo-cli -conf=/etc/masternodes/vivo_n4.conf getblockcount)
MNBLOCK05=$(vivo-cli -conf=/etc/masternodes/vivo_n5.conf getblockcount)
MNBLOCK06=$(vivo-cli -conf=/etc/masternodes/vivo_n6.conf getblockcount)
MNBLOCK07=$(vivo-cli -conf=/etc/masternodes/vivo_n7.conf getblockcount)
MNBLOCK08=$(vivo-cli -conf=/etc/masternodes/vivo_n8.conf getblockcount)
MNBLOCK09=$(vivo-cli -conf=/etc/masternodes/vivo_n9.conf getblockcount)
MNBLOCK10=$(vivo-cli -conf=/etc/masternodes/vivo_n10.conf getblockcount)
MNBLOCK11=$(vivo-cli -conf=/etc/masternodes/vivo_n11.conf getblockcount)
MNBLOCK12=$(vivo-cli -conf=/etc/masternodes/vivo_n12.conf getblockcount)
MNBLOCK13=$(vivo-cli -conf=/etc/masternodes/vivo_n13.conf getblockcount)
MNBLOCK14=$(vivo-cli -conf=/etc/masternodes/vivo_n14.conf getblockcount)
MNBLOCK15=$(vivo-cli -conf=/etc/masternodes/vivo_n15.conf getblockcount)
MNBLOCK16=$(vivo-cli -conf=/etc/masternodes/vivo_n16.conf getblockcount)
MNBLOCK17=$(vivo-cli -conf=/etc/masternodes/vivo_n17.conf getblockcount)
MNBLOCK18=$(vivo-cli -conf=/etc/masternodes/vivo_n18.conf getblockcount)
MNBLOCK19=$(vivo-cli -conf=/etc/masternodes/vivo_n19.conf getblockcount)
MNBLOCK20=$(vivo-cli -conf=/etc/masternodes/vivo_n20.conf getblockcount)


echo "blockhash identificato: $BLOCKHASH"

ver_MN01()
{
	if [ "$MNBLOCK01" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK01" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 01 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 01 in aggiornamento $MNBLOCK01 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n1.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo1_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo1_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n1.conf reconsiderblock $BLOCKHASH
	fi
}
ver_MN02()
{
	if [ "$MNBLOCK02" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK02" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 02 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 02 in aggiornamento $MNBLOCK02 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n2.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo2_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo2_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n2.conf reconsiderblock $BLOCKHASH
	fi
}
ver_MN03()
{
	if [ "$MNBLOCK03" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK03" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 03 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 03 in aggiornamento $MNBLOCK03 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n3.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo3_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo3_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n3.conf reconsiderblock $BLOCKHASH
	fi
}
ver_MN04()
{
	if [ "$MNBLOCK04" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK04" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 04 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 04 in aggiornamento $MNBLOCK04 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n4.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo4_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo4_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n4.conf reconsiderblock $BLOCKHASH
	fi
}
ver_MN05()
{
	if [ "$MNBLOCK05" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK05" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 05 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 05 in aggiornamento $MNBLOCK05 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n5.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo5_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo5_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n5.conf reconsiderblock $BLOCKHASH
	fi
}
ver_MN06()
{
	if [ "$MNBLOCK06" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK06" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 06 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 06 in aggiornamento $MNBLOCK06 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n6.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo6_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo6_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n6.conf reconsiderblock $BLOCKHASH
	fi
}
ver_MN07()
{
	if [ "$MNBLOCK07" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK07" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 07 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 07 in aggiornamento $MNBLOCK07 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n7.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo7_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo7_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n7.conf reconsiderblock $BLOCKHASH
	fi
}
ver_MN08()
{
	if [ "$MNBLOCK08" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK08" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 08 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 08 in aggiornamento $MNBLOCK08 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n8.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo8_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo8_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n8.conf reconsiderblock $BLOCKHASH
	fi
}
ver_MN09()
{
	if [ "$MNBLOCK09" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK09" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 09 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 09 in aggiornamento $MNBLOCK09 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n9.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo9_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo9_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n9.conf reconsiderblock $BLOCKHASH
	fi
}
ver_MN10()
{
	if [ "$MNBLOCK10" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK10" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 10 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 10 in aggiornamento $MNBLOCK10 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n10.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo10_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo10_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n10.conf reconsiderblock $BLOCKHASH
	fi
}
ver_MN11()
{
	if [ "$MNBLOCK11" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK11" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 11 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 11 in aggiornamento $MNBLOCK11 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n11.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo11_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo11_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n11.conf reconsiderblock $BLOCKHASH
	fi
}
ver_MN12()
{
	if [ "$MNBLOCK12" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK12" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 12 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 12 in aggiornamento $MNBLOCK12 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n12.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo12_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo12_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n12.conf reconsiderblock $BLOCKHASH
	fi
}
ver_MN13()
{
	if [ "$MNBLOCK13" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK13" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 13 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 13 in aggiornamento $MNBLOCK13 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n13.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo13_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo13_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n13.conf reconsiderblock $BLOCKHASH
	fi
}
ver_MN14()
{
	if [ "$MNBLOCK14" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK14" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 14 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 14 in aggiornamento $MNBLOCK14 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n14.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo14_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo14_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n14.conf reconsiderblock $BLOCKHASH
	fi
}
ver_MN15()
{
	if [ "$MNBLOCK15" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK15" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 15 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 15 in aggiornamento $MNBLOCK15 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n15.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo15_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo15_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n15.conf reconsiderblock $BLOCKHASH
	fi
}
ver_MN16()
{
	if [ "$MNBLOCK16" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK16" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 16 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 16 in aggiornamento $MNBLOCK16 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n16.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo16_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo16_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n16.conf reconsiderblock $BLOCKHASH
	fi
}
ver_MN17()
{
	if [ "$MNBLOCK17" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK17" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 17 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 17 in aggiornamento $MNBLOCK17 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n17.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo17_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo17_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n17.conf reconsiderblock $BLOCKHASH
	fi
}
ver_MN18()
{
	if [ "$MNBLOCK18" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK18" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 18 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 18 in aggiornamento $MNBLOCK18 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n18.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo18_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo18_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n18.conf reconsiderblock $BLOCKHASH
	fi
}
ver_MN19()
{
	if [ "$MNBLOCK19" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK19" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 19 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 19 in aggiornamento $MNBLOCK19 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n19.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo19_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo19_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n19.conf reconsiderblock $BLOCKHASH
	fi
}
ver_MN20()
{
	if [ "$MNBLOCK20" -ge "$EXPBLOCKLOW" ] && [ "$MNBLOCK20" -le "$EXPBLOCKHIGH" ]; then
	  echo "$(date +%F_%T) Masternode 20 OK " >> vivo_block_manager.log
	else
	  echo "$(date +%F_%T) Masternode 20 in aggiornamento $MNBLOCK20 / $EXPBLOCK " >> vivo_block_manager.log
	  /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n20.conf invalidateblock $BLOCKHASH
	  mnTroubleshoot/vivo/vivo20_stopService.sh
      sleep 10
      mnTroubleshoot/vivo/vivo20_startService.sh
      sleep 10
      /usr/local/bin/vivo-cli -conf=/etc/masternodes/vivo_n20.conf reconsiderblock $BLOCKHASH
	fi
}


ver_MN01
ver_MN02
ver_MN03
ver_MN04
ver_MN05
ver_MN06
ver_MN07
ver_MN08
ver_MN09
ver_MN10
ver_MN11
ver_MN12
ver_MN13
ver_MN14
ver_MN15
ver_MN16
ver_MN17
ver_MN18
ver_MN19
ver_MN20

#echo "$(date +%F_%T) Explorer Block $EXPBLOCK.."
#echo "$(date +%F_%T) Blocco minimo $EXPBLOCKLOW.."
#echo "$(date +%F_%T) Blocco massimo $EXPBLOCKHIGH.."
#echo "$(date +%F_%T) Blocco masternode 1 $MNBLOCK01.."
