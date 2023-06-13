
SELECT * FROM categorias;

SELECT * FROM clientes;

SELECT * FROM locais;

SELECT * FROM lojas;

SELECT * FROM pedidos;

SELECT * FROM produtos;

SELECT * FROM users;







SELECT 

    ID_Pedido AS 'Order_ID',
    ID_Loja AS 'Store_ID',
    ID_Produto AS 'Product_ID',
    ID_Cliente AS "Client_ID"



    FROM pedidos
    WHERE ID_Produto = '4'
    LIMIT 9;


SELECT 
    ID_Cliente AS 'Client_ID',
    Nome AS 'Name',
    Sobrenome AS "End Name"
    FROM clientes
    LIMIT 8;

SELECT *
FROM pedidos
WHERE Data_Venda = '2019-01-03';


SELECT *
FROM produtos
WHERE Preco_Unit <= 350;


SELECT * 
FROM clientes
WHERE Estado_Civil = 'S' AND Sexo = 'M';


SELECT *
FROM pedidos
WHERE Receita_Venda = '350' AND ID_Loja = '8';

SELECT *
FROM produtos
WHERE Marca_Produto = 'DELL' OR Marca_Produto = 'SAMSUNG';


SELECT *
FROM produtos
WHERE Preco_Unit >= 1800;

SELECT 
    COUNT(DISTINCT Escolaridade)
    FROM clientes;


SELECT
    COUNT(Nome)
    FROM clientes;


SELECT
    SUM(Receita_Venda)
--  SUM = Soma
FROM pedidos;

SELECT
    AVG(Receita_Venda)
--  AVG = Média 
FROM pedidos;


SELECT
    MIN(Receita_Venda)
--  MIN = Mínimo 
FROM pedidos;

SELECT
    MAX(Receita_Venda)
--  MAX = Máxima
FROM pedidos;



SELECT 
    
    SUM(Receita_Venda) AS 'Soma de Receita',
    AVG(Receita_Venda) AS 'Média de Receita',
    MIN(Receita_Venda) AS 'Menor Receita',
    MAX(Receita_Venda) AS 'Maior Receita'

FROM pedidos;



SELECT 
    Sexo,
    COUNT(*) AS 'Qtd. Clientes'
FROM clientes
GROUP BY Sexo;


SELECT 
    Marca_Produto,
    COUNT(*) AS 'Qtd. Produtos'
FROM produtos
GROUP BY Marca_Produto;



SELECT 
    Custo_Unit,
        MAX(Custo_Unit),
        COUNT(*)

FROM produtos
GROUP BY Custo_Unit;


SELECT 

    ID_Loja,
        SUM(Receita_Venda) AS 'Receita Total',
        SUM(Custo_Venda) AS 'Custo Total'

FROM pedidos
GROUP BY ID_Loja;


SELECT 
    pedidos.*,
    lojas.Loja,
    lojas.Gerente,
    lojas.Telefone

FROM pedidos
INNER JOIN lojas
    ON pedidos.ID_Loja = lojas.ID_Loja;


SELECT  * FROM clientes;

SELECT 
    