# -*- coding: utf-8 -*-
"""
Created on Wed Feb  3 13:55:52 2021

@author: vishatha
"""




#from os import system
#USERNAME = "root"
#PASSWORD = "root"
#DBNAME = "aiml"
#HOST = "localhost"
#PORT = 3306
#FILE = "ddl.sql"
#command = """mysql -u %s -p"%s" --host %s --port %s %s < %s""" %(USERNAME, PASSWORD, HOST, PORT, DBNAME, FILE)
#system(command)
import mysql.connector

def mysql_connect():
    
  
    mydb = mysql.connector.connect(
      host="localhost",
      user="root",
      port=3306,
      database="aiml",
      password="root"
    )
    cursor = mydb.cursor(buffered=True)
    with open('dml.sql', 'r', encoding='utf-8') as f:
        cursor.execute(f.read(), multi=True)
#        cursor.execute(f.read(), multi=True)
#    query = "select * from test.test"
#    for row in result:
#        print(row)
    mydb.commit()
    cursor.close()
    mydb.close()
    
if __name__ == '__main__':
   mysql_connect()
