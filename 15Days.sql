/* URL: https://www.hackerrank.com/challenges/15-days-of-learning-sql/problem */

/* UNFINISHED */
SELECT submission_date, COUNT(DISTINCT hacker_id) AS submissions, (id), (name)
FROM Submissions NATURAL JOIN Hackers
GROUP BY submission_date
ORDER BY submission_date;
