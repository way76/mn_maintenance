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

arresta_servizio 1
arresta_servizio 2
killall snodecoind

avvia_servizio 1; attesa
avvia_servizio 2; attesa

echo "Riavvio completato"
