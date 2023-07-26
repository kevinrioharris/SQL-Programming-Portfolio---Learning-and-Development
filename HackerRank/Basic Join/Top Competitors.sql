#Problem: Write a query to print the respective hacker_id and name of hackers 
  #who achieved full scores for more than one challenge. Order your output in descending 
  #order by the total number of challenges in which the hacker earned a full score. 
  #If more than one hacker received full scores in same number of challenges, 
  #then sort them by ascending hacker_id.
#MySQL

SELECT H.hacker_id, H.name
FROM Submissions AS S
INNER JOIN Challenges AS C
ON S.challenge_id = C.challenge_id
INNER JOIN Difficulty AS D
ON C.difficulty_level = D.difficulty_level
INNER JOIN Hackers AS H
ON S.hacker_id = H.hacker_id AND S.score = D.score
GROUP BY H.hacker_id, H.name
HAVING COUNT(S.hacker_id)  > 1
ORDER BY COUNT(S.hacker_id) DESC, S.hacker_id ASC;
