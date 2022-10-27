Create database Hospital
use Hospital
Create table Paciente
(
   Id int identity(1,1),
   edad int not null,
   Nombre varchar(50) not null,
   Sexo Varchar(50),
   Provincia nvarchar(30),
   Canton nvarchar(30),
   Distrito nvarchar(50),
   telefono varchar(20),
   Seguro bit


)

Create table Estados
(

Estado varchar(50) not null,

)



SELECT SUM(edad) FROM Paciente WHERE edad < 20
SUM([DISTINCT] expresion)

SELECT SUM(edad) FROM Paciente where edad > 18
select * from [Paciente] where Id=1

insert into Estados values ('Activo'),('Inactivo')

insert into Paciente  (Nombre,Edad,Sexo,Provincia,Canton,Distrito,telelefono,seguro)values(@nombre,@edad,@sexo,@provincia,@canton,@distrito,@telelefono,@seguro)


create procedure Suma
@edad int

as
  begin
  SELECT SUM(edad) FROM Paciente where edad > 18

end 


create procedure Suma2
@edad int
suma int

as
  begin
  SELECT SUM(edad) FROM Paciente where edad > 18

  suma= SUM(edad)

end 