CREATE TABLE Transacao (idTransacao KEY PRIMARY KEY, dataTransacao DATE, idUniversidade FK REFERENCES Universidade (idUniversidade), idOrgaoSuperior FK REFERENCES OrgaoSup (idOrgao), tipoTransacao TEXT);
CREATE TABLE Universidade (idUniversidade KEY PRIMARY KEY ON CONFLICT REPLACE, NomeUniversidade TEXT);
CREATE TABLE Receitas (idTransacao FK REFERENCES Transacao (idTransacao), Categoria TEXT, Origem TEXT, Especie TEXT, Detalhamento TEXT, ValorPrevisto FLOAT, ValorArrecadado FLOAT);
CREATE TABLE Despesas (idTransacao FK REFERENCES Transacao (idTransacao), ValorEmpenhado FLOAT, ValorLiquidado FLOAT, ValorPago FLOAT, ValorRestosaPagarPagos FLOAT);
CREATE TABLE OrgaoSup (idOrgao KEY PRIMARY KEY ON CONFLICT REPLACE, Nome TEXT);
CREATE TABLE RankingShanghai (idUniversidade FK REFERENCES Universidade (idUniversidade), Classificacao INT);
