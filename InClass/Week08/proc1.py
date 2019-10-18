import mysql.connector
try:
    mydb = mysql.connector.connect(
        host='localhost',
        user='prescott',
        password='embryriddle',
        database='vanhilsm_db',
        unix_socket='/var/lib/mysql/mysql.sock'
    )

    cursor = mydb.cursor()
    cursor.callproc('get_customers')
    for result_cursor in cursor.stored_results():
        for row in result_cursor:
            print("{} {} {}".format(row[0], row[1], row[2]))
except mysql.connector.Error as error:
    print(error)
finally:
    if mydb.is_connected():
        cursor.close()
        mydb.close()
