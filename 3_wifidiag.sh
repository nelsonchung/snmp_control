source 0_setenv.sh

snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.17.0 s "iwpriv wlan0 set_mib DFS_detected=1"
