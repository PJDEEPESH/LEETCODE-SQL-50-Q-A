SELECT DISTINCT
    l1.Num AS ConsecutiveNums
FROM
    Logs l1
    JOIN Logs l2 ON l1.id = l2.id - 1 AND l1.Num = l2.Num
    JOIN Logs l3 ON l1.id = l3.id - 2 AND l1.Num = l3.Num;
