/* URL: https://www.hackerrank.com/challenges/binary-search-tree-1/problem */

/* WITHOUT USING IN CLAUSE */
SELECT b1.N, 'Inner' FROM BST b1 INNER JOIN BST b2 ON b1.N = b2.P WHERE b1.P IS NOT NULL
UNION
SELECT N, 'Root' FROM BST WHERE P IS NULL
UNION
SELECT b1.N, 'Leaf' FROM BST b1 LEFT OUTER JOIN BST b2 ON b1.N = b2.P WHERE b2.P IS NULL
ORDER BY N;
