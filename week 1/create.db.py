import mysql.connector

#Connect My SQL Server

conn = mysql.connector.connect(
    host=""
    user=""
    password=""
)

#Create a cursor object
cursor = conn.cursor()

#Create a new database
database_name =""
cursor.execute