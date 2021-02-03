# -*- coding: utf-8 -*-
"""
Created on Mon Feb  1 13:18:23 2021

@author: vishatha
"""

import mysql.connector
import sys
def ddl_generate(ddl):
    ddl_final = []
    drop_ddl = []
    create_ddl = []
    ddl_tmp =''
    ddl_create = ''
    ss = []
    for line in ddl:
        sql = line
        #print(sql)
        if sql.lower().find("drop ") != -1:          
            ddl_tmp = ''
           # print("drop", sql)
            ddl_tmp = sql
#            print('if'+ddl_tmp)
            drop_ddl.append(ddl_tmp.strip().replace("'",''))
        else:
            if sql.lower().find("create ") != -1:
#                ddl_create = ''
                ddl_create = sql
#                print('elseif'+ ddl_create)
                
            else:  
                if sql.startswith('/') or sql.startswith('*') or sql.startswith('Table: ')or sql == '\n':
                    continue
                else:
                    ddl_create = ddl_create+" "+ sql
                    if ';' in ddl_create:
#                      print('inside second else ... ',ddl_create)
                      create_ddl.append(ddl_create)
#                    print('else'+ddl_create) 
#            print(ddl_create)
#            if sql == "\n":
#            print(sql)
#            if ddl_create.strip().replace("'",'') not in create_ddl:
#                create_ddl.append(ddl_create.strip().replace("'",''))
            #print(ddl_tmp)
#    for i in range(len(ddl_final)):
#        print('final'+ ddl_final[i])
#        for x in range(len(create_ddl)):
#           print('final'+create_ddl[x])
#            
#    for x in range(len(drop_ddl)):
#        print(drop_ddl[x])
#    for x in range(len(create_ddl)):
#        print('create'+create_ddl[x])
#    for x in create_ddl:
#        print(x)
    if len(drop_ddl) > 1:
        mysql_connect(drop_ddl)
    if len(create_ddl) > 1:
        mysql_connect(create_ddl)
#    if len(ss) > 1:
#        mysql_connect(ss) 
        
        
#mysql connection
def mysql_connect(query):
    
  
    mydb = mysql.connector.connect(
      host="localhost",
      user="root",
      port=3306,
      database="aiml",
      password="root"
    )
    cursor = mydb.cursor(buffered=True)
#    query = "select * from test.test"
    for x in set(query):
        cursor.execute(x.replace("'",''))
        print('executed query: ',x)

#    for row in result:
#        print(row)
    mydb.commit()
    cursor.close()
    mydb.close()
    
if __name__ == '__main__':
    ddl = open('ddl.sql','r')
    ddl_generate(ddl)