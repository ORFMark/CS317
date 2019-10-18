import mysql.connector

mydb = mysql.connector.connect(
    host='localhost',
    user='prescott',
    password='embryriddle',
    database='vanhilsm_db',
    unix_socket='/var/lib/mysql/mysql.sock'
)

cursor = mydb.cursor()
cursor.execute("SELECT * FROM customers")
rows = cursor.fetchall()
print('Total Rows:', cursor.rowcount)
for row in rows:
    print(row)

cursor.close()
mydb.close()
      
