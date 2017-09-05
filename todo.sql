-- This is the beginning of the console log

-- Goes into the database with my interesting and original name
psql testthingy

-- Create table
CREATE TABLE todolist (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(1000) NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);

-- Add table values
INSERT INTO todolist (title, details, priority, created_at, completed_at) VALUES
('Resume', 'need to check with dana', 1, CURRENT_TIMESTAMP, NULL),
('Cover Letter', 'review dana`s notes', 1, CURRENT_TIMESTAMP, NULL),
('Weekly Project', 'finish weekly', 2, CURRENT_TIMESTAMP, NULL),
('Refactor Website', 'refactor jtcanfield.github.io', 3, CURRENT_TIMESTAMP, NULL),
('Risk', 'Finish Risk', 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

--  finds everything in that todolist and puts it in a nice table
SELECT * FROM todolist;

-- selects everything that is not completed yet
SELECT * FROM todolist WHERE completed_at IS NULL;

-- finds all todos with a priority below 1.
SELECT * FROM todolist WHERE priority >= 2;

-- updates statement to complete one todo by its id. Your ids may differ, so you will choose the id to update.
UPDATE todolist SET completed_at = CURRENT_TIMESTAMP WHERE id = 3;

-- Delete all completed todolist
DELETE FROM students WHERE completed_at IS NOT NULL;
