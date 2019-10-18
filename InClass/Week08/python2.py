import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="prescott",
    password="embryriddle",
    unix_socket='/var/lib/mysql/mysql.sock'
)

mycursor = mydb.cursor()

mycursor.execute("SHOW DATABASES")

for x in mycursor:
    print(x)

mycursor.close()
mydb.close()
      
