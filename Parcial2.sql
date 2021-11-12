
create database Clinica
use Clinica




Create Table Dueños
(
NumerodeIdentidad INT UNIQUE IDENTITY(1,1),
Nombre Varchar (20),
Apellido Varchar (21),
Direccion Varchar(50),
Sexo Varchar (23),
Departamento Varchar (24),
CodigoPostal INT,
Municipio Varchar (25),
Numerodetelefono INT ,
);
select *from Dueños
insert into Dueños (Nombre,Apellido, Direccion, Departamento, Municipio, CodigoPostal)
values('Marvin','Rivas', 'Reubicacion', 'Chalatenango', 'San bartolo',144)
insert into Dueños (Nombre,Apellido, Direccion, Departamento, Municipio, CodigoPostal)
values('Mario','Rivas', 'Azacualpa', 'Chalatenango','Azcualpa',144)
insert into Dueños (Nombre,Apellido, Direccion, Departamento, Municipio, CodigoPostal )
values('Jonathan','Armando', 'Azacualpa', 'Chalatenango','Azacualpa',144)
insert into Dueños (Nombre,Apellido, Direccion, Departamento, Municipio, CodigoPostal )
values('Elias','Reina', 'San Rafael', 'Chalatenango','San Rafael',144)
insert into Dueños (Nombre,Apellido, Direccion, Departamento, Municipio, CodigoPostal )
values('Carlos','Martinez', 'Ojos de agua', 'Chalatenango','San Rafael',144)
insert into Dueños (Nombre,Apellido, Direccion, Departamento, Municipio, CodigoPostal )
values('Jordy','Cortez', 'Nueva', 'Chalatenango','Nueva',144)
insert into Dueños (Nombre,Apellido, Direccion, Departamento, Municipio, CodigoPostal )
values('Stefany','Ardon', 'El paraiso', 'Chalatenango','El paraiso',144)
insert into Dueños (Nombre,Apellido, Direccion, Departamento, Municipio, CodigoPostal )
values('Ariel','ALas', 'Guarjila', 'Chalatenango','Guarjila',144)
insert into Dueños (Nombre,Apellido, Direccion, Departamento, Municipio, CodigoPostal )
values('Joel','Rios', 'Santa Rita', 'Chalatenango','Santa Rita',144)
insert into Dueños (Nombre,Apellido, Direccion, Departamento, Municipio, CodigoPostal )
values('Julia','Ramirez', 'Aguilares', 'Chalatenango','Aguilares', 144)

create table contacto(
id_Contacto int primary key identity(1,1) not null,
Numerodetelefono int foreign key references Dueños(NumerodeIdentidad)
);
insert into contacto ( Numerodetelefono)
values (97464533636);
insert into contacto ( Numerodetelefono)
values (8766556566) ;

Create table Mascota(
id_Mascota int PRIMARY KEY identity(1,1) Not null,
nombre Varchar(50) not null,
raza Varchar(25),
peso Varchar(30) not null,
tipoMascota Varchar(50),
);

drop table Mascota

insert into Mascota(nombre, raza, peso, tipoMascota)
values('Firulais','Zahuezo','30KG','Perro');
insert into Mascota(nombre, raza, peso, tipoMascota)
values('Amanda','Angora','20KG','gato');
insert into Mascota(nombre, raza, peso, tipoMascota)
values('Campeon','Pitbull','25KG','Perro');
insert into Mascota(nombre, raza, peso, tipoMascota)
values('Terry','Pastor Aleman','30KG','Perro');
insert into Mascota(nombre, raza, peso, tipoMascota)
values('Escooby Doo','Grandanes','32KG','Perro');
insert into Mascota(nombre, raza, peso, tipoMascota)
values('Maritza','Australiano','3KG','Perico(Ave)');
insert into Mascota(nombre, raza, peso, tipoMascota)
values('Camilo','Mini Lop','8KG','Conejo');
insert into Mascota(nombre, raza, peso, tipoMascota)
values('Minotauro','Chino','1KG','Hamster');
insert into Mascota(nombre, raza, peso, tipoMascota)
values('Estrella','Persa','10KG','Gato');
insert into Mascota(nombre, raza, peso, tipoMascota)
values('Bambi','Chihuahua','8KG','Perro');

select* from Mascota

select *from contacto
Create table Sexo (
Id_Sexo int primary key identity(1,1),
Genero int foreign key(Genero) references Dueños(NumerodeIdentidad),
);
insert into  Sexo(Genero) values (1)




select *from Dueños



Create table Ingreso
(
MotivodeIngreso Varchar (33),
Fecha_horaDeIngreso datetime default getdate ()not null,
Observacion Varchar(50) not null,
);
insert into Ingreso (MotivodeIngreso, Observacion) values('Fractura ', 'Necesita operacion ')
insert into Ingreso (MotivodeIngreso, Observacion) values('Mala alimentacion', 'Necesita tratamiento ')
insert into Ingreso (MotivodeIngreso, Observacion) values('Parasitos ', 'Necesita antidesparasitantes ')
insert into Ingreso (MotivodeIngreso, Observacion) values('Fractura ', ' Necesita operacion')
insert into Ingreso (MotivodeIngreso, Observacion) values('Desnutricion ', 'Necesita tratamiento ')
insert into Ingreso (MotivodeIngreso, Observacion) values('Parto', 'Necesita operacion ')
insert into Ingreso (MotivodeIngreso, Observacion) values('Fractura ', 'Necesita operacion ')
insert into Ingreso (MotivodeIngreso, Observacion) values('Atropellado ', 'Necesita reabilitacion')
insert into Ingreso (MotivodeIngreso, Observacion) values('Envenenado ', 'Necesita tratamiento ')
insert into Ingreso (MotivodeIngreso, Observacion) values('Fractura ', 'Necesita operacion ')
insert into Ingreso (MotivodeIngreso, Observacion) values('Parasitos ', 'Necesita tratamiento ')
insert into Ingreso (MotivodeIngreso, Observacion) values('Tumor ', 'Necesita operacion ')
insert into Ingreso (MotivodeIngreso, Observacion) values('Herida ', 'Necesita operacion ')
insert into Ingreso (MotivodeIngreso, Observacion) values('Fractura ', 'Necesita operacion ')
select *from Ingreso

Create table Veterinario
(
Codigodeidentificacion int  PRIMARY KEY identity (1,1),
Nombre varchar (34),
Apellido Varchar(35),
Cargo varchar(36),
)
drop table Veterinario

 select *from Veterinario
insert into Veterinario (Nombre,Apellido,Cargo) values ('Joel','Molina' ,'Operaciones ')
insert into Veterinario (Nombre,Apellido,Cargo) values ('Marvin','Rivas' ,'Tratamientos ')
insert into Veterinario (Nombre,Apellido,Cargo) values ('Joel','Martinez' ,'Operaciones ')
insert into Veterinario (Nombre,Apellido,Cargo) values ('Jordy','Cortez' ,'Desintoxicacion ')

