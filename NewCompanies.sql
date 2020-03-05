/* URL: https://www.hackerrank.com/challenges/the-company/problem */

/* UNFINISHED */
SELECT C.company_code, C.founder, (SELECT COUNT(lead_manager_code) FROM Lead_Manager LM GROUP BY lead_manager_code WHERE LM.company_code = C.company_code), (SELECT COUNT(senior_manager_code) FROM Senior_Manager SM GROUP BY senior_manager_code WHERE SM.company_code = C.company_code), (SELECT COUNT(manager_code) FROM Manager M GROUP BY manager_code WHERE M.company_code = C.company_code), (SELECT COUNT(employee_code) FROM Employee E GROUP BY employee_code WHERE E.company_code = C.company_code) FROM Company C;
