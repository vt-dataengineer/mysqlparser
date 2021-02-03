import sys
def ddl_generate(ddl):
    ddl_final = []
    drop_ddl = []
    create_ddl = []
    temp = []
    ss = []
    ddl_tmp =''
    ddl_create = ''
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
                if sql.startswith('/') or sql.startswith('*') or sql.startswith('Table: ') or sql == '\n':
                    continue
                else:
                    ddl_create = ddl_create+" "+ sql
                    if ';' in ddl_create:
#                      print('inside second else ... ',ddl_create)
                      create_ddl.append(ddl_create)
#                if ddl_create.endswith(';'):
#                    print('inside newline condition...', ddl_create)
#                    print('else'+ddl_create) 
#            print(ddl_create)
#            if ddl_create.strip().replace("'",'') not in create_ddl:
#                create_ddl.append(ddl_create.strip().replace("'",''))
            
   # if ddl_create.strip().replace("'",'') not in create_ddl:
#                if ddl_create.strip().replace("'",'') not in create_ddl:
#                print(ddl_create.strip())
    #  create_ddl.append(ddl_create.strip().replace("'",''))
            #print(ddl_tmp)
#    for i in range(len(ddl_final)):
#        print('final'+ ddl_final[i])
#        for x in range(len(create_ddl)):
#           print('final'+create_ddl[x])
#            
    for x in range(len(drop_ddl)):
        print(drop_ddl[x])
    for x in range(len(create_ddl)):
        print(create_ddl[x])
#    for y in set(create_ddl):
#        print(y)
#    for x in ss:
#        print(x)

if __name__ == '__main__':
    ddl = open('ddl.sql','r')
    ddl_generate(ddl)


    
