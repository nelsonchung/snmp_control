#!/bin/bash
source 0_setenv.sh
echo "支援以下版本升級"
count=1
echo "${count}. CH6643-3.5.1.12b-NOSH-TW.NNEMN.p7"
count=`expr $count + 1`
echo "${count}. CH6643-3.7.0.1j-SH-TW.NNEMN.p7"
count=`expr $count + 1`
echo "${count}. CH6643-3.7.0.1k-SH-TW.NNEMN.p7"
count=`expr $count + 1`
echo "${count}. CH6643-3.7.0.1m-SH-TW.NNEMN.p7"
count=`expr $count + 1`
echo "${count}. CH6643-3.7.0.1n-SH-TW.NNEMN.p7"
count=`expr $count + 1`
echo "${count}. CH6643-3.7.0.1p-SH-TW.NNEMN.p7"
count=`expr $count + 1`
echo "${count}. CH6643-3.7.0.1q-SH-TW.NNEMN.p7"
count=`expr $count + 1`
echo "${count}. CH6643-3.7.0.1r-SH-TW.NNEMN.p7"
#count=`expr $count + 1`
#echo "${count}. "
read option

#if [ "$option" != "1" ] && [ "$option" != "2" ] && [ "$option" != "3" ] && [ "$option" != "4" ] && [ "$option" != "5" ] && [ "$option" != "6" ] && [ "$option" != "7" ]
#then
#    echo "Wrong choice"
#    exit 0
#fi

case $option in 
    "1")
    FW_VER="CH6643-3.5.1.12b-NOSH-TW.NNEMN.p7"
    ;;
    "2")
    FW_VER="CH6643-3.7.0.1j-SH-TW.NNEMN.p7"
    ;;
    "3")
    FW_VER="CH6643-3.7.0.1k-SH-TW.NNEMN.p7"
    ;;
    "4")
    FW_VER="CH6643-3.7.0.1m-SH-TW.NNEMN.p7"
    ;;
    "5")
    FW_VER="CH6643-3.7.0.1n-SH-TW.NNEMN.p7"
    ;;
    "6")
    FW_VER="CH6643-3.7.0.1p-SH-TW.NNEMN.p7"
    ;;
    "7")
    FW_VER="CH6643-3.7.0.1q-SH-TW.NNEMN.p7"
    ;;
    "8")
    FW_VER="CH6643-3.7.0.1r-SH-TW.NNEMN.p7"
    ;;
    *)
        echo  "Wrong value"
        exit
    ;;
esac

#if [ "$option" == "1" ]
#then
#    FW_VER="CH6643-3.5.1.12b-NOSH-TW.NNEMN.p7"
#elif [ "$option" == "2"  ]
#then
#    FW_VER="CH6643-3.7.0.1k-SH-TW.NNEMN.p7"
#elif [ "$option" == "3"  ]
#then
#    FW_VER="CH6643-3.7.0.1m-SH-TW.NNEMN.p7"
#elif [ "$option" == "4"  ]
#then
#    FW_VER="CH6643-3.7.0.1n-SH-TW.NNEMN.p7"
#elif [ "$option" == "5"  ]
#then
#    FW_VER="CH6643-3.7.0.1p-SH-TW.NNEMN.p7"
#elif [ "$option" == "6"  ]
#then
#    FW_VER="CH6643-3.7.0.1q-SH-TW.NNEMN.p7"
#elif [ "$option" == "7"  ]
#then
#    FW_VER="CH6643-3.7.0.1r-SH-TW.NNEMN.p7"
#elif [ "$option" == ""  ]
#then
#fi

echo "你確定真的要升級版本到$FW_VER(Y/y)?"
read option
if [ "$option" == "y" ] || [ "$option" == "Y" ]
then
    #docsDevSwFilename
    snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.2.1.69.1.3.2.0 s $FW_VER 
    #sleep 1
    #docsDevSwAdminStatus
    snmpset $SNMP_PRIV $SNMP_IP 1.3.6.1.2.1.69.1.3.3.0 i 1
fi
