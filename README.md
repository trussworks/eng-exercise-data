# eng-exercise-data

Engineering exercises around data: modeling, databases, storage of all kinds.


### Glossary of Terms
[This glossary](https://raima.com/database-terminology/) was a starting point for many of these definitions.

#### Relational database
A database in which inter-table relationships are organized primarily through common data columns, which define a one-to-many relationship between a row of the primary key table and one or more rows of the matching foreign key table. Joins relate tables that have matching primary/foreign key values, but other comparisons (relationships) may be defined. In addition to describing how the database tables are related, the relational model also defines how the related data can be accessed and manipulated. SQL is the most commonly used relational model database language.

#### Table
A collection of closely related columns. A table consists of rows each of which shares the same columns but vary in the column values.

#### Column
A single unit of named data that has a particular data type (e.g., number, text, or date). Columns only exist in tables.

#### Data type
The basic kind of data that can be stored in a column. The data types that are available in RDM SQL are: char, wchar, varchar, wvarchar, binary, varbinary, boolean, tinyint, smallint, integer, bigint, real, float, double, date, time, timestamp, long varbinary, long varchar, and long wvarchar. Postgres offers a [number of types](https://www.postgresql.org/docs/9.5/datatype.html).

#### Primary Key
A column or group of columns in a given table that uniquely identifies each row of the table. The primary key is used in conjunction with a foreign key in another (or even the same) table to relate the two tables together. For example, the primary key in an author table would match the foreign key in a book table in order to relate a particular author to that author's books.

#### Constraints
Constraints are the rules enforced on the data columns of a table. These are used to limit the type of data that can go into a table. This ensures the accuracy and reliability of the data in the database. Read more about constraints [here](https://www.tutorialspoint.com/sql/sql-constraints.htm).

#### Foreign Key
One or more columns in a table intended to contain only values that match the related primary/unique key column(s) in the referenced table. Foreign and primary keys explicitly define the direct relationships between tables. Referential Integrity is maintained when every foreign key refers to one and only one existing primary key.

#### Index
A separate structure that allows fast access to a table's rows based on the data values of the columns used in the index. RDM supports two indexing types: hash and b-tree. A SQL key (not foreign key) is implemented using an index.

#### Migration
At a pure database level, this typically means moving your data from one platform to another (ie moving from physical hardware to a cloud platform, or one cloud service to another). As a developer, a database migration more commonly refers to a way of tracking data schema changes under source control, using a tool that implements those incremental changes as they happen. One example of a migration tool is [flyway](https://flywaydb.org/documentation/command/migrate).

#### Object-Relational Mapping (ORM)
Object-relational mapping (ORM, O/RM, and O/R mapping tool) is a programming technique for converting data between incompatible type systems using object-oriented programming languages. This creates, in effect, a "virtual object database" that can be used from within the programming language. A popular example is [Active Record](https://guides.rubyonrails.org/association_basics.html), which comes built-in with Ruby on Rails.