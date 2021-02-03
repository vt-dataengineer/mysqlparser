# -*- coding: utf-8 -*-
"""
Created on Wed Feb  3 15:12:22 2021

@author: vishatha
"""
import mysql.connector
def parse_sql(sql_file_path):
    with open(sql_file_path, 'r', encoding='utf-8') as f:
        data = f.read().splitlines()
    stmt = ''
    stmts = []
    for line in data:
        if line:
            if line.startswith('--') or line.startswith('/'):
                continue
            stmt += line.strip() + ' '
            if ';' in stmt:
                stmts.append(stmt.strip())
                stmt = ''
    mysql_connect(stmts)
    return stmts

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
    for x in query:
        cursor.execute(x)
        print('executed query: ',x)

#    for row in result:
#        print(row)
    mydb.commit()
    cursor.close()
    mydb.close()
if __name__ == '__main__':
   f = parse_sql('dml1.sql')