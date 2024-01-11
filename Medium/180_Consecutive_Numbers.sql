SELECT  distinct l1.num AS ConsecutiveNums
FROM Logs AS l1
INNER JOIN Logs AS l2
ON l1.id + 1 = l2.id AND l1.num = l2.num
INNER JOIN Logs AS l3
ON l1.id + 2 = l3.id AND l3.num = l2.num;