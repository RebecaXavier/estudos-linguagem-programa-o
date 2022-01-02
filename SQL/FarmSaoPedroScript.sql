create database FarmSaoPedro;

use FarmSaoPedro;

CREATE TABLE Funcionario (
    idFuncionario INTEGER NOT NULL,
    nomeFuncionario VARCHAR(45),
    telefoneFuncionario VARCHAR(13),
    PRIMARY KEY (idFuncionario)
);
CREATE TABLE Cliente (
    idCliente INTEGER NOT NULL,
    nomeCliente VARCHAR(45),
    CPFCliente VARCHAR(12),
    PRIMARY KEY (idCliente)
);
CREATE TABLE Marca (
    idMarca INTEGER NOT NULL,
    nomeMarca VARCHAR(30),
    PRIMARY KEY (idMarca)
);
CREATE TABLE Medicamento (
    idMedicamento INTEGER NOT NULL,
    nomeMedicamento VARCHAR(45),
    PRIMARY KEY (idMedicamento)
);
CREATE TABLE Categoria (
    idCategoria INTEGER NOT NULL,
    nomeCategoria VARCHAR(30),
    PRIMARY KEY (idCategoria)
);
CREATE TABLE Remedio (
    idRemedio INTEGER NOT NULL,
    tipoRemedio VARCHAR(15),
    precoRemedio DECIMAL(8 , 2 ),
    PRIMARY KEY (idRemedio)
);
   alter table Remedio add constraint idMarcaRemedio foreign key (idMarca) references Marca (idMarca);
   alter table Remedio add constraint idMedicamentoRemedio foreign key (idMedicamento) references Medicamento (idMedicamento);
   alter table Remedio add constraint idCategoriaRemedio foreign key (idCategoria) references Categoria (idCategoria);
CREATE TABLE NotaFiscalFarm (
    idNotaFiscalFarm INTEGER NOT NULL,
    QuantidadeFarm INTEGER(4),
    DataNotaFarm DATETIME,
    PagamentoNotaFarm VARCHAR(10),
    PRIMARY KEY (idNotaFiscalFarm)
);
   alter table NotaFiscalFarm add constraint idClienteFarm foreign key (idCliente) references Cliente (idCliente);
   alter table NotaFiscalFarm add constraint idRemedioFarm foreign key (idRemedio) references Remedio (idRemedio);
   alter table NotaFiscalFarm add constraint idFuncionarioFarm foreign key (idFuncionario) references Funcionario (idFuncionario);
   insert into Funcionario (idFuncionario, nomeFuncionario, telefoneFuncionario) values (7, "João Souza", 71999234017);
   insert into Cliente (idCliente, nomeCliente, CPFCliente) values (6, "Débora Santos", 12345678901);
   insert into Marca (idMarca, nomeMarca) values (1, "Advil");
   insert into Medicamento (idMedicamento, nomeMedicamento) values (3, "Ibuprofeno");
   insert into Categoria (idCategoria, nomeCategoria) values (2, "Analgésico");
   insert into Remedio (idRemedio, tipoRemedio, precoRemedio, idMarcaRemedio, idMedicamentoRemedio, idCategoriaRemedio) values (1, ´"Marca", 13, 1,3, 2);
   insert into NotaFiscalFarm (idNotaFiscalFarm,QuantidadeFarm, DataNotaFarm, PagamentoNotaFarm) values (6, 2, "%d/%m/%y", "dinheiro");
   insert into NotaFiscalFarm (idClienteFarm, idRemedioFarm, idFuncionarioFarm) values (6, 1, 7);
   
   
   
   
   
   
   
   
   
   
   
   
   
