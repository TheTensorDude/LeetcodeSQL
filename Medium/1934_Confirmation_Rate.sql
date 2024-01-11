SELECT  s.user_id
       ,round(SUM(case WHEN action = 'confirmed' THEN +1 else 0 end) / COUNT(*),2) AS confirmation_rate
FROM Signups AS s
LEFT JOIN Confirmations AS c
ON s.user_id = c.user_id
GROUP BY  s.user_id
ORDER BY  confirmation_rate;