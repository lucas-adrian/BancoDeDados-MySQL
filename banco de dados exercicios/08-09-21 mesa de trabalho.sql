#1
SELECT MAX(VALOR_TOTAL) FROM faturas
WHERE cidade_cobranca = 'oslo';

#2
SELECT MIN(VALOR_TOTAL) FROM faturas;

#3
SELECT avg(valor_total) FROM faturas
WHERE pais_cobranca = 'canada';

#4
SELECT count(id) FROM faturas
WHERE pais_cobranca = 'canada';

#5 
SELECT sum(valor_total) FROM faturas;

#6
SELECT id, data_fatura, valor_total
FROM faturas 
WHERE  valor_total < (SELECT avg(valor_total) FROM faturas);

#7
SELECT max(data_nascimento) FROM empregados;

#8
SELECT min(data_nascimento) FROM empregados;

#9
SELECT date_format(data_nascimento, '%d %M %Y') as data_nasc
FROM empregados;

SELECT DATE_FORMAT(MIN(DATA_NASCIMENTO),"%d %m %Y") date,DATE_FORMAT(MAX(DATA_NASCIMENTO),"%d %m %Y") date  FROM EMPREGADOS;

Jonathan, Nayure, Thalles e Lucas Adrian 