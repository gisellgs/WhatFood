SELECT * FROM whatfood.users;
SELECT * FROM whatfood.access;

SELECT users.user_id, user_name, user_lastname, user_email, acc_token, acc_pass 
FROM users 
INNER JOIN access ON access.user_id = users.user_id;
#WHERE user_email = 'falujan8@gmail.com';


SELECT user_name, user_lastname, user_email
FROM users 
INNER JOIN access ON access.user_id = users.user_id;