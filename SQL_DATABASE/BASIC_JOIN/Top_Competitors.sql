/*
 Name of Problem: Top Competitors
 Link of Hackerrank's Problem: https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true
*/
SELECT H.hacker_id, H.name 
FROM Submissions AS S
INNER JOIN Challenges AS C ON S.challenge_id = C.challenge_id
INNER JOIN Hackers AS H ON S.hacker_id = H.hacker_id
INNER JOIN Difficulty AS D ON D.difficulty_level = C.difficulty_level
WHERE S.score = D.score 
GROUP BY H.hacker_id, H.name 
HAVING COUNT(S.hacker_id) >= 2

ORDER BY COUNT(C.challenge_id) DESC, H.Hacker_id ASC;