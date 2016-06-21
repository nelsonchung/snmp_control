source 0_setenv.sh

cmGwL2GreTunnelCfgEntry="1.3.6.1.4.1.35604.1.19.52.1.1010.1.1.1"
cmGwL2GreFwdCfgEntry="1.3.6.1.4.1.35604.1.19.52.1.1010.2.1.1"
cmGwL2GreCpeCfgEntry="1.3.6.1.4.1.35604.1.19.52.1.1010.3.1.1"

#***********************cmGwL2GreTunnelCfg**********************************
#cmGwL2GreTunnelCfgEnabled 
snmpset $SNMP_PRIV $SNMP_IP ${cmGwL2GreTunnelCfgEntry}.2.1 i 1
#cmGwL2GreTunnelEndptInetAddress
snmpset $SNMP_PRIV $SNMP_IP ${cmGwL2GreTunnelCfgEntry}.4.1 x "AC 10 01 47" 
#cmGwL2GreTunnelName
snmpset $SNMP_PRIV $SNMP_IP ${cmGwL2GreTunnelCfgEntry}.5.1 s "NelsonGre"

#***********************cmGwL2GreFwdCfgEntry**********************************
#cmGwL2GreFwdCfgEnabled
snmpset $SNMP_PRIV $SNMP_IP ${cmGwL2GreFwdCfgEntry}.2.1 i 1
#cmGwL2GreFwdId
snmpset $SNMP_PRIV $SNMP_IP ${cmGwL2GreFwdCfgEntry}.3.1 i 200 
#cmGwL2GreFwdToTunnelIndex
snmpset $SNMP_PRIV $SNMP_IP ${cmGwL2GreFwdCfgEntry}.7.1 i 1

#***********************cmGwL2GreCpeCfgEntry**********************************
#cmGwL2GreCpeCfgEnabled
snmpset $SNMP_PRIV $SNMP_IP ${cmGwL2GreCpeCfgEntry}.2.1 i 1
#cmGwL2GreCpeIfaceMask
snmpset $SNMP_PRIV $SNMP_IP ${cmGwL2GreCpeCfgEntry}.6.1 x "80008000" #Enable eth0 and wifi 24G primary
#cmGwL2GreCpeToFwdId
snmpset $SNMP_PRIV $SNMP_IP ${cmGwL2GreCpeCfgEntry}.7.1 i 200 

#***********************Final**********************************
#cmGwL2GreEgressIface
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.52.1.1010.9.0 i 0 
#cmGwL2GreCfgApplySettings
snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.4.1.35604.1.19.52.1.1010.11.0 i 1
