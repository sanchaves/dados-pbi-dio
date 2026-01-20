create database ecommerce;
use ecommerce;

INSERT INTO clients (Fname, Minit, Lname, CPF, Address) VALUES
('Maria', 'M', 'Silva', '12345678901', 'Rua Prata 29, Carangola'),
('Matheus', 'O', 'Pimentel', '98765432100', 'Rua Alameda 289, Centro'),
('Ricardo', 'F', 'Souza', '45678912345', 'Av. das Vinhas 1009, Centro'),
('Julia', 'S', 'França', '45678902344', 'Rua Laranjeiras 861, Centro'),
('Roberta', 'G', 'Assis', '98765453122', 'Rua Koller 19, Centro');

INSERT INTO product (Pname, classification_kids, category, avaliacao, size) VALUES
('Camiseta', FALSE, 'Vestimenta', 4.5, 'M'),
('Notebook', FALSE, 'Eletrônico', 4.8, '15pol'),
('Boneca Barbie', TRUE, 'Brinquedos', 4.7, '30cm'),
('Mesa Madeira', FALSE, 'Móveis', 4.3, '120x80'),
('Chocolate', TRUE, 'Alimentos', 4.9, '100g');

INSERT INTO payments (idClient, typePayment, limitAvailable) VALUES
(1, 'Cartão', 2000.00),
(2, 'Boleto', 0),
(3, 'Cartão', 1500.00),
(4, 'Dois cartões', 3000.00),
(5, 'Cartão', 1000.00);

INSERT INTO orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) VALUES
(1, 'Confirmado', 'Compra de 2 camisetas', 15, TRUE),
(2, 'Em processamento', 'Notebook Dell', 25, FALSE),
(3, 'Confirmado', 'Boneca e chocolate', 12, TRUE),
(4, 'Cancelado', 'Mesa não entregue', 0, FALSE),
(5, 'Confirmado', 'Chocolate e camiseta', 10, TRUE);

INSERT INTO productStorage (storageLocation, quantity) VALUES
('Galpão 1 - SP', 100),
('Galpão 2 - RJ', 200),
('Depósito Central - MG', 350),
('Galpão 3 - PR', 180),
('Galpão 4 - RS', 90);

INSERT INTO supplier (socialName, CNPJ, contact) VALUES
('Tech Eletrônicos LTDA', '12345678000199', '11987654321'),
('Vestuário Brasil SA', '98765432000188', '21999887766'),
('Moveis Requinte', '45678912000177', '31988552233'),
('Chocolates Delícia', '11122233000155', '47999887744'),
('Brinquedos Alegria', '55566677000122', '41988776655');

INSERT INTO seller (socialName, AbstName, CNPJ, CPF, location, contact) VALUES
('Loja da Maria', 'Moda Maria', NULL, '12345678910', 'SP', '11999998888'),
('TechHouse', NULL, '11122233000144', NULL, 'RJ', '21999997777'),
('MoveisTop', NULL, '22233344000155', NULL, 'MG', '31988886666'),
('DoceSabor', NULL, NULL, '98765432109', 'RS', '51988776655'),
('BrinqKids', 'BK', '33344455000166', NULL, 'PR', '41999995555');

INSERT INTO productSeller (idPseller, idPproduct, prodQuantity) VALUES
(1, 1, 50),
(2, 2, 30),
(5, 3, 70),
(3, 4, 25),
(4, 5, 90);

INSERT INTO productOrder (idPOproduct, idPOorder, poQuantity, poStatus) VALUES
(1, 1, 2, 'Disponível'),
(2, 2, 1, 'Disponível'),
(3, 3, 1, 'Disponível'),
(4, 4, 1, 'Sem estoque'),
(5, 5, 2, 'Disponível');

INSERT INTO storageLocation (idLproduct, idLstorage, location) VALUES
(1, 1, 'Galpão 1 - SP'),
(2, 2, 'Galpão 2 - RJ'),
(3, 3, 'Depósito Central - MG'),
(4, 4, 'Galpão 3 - PR'),
(5, 5, 'Galpão 4 - RS');

INSERT INTO productSupplier (idPsSupplier, idPsProduct, quantity) VALUES
(1, 2, 40),
(2, 1, 60),
(3, 4, 15),
(4, 5, 100),
(5, 3, 80);

