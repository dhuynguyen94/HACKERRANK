/*
Enter your query here.
*/

SELECT W.id, WP.age, W.coins_needed, W.power 
FROM WANDS AS W
INNER JOIN WANDS_PROPERTY AS WP ON W.code = WP.code
WHERE WP.is_evil = 0 AND W.coins_needed = 
     (
         SELECT MIN(W1.coins_needed) 
         FROM WANDS AS W1
         INNER JOIN WANDS_PROPERTY AS WP1
         ON W1.code = WP1.code 
         WHERE W1.power = W.power AND WP1.age = WP.age
     )
ORDER BY W.power DESC, WP.age DESC;