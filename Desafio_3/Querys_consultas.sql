
-- 1 TOTAL DE PRODUTOS DISPONIVEL NO ESTOQUE --
select sum(quantidade) as Total_Produtos_Disponiveis from estoques;
-- QUANTIDADE DE PRODUTOS CADASTRADOS --
select count(quantidade) as Qtda_Itens_Cadastrados from estoques;

-- 2 QUANTIDADE DE PRODUTOS POR DEPARTAMENTOS --
select nome, quantidade from produtos
inner join departamentos on produtos.id = departamentos.id
inner join estoques on produtos.id = estoques.id;

-- 3 QUANTIDADE DE CLIENTES COM STATUS "EM TRANSPORTE" POR ESTADO --
select nome, codigoproduto, status.descricao, estado from pedidos
inner join status on status.id = pedidos.status_id 
inner join clientes on clientes.id = pedidos.clientes_ID
inner join enderecos on clientes.ID = enderecos.clientes_ID
inner join cidadesestados on enderecos.cidadesEstados_id = cidadesestados.id
where status.descricao = "Em Tranporte";

-- 4 TOTAL DE PRODUTOS VENDIDOS POR DEPARTAMENTO --
select departamentos.nome, sum(produtos.valor) as Valor_Total   from produtos
inner join pedidosprodutos on produtos.id = pedidosprodutos.produtos_id
inner join departamentos on departamentos.id = produtos.departamentos_id
group by departamentos.nome;

-- 5 TOTAL DE PRODUTOS VENDIDOS POR CLIENTES E ESTADO --
select clientes.nome, sum(produtos.valor) as Valor_Total, estado from pedidos
inner join clientes on clientes.id = pedidos.id
inner join produtos on produtos.id = clientes.id
inner join enderecos on clientes.id = enderecos.clientes_ID 
inner join cidadesestados on enderecos.cidadesEstados_id = cidadesestados.id 
group by produtos.id;


