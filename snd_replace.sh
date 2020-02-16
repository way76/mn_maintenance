#!/bin/bash


ripr_mn()
{
 echo "MN da rimuovere: $mnr, con oigine $mno"

}
 
echo "Masternode da rimuovere:"
read  mnr
echo "Masternode di origine:"
read  mno

ripr_mn "$mnr" "$mno"
