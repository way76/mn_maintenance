#!/bin/bash

riavvio_servizio()
{
  mn=$1
  echo "disattivazione servizio $mn ..."
  service vivo_n$mn stop
  sleep 10
  echo "attivazione servizio $mn ..."
  service vivo_n$mn start
  sleep 110
}

riavvio_servizio "1";
riavvio_servizio "2";
riavvio_servizio "3";
riavvio_servizio "4";
riavvio_servizio "5";
riavvio_servizio "6";
riavvio_servizio "7";
riavvio_servizio "8";
riavvio_servizio "9";
riavvio_servizio "10";
riavvio_servizio "11";
riavvio_servizio "12";
riavvio_servizio "13";
riavvio_servizio "14";
riavvio_servizio "15";
riavvio_servizio "16";
riavvio_servizio "17";
riavvio_servizio "18";
riavvio_servizio "19";
riavvio_servizio "20";
