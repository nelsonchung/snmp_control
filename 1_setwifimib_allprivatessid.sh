source 0_setenv.sh
#24G
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.2.32 i 1
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.2.33 i 1
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.3.32 s "00Nelson_24G_Private"
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.3.33 s "00Nelson_24G_Public"
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.5.32 i 0 
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.5.33 i 0
#cmdot11BssBridgeSsidEnable
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.10.32 i 2 
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.10.33 i 2
#5G
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.2.40 i 1
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.2.41 i 1
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.3.40 s "00Nelson_5G_Private"
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.3.41 s "00Nelson_5G_Public"
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.5.40 i 0
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.5.41 i 0
#cmdot11anBssBridgeSsidEnable
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.10.40 i 2
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.10.41 i 2
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.5.40 i 0
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.1.3.0 u 56

#cmdot11ApplySettings
source 98_cmdot11ApplySettings.sh
