from conn import conn 
from names import first_names, last_names
from random import randint, choices
from classes import Person

# creating connection
cursor = conn.cursor()

# main
for i in range(0, 10):
    # random values to build person
    first_name = choices(first_names)[0]
    last_name = choices(last_names)[0]
    age = randint(1, 40)

    # building person
    p1 = Person(first_name, last_name, age)
    print(p1.insert_query())
    cursor.execute(p1.insert_query())

cursor.close()
conn.close()