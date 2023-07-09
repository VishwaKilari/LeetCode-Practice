Create table If Not Exists Person (Id int, Email varchar(255))
Truncate table Person
insert into Person (id, email) values ('1', 'john@example.com')
insert into Person (id, email) values ('2', 'bob@example.com')
insert into Person (id, email) values ('3', 'john@example.com')

# Delete all the duplicate emails, keeping only one unique email with the smallest id

# Solution
delete p1 from person p1,person p2 
where p1.email=p2.email and p1.id>p2.id;
