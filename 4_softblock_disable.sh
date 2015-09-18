#!/bin/bash
source 0_setenv.sh
#cmdot11HomeSpotSoftBlockObjects
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.30.1.0 i 2 
#cmdot11ApplySettings
source 98_cmdot11ApplySettings.sh
