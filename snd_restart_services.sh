attesa()
{
  sleep 120
}

arresta_servizio()
{
  id=$1
  echo -e "Arresto il servizio $id"
  systemctl stop snodecoin-mn$id.service
  
}

avvia_servizio()
{
  id=$1
  echo -e "Avvio il servizio $id"
  systemctl start snodecoin-mn$id.service
}

for (( c=1; c<=20; c++ ))
do  
   arresta_servizio $c
done

killall snodecoind

for (( c=1; c<=20; c++ ))
do  
   avvia_servizio $c; attesa
done

echo "Riavvio completato"
