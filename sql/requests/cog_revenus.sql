SELECT *
FROM cog c
INNER JOIN revenus r ON c.com = CONCAT(LEFT(r.dep, 2), r.commune)
WHERE c.com = '28116'
