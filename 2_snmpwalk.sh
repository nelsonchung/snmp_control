#!/bin/bash
IP="172.16.90.20"
SNMPWALK="snmpwalk -c private -v2c $IP"

echo "walk cmdot11anMgmtBase =================================== "
$SNMPWALK 1.3.6.1.4.1.35604.1.19.51.3.1.1 
echo "walk cmdot11plusEventLogsObject =================================== "
$SNMPWALK 1.3.6.1.4.1.35604.1.19.51.5.7 
