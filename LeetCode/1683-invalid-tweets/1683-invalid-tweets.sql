# Write your MySQL query statement below
SELECT tweet_id
  FROM Tweets
 WHERE length(content) > 15
 GROUP
    BY tweet_id;