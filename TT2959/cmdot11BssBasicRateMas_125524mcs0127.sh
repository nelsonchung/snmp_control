source 0_setenv.sh

#24G
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.2.32 i 1
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.2.33 i 1
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.2.34 i 2
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.2.35 i 2
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.3.32 s "00Nelson_24G_Private"
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.3.33 s "00Nelson_24G_Public"
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.3.34 s "00Nelson_24G_G2"
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.3.35 s "00Nelson_24G_G3"
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.5.32 i 0 
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.5.33 i 0
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.5.34 i 0
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.5.35 i 0
#cmdot11BssBridgeSsidEnable
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.10.32 i 2 
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.10.33 i 1 
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.10.34 i 2
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.10.35 i 2
#cmdot11BssBasicRateMask
#enable 1M, 2M, 5.5M, 24M, mcs0, mcs1, mcs2, mcs7
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.21.32 x "E3C20000" 
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.4.1.14.1.21.33 x "E3C20000" 


#cmdot11ChannelSetting
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.1.5.1.3.0 u 3 

#5G
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.2.40 i 1
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.2.41 i 1
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.2.42 i 2
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.2.43 i 2
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.3.40 s "00Nelson_5G_Private"
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.3.41 s "00Nelson_5G_Public"
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.3.42 s "00Nelson_5G_G2"
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.3.43 s "00Nelson_5G_G3"
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.5.40 i 0
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.5.41 i 0
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.5.42 i 0
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.5.43 i 0
#cmdot11anBssBridgeSsidEnable
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.10.40 i 2
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.10.41 i 1 
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.10.42 i 2
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.10.43 i 2
#cmdot11anBssBasicRateMask
#enable 6M, 12M, 24M mcs0, 1, 6, 7
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.21.40 x "F8600000" 
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.2.1.1.1.21.41 x "F8600000" 


#cmdot11anChannelSetting
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.51.3.1.1.3.0 u 60 

#cmdot11ApplySettings
source 98_cmdot11ApplySettings.sh