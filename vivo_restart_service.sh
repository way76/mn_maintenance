#!/bin/bash

arresto_servizio()
{
  mn=$1
  echo "disattivazione servizio $mn ..."
  service vivo_n$mn stop
}
avvio_servizio()
{
  mn=$1
  echo "attivazione servizio $mn ..."
  service vivo_n$mn start
  sleep 110
}


arresto_servizio "1";
arresto_servizio "2";
arresto_servizio "3";
arresto_servizio "4";
arresto_servizio "5";
arresto_servizio "6";
arresto_servizio "7";
arresto_servizio "8";
arresto_servizio "9";
arresto_servizio "10";
arresto_servizio "11";
arresto_servizio "12";
arresto_servizio "13";
arresto_servizio "14";
arresto_servizio "15";
arresto_servizio "16";
arresto_servizio "17";
arresto_servizio "18";
arresto_servizio "19";
arresto_servizio "20";

avvio_servizio "1";
avvio_servizio "2";
avvio_servizio "3";
avvio_servizio "4";
avvio_servizio "5";
avvio_servizio "6";
avvio_servizio "7";
avvio_servizio "8";
avvio_servizio "9";
avvio_servizio "10";
avvio_servizio "11";
avvio_servizio "12";
avvio_servizio "13";
avvio_servizio "14";
avvio_servizio "15";
avvio_servizio "16";
avvio_servizio "17";
avvio_servizio "18";
avvio_servizio "19";
avvio_servizio "20";
