-- Add the SQL query to alter the mysql.user table
ALTER TABLE mysql.user ADD COLUMN session_priv ENUM('N','Y') DEFAULT 'N' AFTER max_statement_time;
