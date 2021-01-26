# Engineering Exercise Data - Lesson One

```sh
make fresh
make insert-teacher-row
make insert-student-row
```

You find yourself in a room... 
That room is a school...
There are lots of teachers...
Those teachers have lots of students...
How do you keep track of all of them?

Let's create a basic table with some teacher and student info! Run `make fresh` to load the sample data. Then, we'll open that database in sqlite and take a peek at it. Open this particular db using `sqlite3 school.db`. When you are done, you can exit using `^d`.

Take a peek at all of our current students

```sql
SELECT * FROM students;
```

Find a list of all the students in Pre-K

```sql
SELECT * FROM students WHERE grade = 'Pre-K'; 
```

Get only specific info for students in Pre-K

```sql
SELECT last_name, first_name FROM students WHERE grade = 'Pre-K';
```

Get student info and the teacher name for students in Pre-K

```
SELECT students.last_name, students.first_name, teachers.last_name 
FROM students JOIN teachers ON students.teacher_id = teachers.id
WHERE students.grade = 'Pre-K';
```