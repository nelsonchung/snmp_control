#!/bin/bash
source 0_setenv.sh
#cmResetToDefaults
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.3.1.18.0 i 1
#sleep 60
