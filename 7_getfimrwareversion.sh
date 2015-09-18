#!/bin/bash
source 0_setenv.sh
snmpwalk $SNMP_PRIV $SNMP_IP 1.3.6.1.2.1.69.1.3
