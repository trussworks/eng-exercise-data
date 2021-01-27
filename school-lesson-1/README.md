# Engineering Exercise Data - Lesson One

```sh
make fresh
make insert-row
```

You find yourself in a room... 
That room is a school...
There are lots of teachers...
How do you keep track of all of them?

Let's create a basic table with some teacher info! Run `make fresh` to load the sample data. Then, we'll open that database in sqlite and take a peek at it. Open this particular db using `sqlite3 school.db`. When you are done, you can exit using `^d`.

Take a peek at all of our current students

```sql
SELECT * FROM teachers;
```

Find a list of all the teachers who teach Pre-K

```sql
SELECT * FROM teachers WHERE subject = 'Pre-K'; 
```

Get only specific info for teachers in Pre-K

```sql
SELECT last_name, first_name FROM teachers WHERE subject = 'Pre-K';
```

Update the name for a student
```sql
UPDATE teachers SET first_name = 'Andy' WHERE id = 1;
```