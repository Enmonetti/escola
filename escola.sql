
CREATE DATABASE escola;
USE escola;
CREATE TABLE curso (
    codcurso CHAR(2) PRIMARY KEY,
    nome VARCHAR(50),
    mensalidade DECIMAL(10,2)
);
CREATE TABLE aluno (
    ra CHAR(9) PRIMARY KEY,
    rg CHAR(9),
    nome CHAR(30),
    codcurso CHAR(2), 
    FOREIGN KEY (codcurso) REFERENCES curso(codcurso)
);
CREATE TABLE disciplina (
    coddisc VARCHAR(5) PRIMARY KEY,
    nomedis CHAR(30),	
    nrocreditos INT,
    codcurso CHAR(2),
    FOREIGN KEY (codcurso) REFERENCES curso(codcurso)
);
CREATE TABLE boletim (
    ra CHAR(9),
    coddisc VARCHAR(5),
    nota DECIMAL(4,2),
    PRIMARY KEY (ra, coddisc),
    FOREIGN KEY (ra) REFERENCES aluno(ra),
    FOREIGN KEY (coddisc) REFERENCES disciplina(coddisc)
);
INSERT INTO curso VALUES ('01', 'Engenharia', 1200.00);
INSERT INTO curso VALUES ('02', 'Direito', 1100.00);
INSERT INTO curso VALUES ('03', 'Administração', 950.00);
INSERT INTO aluno VALUES ('A00000001', '123456789', 'João Silva', '01');
INSERT INTO aluno VALUES ('A00000002', '987654321', 'Maria Souza', '02');
INSERT INTO aluno VALUES ('A00000003', '456789123', 'Carlos Lima', '03');
INSERT INTO disciplina VALUES ('D01', 'Matemática', 4, '01');
INSERT INTO disciplina VALUES ('D02', 'Física', 3, '01');
INSERT INTO disciplina VALUES ('D03', 'Direito Penal', 5, '02');
INSERT INTO disciplina VALUES ('D04', 'Gestão de Pessoas', 3, '03');
INSERT INTO boletim VALUES ('A00000001', 'D01', 8.5);
INSERT INTO boletim VALUES ('A00000001', 'D02', 7.0);
INSERT INTO boletim VALUES ('A00000002', 'D03', 9.0);
INSERT INTO boletim VALUES ('A00000003', 'D04', 6.5);
