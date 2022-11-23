create database Examen2

create table Cajeros
(
  CodigoC int identity primary key, 
  Nombre nvarchar(20) not null,
  Apellido nvarchar(20) not null
)

create table Productos
(
  CodigoP int identity primary key, 
  Nombre varchar(20) not null, 
  Precio float
)

create table Registradoras
(
  CodigoR int identity primary key,
  Piso int 
)

create table Venta
(
  codigo_venta int identity primary key, -- f
  CajeroV int,
  ProductoV int,
  RegistradoraV int,
  Fecha date constraint Def_fecha default Getdate(), -- e
  constraint FK_Cajero foreign key(CajeroV) references Cajeros(CodigoC),
  constraint FK_Productos foreign key(ProductoV) references Productos(CodigoP),
  constraint FK_Registradoras foreign key(RegistradoraV) references Registradoras(CodigoR)
)


-- g.
insert into Cajeros values ('Kenny', 'Aragón'),
                           ('María', 'Guerrero')

insert into Productos values ('Arroz 2Kg', 1500),
                             ('Atún con vegetales', 750),
							 ('Lomo 3Kg', 30000)

insert into Registradoras values (1),
                                 (1)

--h
update Productos set Nombre = 'Lomo 1.5Kg', Precio = 15000 where [Nombre] = 'Lomo 3Kg'

-- i 
select Venta.CajeroV, Venta.ProductoV, Venta.RegistradoraV, Cajeros.Nombre, Cajeros.Apellido, Productos.Nombre, Productos.Precio, Registradoras.Piso from (((Venta 
inner join Cajeros on Venta.CajeroV = Cajeros.CodigoC)
inner join Productos on Venta.ProductoV = Productos.CodigoP)
inner join Registradoras on Venta.RegistradoraV = Registradoras.CodigoR);


