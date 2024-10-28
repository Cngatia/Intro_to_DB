import mysql.connector
from mysql.connector import Error
try:
  mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="0714904116Babg@",
    database="alx_book_store"
  )

  if mydb.is_connected():
    print("Connected to MySQL database") 
    mycursor = mydb.cursor()
    mycursor.execute("""
      CREATE DATABASE IF NOT EXISTS alx_book_store(
                 )
                 """) 
    print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as exception:

 print("Error while connecting to MySQL", exception)

finally:
  if(mydb.is_connected()):
    mydb.close()  
    print("MySQL connection is closed")