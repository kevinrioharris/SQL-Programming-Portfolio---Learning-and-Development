#MySQL
  
SELECT H.hacker_id, H.name, COUNT(C.challenge_id) as count_c
FROM Hackers AS H
JOIN Challenges AS C ON H.hacker_id = C.hacker_id
GROUP BY H.hacker_id, H.name
HAVING count_c = (SELECT count(challenge_id) AS max_count FROM Challenges GROUP BY hacker_id ORDER BY max_count DESC LIMIT 1)
OR count_c IN (SELECT T.CNT FROM (SELECT count(challenge_id) AS CNT FROM Challenges GROUP BY hacker_id) AS T GROUP BY T.CNT HAVING COUNT(T.CNT) = 1)
ORDER BY count_c DESC, H.hacker_id ASC;
