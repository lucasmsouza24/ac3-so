class Person:
    # constructor
    def __init__(self, first_name, last_name, age):
        self.first_name = first_name
        self.last_name = last_name
        self.age = age
    
    # return complete name
    def name(self):
        return self.first_name + " " + self.last_name

    # return query template to help on insert
    def query(self): 
        return f"INSERT INTO person(name, age) VALUES (%s, %s);"

    # return values do do insert
    def values(self):
        return (self.name(), self.age)
