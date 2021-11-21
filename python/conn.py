# importings
from mysql.connector import connect
from credentials import db, user, host, password

# creating connection
conn = connect(
    user=user, 
    password=password,
    host=host,
    database=db
)