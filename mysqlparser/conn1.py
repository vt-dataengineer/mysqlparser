# -*- coding: utf-8 -*-
"""
Created on Wed Feb  3 10:39:31 2021

@author: vishatha
"""

import sys
import mysql.connector
def dml_generate(dml):
    dml_st = []
    drop_ddl = []
    create_ddl = []
    temp = []
    ss = []
    ddl_tmp =''
    ddl_create = ''
    for line in dml:
        sql = line
        #print(sql)
        if sql.lower().find("insert") != -1 or sql.lower().find("update") != -1 or sql.lower().find("delete") != -1 or sql.lower().find("select") != -1:
#                ddl_create = ''
                ddl_tmp = sql
        else:
            if sql.startswith('/') or sql.startswith('*') or sql.startswith('Table: ') or sql == '\n' or sql.startswith('#') or sql.startswith('BEGIN') or sql.startswith('END'):
                             continue
    #        print('end',sql.lower().find("end"))
               # print("drop", sql)
            ddl_tmp = ddl_tmp+" "+sql.strip()
#        print(ddl_tmp)
        
#            print('if'+ddl_tmp)
            if ';' in ddl_tmp:
                dml_st.append(ddl_tmp.strip())
#            print(dml_st)
    print(len(dml_st))
#    if len(dml_st) > 1:
#        mysql_connect(dml_st[0])
    
#    for x in dml_st:
#        print(x)
    print(dml_st[0])
#    for x in range(len(dml_st)):
#      print()
    
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
        cursor.execute(x)
        cursor.
        print('executed query: ',x)

#    for row in result:
#        print(row)
    mydb.commit()
    cursor.close()
    mydb.close()
    
if __name__ == '__main__':
    dml = open('dml.sql','r')
    dml_generate(dml)


    
