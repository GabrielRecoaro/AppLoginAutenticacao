DROP DATABASE IF EXISTS dbAppAutorizacao;
CREATE DATABASE IF NOT EXISTS dbAppAutorizacao;
USE dbAppAutorizacao;





CREATE TABLE tbUsuario(
    UsuarioID INT PRIMARY KEY AUTO_INCREMENT,
    UsuNome VARCHAR(100) NOT NULL,
    Login VARCHAR(50) NOT NULL,
    Senha VARCHAR(100) NOT NULL
);





SELECT * FROM tbUsuario;
delimiter $$
create procedure spInsertUsuario(vUsuNome varchar(100) ,Login varchar (50), Senha varchar(100))
begin
insert into tbUsuario(UsuNome,Login,Senha)
    values(vUsuNome,Login,Senha);
End $$





delimiter $$
create procedure spSelectLogin(vLogin varchar(50))
begin
select Login from tbUsuario where Login = vLogin;
End $$





delimiter $$
create procedure spSelectUsuario(vLogin varchar(50))
begin
select * from tbUsuario where Login = vLogin;
End $$





delimiter $$
create procedure spUpdateSenha(vLogin varchar(50),vSenha varchar(100))
begin
update tbUsuario set Senha = vSenha where Login = vLogin;
End $$



select * from tbUsuario;