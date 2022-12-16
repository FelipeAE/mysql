SELECT * 
FROM RECIBOS AS r
JOIN PRODUCTORES AS p ON r.idprod = p.idprod;

SELECT * 
FROM FRUTAS AS f
JOIN RECIBOS AS r ON f.idfruta = r.idfruta;

SELECT * 
FROM RECIBOS AS r
LEFT JOIN ZONAS AS z ON r.idzona = z.idzona;

SELECT * 
FROM RECIBOS AS r
RIGHT JOIN ZONAS AS z ON r.idzona = z.idzona;

SELECT COUNT(r.nrorecibo)
FROM RECIBOS AS r
WHERE fecha BETWEEN 'yyyy-mm-dd' AND 'yyyy-mm-dd';