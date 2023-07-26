#Problem: Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, 
#sorted in order of descending power. If more than one wand has same power, 
#sort the result in order of descending age.
#MySQL

SELECT W.id,WP.age,W.coins_needed,W.power
FROM Wands AS W
INNER JOIN Wands_Property AS WP
ON W.code = WP.code
WHERE WP.is_evil = 0 AND W.coins_needed = (SELECT MIN(Wa.coins_needed) FROM Wands AS Wa INNER JOIN Wands_Property AS WPR ON Wa.code = WPR.code WHERE WP.age = WPR.age AND W.power = Wa.power)
ORDER BY W.power DESC, WP.age DESC;
