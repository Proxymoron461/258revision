/* URL: https://www.hackerrank.com/challenges/the-company/problem */

/* Normal solution: */
SELECT C.company_code, C.founder,
(SELECT COUNT(DISTINCT lead_manager_code) FROM Lead_Manager LM WHERE (LM.company_code = C.company_code) GROUP BY LM.company_code) AS leads,
(SELECT COUNT(DISTINCT senior_manager_code) FROM Senior_Manager SM WHERE (SM.company_code = C.company_code) GROUP BY SM.company_code) AS seniors,
(SELECT COUNT(DISTINCT manager_code) FROM Manager M WHERE (M.company_code = C.company_code) GROUP BY M.company_code) AS managers,
(SELECT COUNT(DISTINCT employee_code) FROM Employee E WHERE (E.company_code = C.company_code) GROUP BY E.company_code) AS employees
FROM Company C ORDER BY C.company_code ASC;
