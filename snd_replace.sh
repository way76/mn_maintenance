#!/bin/bash


ripr_mn()
{
 echo "MN da rimuovere: $mnr, con oigine $mno"

}
 
echo "Masternode da rimuovere:"
read -p mnr
echo "Masternode di origine:"
read -p mno

ripr_mn "$mnr" "$mno"
