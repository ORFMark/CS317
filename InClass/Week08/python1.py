import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="prescott",
    passwd="embryriddle"
)

mycursor = mydb.cursor()

mycursor.execute("SHOW DATABASES")

for x in mycursor:
    print(x)

mycursor.close()
mydb.close()
      
