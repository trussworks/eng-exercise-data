load-schema:
	sqlite3 tshirt-inventory.db < tshirt-inventory.sql

load-csv:
	tail -n +2 tshirt-designs.csv | sqlite3 tshirt-inventory.db '.mode csv' '.import /dev/stdin tshirts'
	tail -n +2 tshirt-colors.csv | sqlite3 tshirt-inventory.db '.mode csv' '.import /dev/stdin tshirt_colors'

delete-db:
	rm -f tshirt-inventory.db

insert-row:
	sqlite3 tshirt-inventory.db "insert into tshirts (design_name) values ('pretty')"

db:
	sqlite3 tshirt-inventory.db

fresh: delete-db load-schema load-csv

.PHONY: load-schema load-csv delete-db fresh db
