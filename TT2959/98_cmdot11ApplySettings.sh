#!/bin/bash
source 0_setenv.sh
#cmdot11ApplySettings
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.12.0 i 1
