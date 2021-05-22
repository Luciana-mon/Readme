-- INSERÇÃO DE DADOS TABELA CLIENTES --

insert into clientes (nome, email, telefone, senha) values ("Marcia Nunes", "marcianunes@gmail.com", 93584-6082, "A32847");
insert into clientes (nome, email, telefone, senha) values ("Angelica Souza Lima", "angelicalima@gmail.com", 94487-6083, "angel2");
insert into clientes (nome, email, telefone, senha) values ("Rogerio Campos Souza", "rogeriocampos@hotmail.com", 98585-7012, "847510");
insert into clientes (nome, email, telefone, senha) values ("Marcelo Farias Feijo", "marcelofeijo@yahoo.com.br", 95568-3287, "Fm9615");
insert into clientes (nome, email, telefone, senha) values ("Adailton Lira", "adailtonlira@yahoo.com.br", 97853-1128, "851232");
insert into clientes (nome, email, telefone, senha) values ("Ana Alice Magalhãess Santos", "alicesantos@gmail.com", 96512-4328, "ana123");
insert into clientes (nome, email, telefone, senha) values ("Heitor Ferreira dos Santos", "heitorsantos@gmail.com", 95568-7014, "991020");
insert into clientes (nome, email, telefone, senha) values ("Henrique Guimaraes Felix", "henriquefelix@gmail.com", 93248-6578, "hgf2535");
insert into clientes (nome, email, telefone, senha) values ("Maria Eduarda Cardoso Santos", "duda1234@hotmail.com", 99321-4048, "045963");
insert into clientes (nome, email, telefone, senha) values ("José Rodrigo Santos Silva", "rodrigosantos@gmail.com", 94045-8973, "jr5658");

-- INSERÇÃO DE DADOS TABELA CIDADEESTADO --

insert into cidadesestados (cidade, estado) values ("Bauru", "SP");
insert into cidadesestados (cidade, estado) values ("Mogi das Cruzes", "SP");
insert into cidadesestados (cidade, estado) values ("Guarulhos", "SP");
insert into cidadesestados (cidade, estado) values ("Montes Claros", "MG");
insert into cidadesestados (cidade, estado) values ("Aparecida de Goiânia", "GO" );
insert into cidadesestados (cidade, estado) values ("Paranamirim", "RN");
insert into cidadesestados (cidade, estado) values ("Lagoa dos Velhos", "RN");
insert into cidadesestados (cidade, estado) values ("Niterói", "RJ");
insert into cidadesestados (cidade, estado) values ("Tês Rios", "RJ");
insert into cidadesestados (cidade, estado) values ("Barra do Pirai", "RJ");

-- INSERÇÃO DE DADOS TABELA ENDERECOS --

insert into enderecos (tipologradouro, logradouro, numero, complemento, cep, bairro, clientes_id, cidadesEstados_id) values ("Av.", "Nova cumbica", 1260, "Proximo Mota", 07321-300, "Jardim Nova Cumbica" , 10, 3 );
insert into enderecos (tipologradouro, logradouro, numero, complemento, cep, bairro, clientes_id, cidadesEstados_id) values ("Rua", "Manoel Rodrigues" ,180, "Proximo Cras", 09321-300, "Centro",9, 1);
insert into enderecos (tipologradouro, logradouro, numero, complemento, cep, bairro, clientes_id, cidadesEstados_id) values ("Av.", "Francisco Matarazzo", 3250, "Fundos", 03211-301, "Vila Assis",3, 2 );
insert into enderecos (tipologradouro, logradouro, numero, complemento, cep, bairro, clientes_id, cidadesEstados_id) values ("Rua", "Santana do Parnaiba", 18, "casa 1", 09730-100, "Cidade Nova", 5, 4);
insert into enderecos (tipologradouro, logradouro, numero, complemento, cep, bairro, clientes_id, cidadesEstados_id) values ("Viela", "Guilherme Polidorio", 89, "Casa3", 03210-000, "Vila Guarani", 7, 5);
insert into enderecos (tipologradouro, logradouro, numero, complemento, cep, bairro, clientes_id, cidadesEstados_id) values ("Trav.", "Cardeal Arcoverde", 3000, "Fundos", 05308-700, "Jardim Zaira", 1, 6);
insert into enderecos (tipologradouro, logradouro, numero, complemento, cep, bairro, clientes_id, cidadesEstados_id) values ("Rua", "Sete de Setembro", 501, "casa 3", 03112-690, "Capim Dourado", 4, 8);
insert into enderecos (tipologradouro, logradouro, numero, complemento, cep, bairro, clientes_id, cidadesEstados_id) values ("Av.", "Presidente Castelo Branco", 901, "Prox. Extra", 78912-000, "Centro", 2, 10);
insert into enderecos (tipologradouro, logradouro, numero, complemento, cep, bairro, clientes_id, cidadesEstados_id) values ("Rua", "Augusto Tolle", 29, "Padaria Dallas", 07231-010, "Bonsucesso", 8, 7);
insert into enderecos (tipologradouro, logradouro, numero, complemento, cep, bairro, clientes_id, cidadesEstados_id) values ("Av.","Tiradentes", 401, "casa 2", 32140-500, "Arapongas", 6, 9);

-- INSERÇÃO DE DADOS TABELA DEPARTAMENTOS --

insert into departamentos (nome) values ("Adaptadores");
insert into departamentos (nome) values ("Ferramentas");
insert into departamentos (nome) values ("Eletronicos");
insert into departamentos (nome) values ("Casa");
insert into departamentos (nome) values ("Acessorios");
insert into departamentos (nome) values ("Moveis");
insert into departamentos (nome) values ("Tablets e Celulares");
insert into departamentos (nome) values ("Games");
insert into departamentos (nome) values ("Informatica");

-- INSERÇÃO DE DADOS TABELA STATUS --

insert into status (descricao) values ("Novo Pedido");
insert into status (descricao) values ("Cancelado");
insert into status (descricao) values ("Aguardando Pagamento");
insert into status (descricao) values ("Pagamento Autorizado");
insert into status (descricao) values ("Pagamento Negado");
insert into status (descricao) values ("Em Separação");
insert into status (descricao) values ("Em Tranporte");
insert into status (descricao) values ("Entregue");

-- INSERÇÃO DE DADOS TABELA ESTOQUES --

insert into estoques (codigo, quantidade) values (25678, 0);
insert into estoques (codigo, quantidade) values (27707, 29);
insert into estoques (codigo, quantidade) values (27642, 20);
insert into estoques (codigo, quantidade) values (26322, 64);
insert into estoques (codigo, quantidade) values (27232, 6);
insert into estoques (codigo, quantidade) values (19757, 72);
insert into estoques (codigo, quantidade) values (19277, 0);
insert into estoques (codigo, quantidade) values (20526, 8);
insert into estoques (codigo, quantidade) values (27133, 18);
insert into estoques (codigo, quantidade) values (27131, 34);
insert into estoques (codigo, quantidade) values (24672, 16);
insert into estoques (codigo, quantidade) values (22125, 66);
insert into estoques (codigo, quantidade) values (27691, 0);
insert into estoques (codigo, quantidade) values (27207, 8);
insert into estoques (codigo, quantidade) values (27206, 9);
insert into estoques (codigo, quantidade) values (25759, 23);
insert into estoques (codigo, quantidade) values (13168, 63);
insert into estoques (codigo, quantidade) values (27787, 41);
insert into estoques (codigo, quantidade) values (26013, 0);
insert into estoques (codigo, quantidade) values (23553, 7);
insert into estoques (codigo, quantidade) values (26468, 3);
insert into estoques (codigo, quantidade) values (22941, 2);
insert into estoques (codigo, quantidade) values (26333, 7);
insert into estoques (codigo, quantidade) values (19141, 0);
insert into estoques (codigo, quantidade) values (50251, 76);
insert into estoques (codigo, quantidade) values (12263, 27);
insert into estoques (codigo, quantidade) values (21849, 36);
insert into estoques (codigo, quantidade) values (15883, 2);
insert into estoques (codigo, quantidade) values (11719, 16);
insert into estoques (codigo, quantidade) values (17791, 0);
insert into estoques (codigo, quantidade) values (65300, 413);
insert into estoques (codigo, quantidade) values (26948, 3);
insert into estoques (codigo, quantidade) values (13449, 2);

-- INSERÇÃO DE DADOS TABELA PRODUTOS --

insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (25678, "DESKTOP ACER C24-963-UA91 I3-1005G1 1.2GHz/8GB/512GB SSD/23.8FHD IPS/W10/INGLES PRETO", 750.00, 0, 0, 9, 1 );
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (27707, "FONE C/ MICROFONE JBL C50HI PRETO",  7.0, 1, 1, 9, 2 );
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (27642, "MONIT. LED 15.6 HYE HY16WLNC HD/VGA/HDMI PRETO", 68.0, 1, 0, 9, 3);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (26322, "MOUSE GAME COOLER MASTER MM110 RGB PRETO MM-110-GKOM1", 17.0, 1, 0, 9,4);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (19757, "GAME CONTROLE REDRAGON HARROW G808 VIBRATION PC/PS3",21.5, 1, 1, 8, 6 );
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (19277, "GAME CONTROLE HAVIT 2X1 HV-G61 USB P/PC PRETO", 10.0, 0, 0, 8, 7 );
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (20526, "TABLET AMAZON FIRE 7 1GB/16GB PRETO WIFI/QUAD CORE 7", 50.00, 1, 0, 7, 8 );
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (27133, "TABLET AMAZON FIRE  HD8 KIDS EDITION 2GB/32GB ROSA WIFI/QUAD CORE 8\u0027\u0027", 99.00, 1, 1, 7, 9);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (27131, "TABLET AMAZON FIRE  HD8 KIDS EDITION 2GB/32GB AZUL WIFI/QUAD CORE 8\u0027\u0027", 99.00, 1, 0, 7, 10);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (24672, "CEL SAMSUNG A31 A315G 4GB/128GB AZUL DUAL SIM LTE 6.4", 204.50, 1, 1, 7, 11);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (22125, "MESA GAMER MTEK GM01 LED RGB PRETO",170.00, 1, 1, 6, 12);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (27691, "CADEIRA GAMER UP UP0917 PRETO/VERDE",145.00,0, 0, 6, 13);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (27207, "CADEIRA GAMER REDRAGON CAPRICORNUS C502-BW PRETO/BRANCO",185.00, 1, 0, 6, 14);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (27206, "CADEIRA GAMER REDRAGON CAPRICORNUS C502-B PRETO",185.00, 1, 1, 6, 15);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (25759, "TECLADO + MOUSE + MOUSEPAD + FONE GAME HAVIT KB501CM GAMENOTE ESPANHOL PRETO", 25.00, 1, 1, 5, 16);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (13168, "MONIT. LCD  4 EVERSUN WD-2030 USB", 49.00, 1, 0, 5, 17);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (27787, "MICROFONE ELGATO WAVE1 10MAA9901 DIGITAL PRETO", 149.00,1, 1, 5, 18);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (26013, "MESA DIG. WACOM INTUOS PEN AND TOUCH SMALL CTL-4100WL/K0-AA BLUETOOTH  PRETO", 112.00, 0, 0, 5, 19);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (23553, "BARBEADOR PANASONIC ER-389 RECARREGAVEL 110 VOLT",24.75, 1, 1, 4, 20);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (26468, "BALANCA DIGITAL BLULORY DSY03 BODY FAST SCALE BRANCO",19.00, 1, 1, 4, 21);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (22941, "BABA ELETRONICA MOTOROLA MBP87CNCT BRANCO/DOURADO", 55.00, 1, 1, 4, 22);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (26333, "BABA ELETRONICA MOTOROLA MBP161TIMER BRANCO",36.50, 1, 1, 4, 23);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (19141, "CAMERA WEBCAM RAZER  RZ19-02320100-R3U1 KIYO 720P",91.00, 0, 0, 3, 24 );
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (50251, "CAMERA WEBCAM MICROSOFT LIFE CAM CINEMA HD 720p H5D-00013 -PROMOCAO", 46.50, 1, 1, 3, 25);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (12263, "CAMERA WEBCAM LOGITECH C270 HD 960-000694", 41.00, 1, 1, 3, 26);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (21849, "CAMERA GOPRO HERO 8 CHDHX-801-RW PRETO", 340.00, 1, 1, 3, 27);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (15883, "CADEADO SEGURANCA PARA NOTEBOOK HLD F\u0026K LLAVE", 6.50, 1, 0, 2, 28);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (11719, "ALICATE PARA CRIMPAR TL-315 3 EM 1",15.00, 1, 1, 2, 29);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (17791, "CABO ADAPTADOR CONVERSOR VGA MACHO/HDMI FEMEA/USB/AUDIO HLD PRETO", 13.80, 0, 0, 1, 30);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (65300, "ADAPTADOR VGA MACHO / RJ45", 6.00, 1, 1, 1, 31);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (26948, "ADAPTADOR TYPE C/ MICRO USB", 3.20, 1, 1, 1, 32);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (13449, "ADAPTADOR TYPE C MACHO/ USB 3.0 FEMEA", 2.90, 1, 1, 1, 33);
insert into produtos (codigo, descricao, valor, disponivel, emdestaque, departamentos_id, estoques_id) values (27232 , "XBOX ONE S  512GB BIVOLT ALL DIGITAL 120FPS BRANCO", 412.0, 1, 1, 8, 5);

-- INSERÇÃO DE DADOS TABELA PEDIDOS --		

insert into pedidos (data, codigoproduto, status_id, clientes_id) values("2021-05-19", 22941, 3, 10);	
insert into pedidos (data, codigoproduto, status_id, clientes_id) values("2021-05-11", 17791, 6, 6);
insert into pedidos (data, codigoproduto, status_id, clientes_id) values("2021-05-13", 27232, 7, 2);		
insert into pedidos (data, codigoproduto, status_id, clientes_id) values("2021-05-01", 25759, 3, 5);	
insert into pedidos (data, codigoproduto, status_id, clientes_id) values("2021-05-03", 19141, 1, 9);	
insert into pedidos (data, codigoproduto, status_id, clientes_id) values("2021-05-05", 24672, 7, 7);	
insert into pedidos (data, codigoproduto, status_id, clientes_id) values("2021-05-15", 27232, 4, 1);	
insert into pedidos (data, codigoproduto, status_id, clientes_id) values("2021-05-20", 26013, 2, 3);	
insert into pedidos (data, codigoproduto, status_id, clientes_id) values("2021-05-17", 27131, 7, 4);	
insert into pedidos (data, codigoproduto, status_id, clientes_id) values("2021-05-04", 23553, 1, 8);															
	
 -- INSERÇÃO DE DADOS TABELA PEDIDOSPRODUTOS --	 
 
 insert into pedidosprodutos (pedidos_id, produtos_id, valortotal) values(1, 21, 55.00);
 insert into pedidosprodutos (pedidos_id, produtos_id, valortotal) values(2, 29, 13.80 );
 insert into pedidosprodutos (pedidos_id, produtos_id, valortotal) values(3, 33, 412.00 );
 insert into pedidosprodutos (pedidos_id, produtos_id, valortotal) values(4, 15, 25.00 );
 insert into pedidosprodutos (pedidos_id, produtos_id, valortotal) values(5, 23, 91.00);
 insert into pedidosprodutos (pedidos_id, produtos_id, valortotal) values(6, 10, 204.50 );
 insert into pedidosprodutos (pedidos_id, produtos_id, valortotal) values(7, 33, 412.00 );
 insert into pedidosprodutos (pedidos_id, produtos_id, valortotal) values(8, 18, 112.00 );
 insert into pedidosprodutos (pedidos_id, produtos_id, valortotal) values(9, 9, 99.00 );
 insert into pedidosprodutos (pedidos_id, produtos_id, valortotal) values(10,19, 23.75 );
 
 
 

