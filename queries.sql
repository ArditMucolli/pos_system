SELECT * FROM products WHERE qty > 50 AND price < 1.20;
 
SELECT * FROM users INNER JOIN salaries ON users.id = salaries.user_id;
 
SELECT * FROM users INNER JOIN salaries ON users.id = salaries.user_id WHERE salaries.total > 1600;

SELECT * FROM users INNER JOIN salaries ON users.id = salaries.user_id  WHERE salaries.total > 100 and salaries.month IN (3,4);


SELECT * FROM users 
LEFT JOIN user_role ON users.id = user_role.user_id
LEFT JOIN roles ON roles.id = user_role.role_id 
RIGHT JOIN salaries ON users.id = salaries.user_id
WHERE roles.name = 'employee' AND salaries.total > 1000