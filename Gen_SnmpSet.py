#!/usr/bin/env python
# coding=utf-8
# run with python3 utility

import os

print("Start run.................")
IP="172.16.90.20"

DEVICE_OPT=input("Control "+IP+"'s device (by keyin Y/y) \nor input IP address\n") 
if DEVICE_OPT == "Y" or DEVICE_OPT == "y":
    IP="172.16.90.20"
else:
    IP=DEVICE_OPT

SNMPSET="snmpset -c private -v2c "+IP+" "
print(SNMPSET)

OID = input("請輸入OID:\n")
print(OID)

print("此OID是table or leaf:")
print("1. table")
print("2. leaf")
TABLE_OR_LEAF = input("請選擇\n")
OID_INDEX=0
if TABLE_OR_LEAF == "1":
    OID_INDEX=input("請輸入index\n")
else:
    OID_INDEX=0
print(TABLE_OR_LEAF)

#The TYPE is a single character, one of:
#i  INTEGER
#u  UNSIGNED
#s  STRING
#x  HEX STRING
#d  DECIMAL STRING
#n  NULLOBJ
#o  OBJID
#t  TIMETICKS
#a  IPADDRESS
#b  BITS
print("Type選項:")
print("1. INTEGER")
print("2. UNSIGNED")
print("3. STRING")
TYPE_OPTION = input("請選擇\n")
print(TYPE_OPTION)

VALUE=input("請輸入值\n")

if TYPE_OPTION == "1":
    FINAL_STRING=SNMPSET+OID+"."+str(OID_INDEX)+" i "+str(VALUE)+"\n"
elif TYPE_OPTION == "2":
    FINAL_STRING=SNMPSET+OID+"."+str(OID_INDEX)+" u "+str(VALUE)+"\n"
elif TYPE_OPTION == "3":
    FINAL_STRING=SNMPSET+OID+"."+str(OID_INDEX)+" s "+VALUE+"\n"

#name = input('請輸入檔名：')
SNMPSET_FILE="snmp_set.sh"
file = open(SNMPSET_FILE, 'a+', encoding = 'UTF-8')
file.write(FINAL_STRING)
file.close()

os.system("chmod +x "+SNMPSET_FILE)
#os.system("source "+SNMPSET_FILE)
