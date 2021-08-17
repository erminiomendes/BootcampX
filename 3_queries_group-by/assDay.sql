SELECT day, count(*) AS total_ass
FROM assignments 
GROUP BY day
ORDER BY day