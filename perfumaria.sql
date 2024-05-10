CREATE DATABASE perfumaria;

USE perfumaria;

CREATE TABLE produto (
	idProd INT primary key auto_increment,
    nome varchar(80),
    marca varchar(50),
    linha varchar(50),
    preco double
);

CREATE TABLE historico (
	idOp INT auto_increment primary key,
    operacao varchar(10),
    idProd int,
    nomeAntigo varchar(80),
    nomeAtual varchar(80),
    marcaAntiga varchar(50),
    marcaAtual varchar(50),
    linhaAntigo varchar(50),
    linhaAtual varchar(50),
    precoAntigo double,
    precoAtual double
);

DELIMITER //

CREATE TRIGGER registrar_operacao
AFTER UPDATE ON produto
FOR EACH ROW 
BEGIN
	INSERT INTO historico (operacao, idProd, nomeAntigo, nomeAtual, marcaAntiga,
    marcaAtual, linhaAntigo, linhaAtual, precoAntigo, precoAtual)
    VALUES ('UPDATE', OLD.idProd, OLD.nome, NEW.nome, OLD.marca, NEW.marca,
    OLD.linha, NEW.linha, OLD.preco, NEW.preco);
END;
//

DELIMITER ;

INSERT INTO produto (nome, marca, linha, preco)
VALUES ('Liz Flora Desodorante', 'Liz', 'Flora', 119),
('Boticollection Acqua Fresca', 'Boticollection', 'Acqua Fresca', 109),
('Malbec', 'Malbec', 'Tradicional', 179),
('Egeo Blue', 'Egeo', 'Blue', 126);

SELECT * FROM produto;
SELECT * FROM historico;

UPDATE produto
SET nome = 'Liz Flora'
WHERE idProd = 1;

-- Trigger responsável pelo DELETE
DELIMITER //

CREATE TRIGGER registrar_delete
AFTER DELETE ON produto
FOR EACH ROW 
BEGIN
	INSERT INTO historico (operacao, idProd, nomeAntigo, marcaAntiga, linhaAntigo, precoAntigo)
    VALUES ('DELETE', OLD.idProd, OLD.nome, OLD.marca, OLD.linha, OLD.preco);
END;
//

DELIMITER ;

DELETE FROM produto
WHERE idProd = 4;

CREATE TRIGGER registrar_insert
AFTER INSERT ON produto
FOR EACH ROW 
BEGIN
    INSERT INTO historico (operacao, idProd, nomeAtual, marcaAtual, modeloAtual, precoAtual)
    VALUES ('INSERT', NEW.idProd, NEW.nome, NEW.marca, NEW.linha, NEW.preco)
END
//

DELIMITER ;

INSERT INTO produto (nome, marca, linha, preco)
VALUES ('Boticollection Portinari Absoluto', 'Boticollection', 'Portinari', 149);

SELECT * FROM produto;


