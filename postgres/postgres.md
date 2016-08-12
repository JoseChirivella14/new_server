## Instructions to configure the user and create the db on postgres
Go to the postgres command line
```
sudo -u postgres psql
```
To create a user type
```
CREATE USER YourUser WITH PASSWORD 'your password';
```
*Inside the '' put your password. Remember to always finish a sentence on PostgreSQL command line with ;*

To give roles or permissions to our user type
```
ALTER USER YourUser WITH CREATEDB SUPERUSER;
```
Basically you are giving your user the ability to Create Databases and to give *Super* permissions to your User.

To create the database of our User, the name has to be the same as our User.
```
CREATE DATABASE YouUser OWNER YourUser;
```

That's it... You successfully created an User, Database and permissions to that User.
