

# Second stage: Use the actual MySQL image


mysql -u root -p ESZszATb91PSc+O61Ym9/RmKMMyD4PKZkfUWnkuQ9hk=
use mysql;
alter table mysql.user drop column default_role;
alter table mysql.user drop column max_statement_time;
alter table mysql.user drop column password_expired;
quit
