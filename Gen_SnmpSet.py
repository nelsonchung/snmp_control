#!/usr/bin/env python
# coding=utf-8
# run with python3 utility

# ========================== import ================================
import os

# ========================== Global parameter ======================
SNMPSET_FILE="quick.sh"
REPEAT="Y"
IP="172.16.90.20"

# ========================== Start run python ======================
print("Start run.................")

DEVICE_OPT=input("Control "+IP+"'s device (Y/y)(or Enter key) \nor input IP address\n") 
if DEVICE_OPT == "Y" or DEVICE_OPT == "y" or DEVICE_OPT == "":
    IP="172.16.90.20"
else:
    IP=DEVICE_OPT

SNMPSET="snmpset -c private -v2c "+IP+" "
#print(SNMPSET)

while REPEAT == "Y" or REPEAT == "y" or REPEAT == "":
    OID = input("\n請輸入OID:\n")
    #print(OID)

    print("此OID是table or leaf:")
    print("1. table")
    print("2. leaf")
    TABLE_OR_LEAF = input("請選擇\n")

    OID_INDEX=0
    if TABLE_OR_LEAF == "1":
        OID_INDEX=input("請輸入index\n")
    else:
        OID_INDEX=0
    #print(TABLE_OR_LEAF)

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
    print("4. HEX STRING")
    TYPE_OPTION = input("請選擇\n")
#print(TYPE_OPTION)

    VALUE=input("請輸入值\n")

    if TYPE_OPTION == "1":
        FINAL_STRING=SNMPSET+OID+"."+str(OID_INDEX)+" i "+str(VALUE)+"\n"
    elif TYPE_OPTION == "2":
        FINAL_STRING=SNMPSET+OID+"."+str(OID_INDEX)+" u "+str(VALUE)+"\n"
    elif TYPE_OPTION == "3":
        FINAL_STRING=SNMPSET+OID+"."+str(OID_INDEX)+" s "+"\""+VALUE+"\"\n"
    elif TYPE_OPTION == "4":
        #format is "d5 a4 cc 08"
        FINAL_STRING=SNMPSET+OID+"."+str(OID_INDEX)+" x "+"\""+VALUE+"\"\n"

    #name = input('請輸入檔名：')
    file = open(SNMPSET_FILE, 'a+', encoding = 'UTF-8')
    file.write(FINAL_STRING)
    file.close()

    REPEAT=input("要繼續輸入嗎(Y/y)(or Enter key)，不要請按(N/n)?")

os.system("chmod +x "+SNMPSET_FILE)
print("Please check "+SNMPSET_FILE+".")
#os.system("source "+SNMPSET_FILE)
