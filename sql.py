import sqlite3

# connecting to the database
connection = sqlite3.connect("gfg.db")

# cursor
crsr = connection.cursor()

# print statement will execute if there
# are no errors
print("Connected to the database")

sql_command = """CREATE TABLE users (
	user_id INTEGER PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	age INTEGER NOT NULL,
	email TEXT NOT NULL UNIQUE,
	phone TEXT NOT NULL UNIQUE,
	addras TEXT NOT NULL UNIQUE,
	last_visit  TEXT NOT NULL UNIQUE,
	book_was_take TEXT NOT NULL UNIQUE,
	book_have TEXT NOT NULL UNIQUE
);"""

crsr.execute(sql_command)

# close the connection
connection.close()

