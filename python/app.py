from conn import conn 
from names import first_names, last_names
from random import randint, choices
from classes import Person
from time import sleep

# main
while(True):
    # random values to build person
    first_name = choices(first_names)[0]
    last_name = choices(last_names)[0]
    age = randint(1, 40)

    # building person
    p = Person(first_name, last_name, age)
    query = p.query()
    values = p.values()

    # creating cursor connection
    cursor = conn.cursor()

    # inserting person
    try:
        cursor.execute(query, values)
        print(p.name() + " cadastrado!")
    except Exception as e:
        print(p.name() + " não cadastrado")

    conn.commit() # I'LL NEVER FORGET THIS METHOD AGAIN
    cursor.close()
    sleep(1)

# conn.close() 