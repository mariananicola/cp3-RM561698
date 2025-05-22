#!/bin/bash

# Verifica se foi passado exatamente um argumento
if [ "$#" -ne 1 ]; then
  echo "Uso: ./minfo.sh {hostname|uptime|disk|all}"
  exit 1
fi

# Executa de acordo com o argumento
case "$1" in
  hostname)
    hostname
    ;;
  uptime)
    uptime -p
    ;;
  disk)
    df -h /
    ;;
  all)
    hostname
    uptime -p
    df -h /
    ;;
  *)
    echo "Uso: ./minfo.sh {hostname|uptime|disk|all}"
    exit 1
    ;;
esac
