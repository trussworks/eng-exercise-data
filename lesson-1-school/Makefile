load-schema:
	sqlite3 school.db < school.sql

load-csv:
	tail -n +2 students.csv | sqlite3 school.db '.mode csv' '.import /dev/stdin students'

delete-db:
	rm -f school.db

insert-row:
	sqlite3 school.db "insert into students (last_name) values ('Capybara')"

db:
	sqlite3 school.db

fresh: delete-db load-schema load-csv

.PHONY: load-schema load-csv delete-db fresh db
