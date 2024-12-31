-- # Write your MySQL query statement below
-- UPDATE Users
--    SET name = <> CONCAT(UCASE(LEFT(name, 1)), LCASE(SUBSTRING(name, 2)))
--  WHERE name <> CONCAT(UCASE(LEFT(name, 1)), LCASE(SUBSTRING(name, 2)));

SELECT user_id
     , CONCAT(UCASE(LEFT(name, 1)), LCASE(SUBSTRING(name, 2))) AS name
  FROM Users
 ORDER
    BY user_id;
