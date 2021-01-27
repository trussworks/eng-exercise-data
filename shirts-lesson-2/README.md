# Engineering Exercise Data - Lesson One

```sh
make fresh
make insert-row
```

You find yourself in a room...
That room is the stock room of your tshirt shop...
That room is full of tshirts...
Those shirts come in many colors...
How do you keep track of all of them?

Let's create a basic table with some tshirt info! Run `make fresh` to load the sample data. Then, we'll open that database in sqlite and take a peek at it. Open this particular db using `sqlite3 tshirt-inventory.db`. When you are done, you can exit using `^d`.

How many small shirts do we have? What designs on colors do they come in?

```sql
SELECT tshirt_colors.color, tshirt_colors.quantity_small, tshirts.design_name 
FROM tshirt_colors JOIN tshirts ON tshirt_colors.tshirt_id = tshirts.id;
```