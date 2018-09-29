


insert into Cliente
values('20120618 10:34:09 AM','Arturo',812374465,'San Nicolas','akepirru-6113@yopmail.com')

insert into Cliente
values('20130513 11:20:19 AM','Luis',812334521,'San Pedro','celestino12376@hideweb.xyz')

insert into Cliente
values('20150218 09:34:09 AM','Pedro',843274654,'Santa Catarina','bedage@fathir.cf')

insert into Cliente
values('20120614 08:34:09 AM','Cesar',812351465,'San Nicolas','gdfghdfgh@polyswarms.com')

insert into Cliente
values('20130112 09:32:02 AM','Samir',812453245,'Escobedo','jghrjgf@bit2tube.com')

insert into Cliente
values('20130112 09:32:02 AM','Lola',82435654,'Monterrey','ghdfgs@bit2tube.com')

insert into Cliente
values('20130112 06:33:02 AM','Beto',833453452,'Santa Catarina','msdsdfsd@bit2tube.com')

insert into Cliente
values('20130112 04:12:02 AM','Lupe',83756745,'Escobedo','hjgfjt@bit2tube.com')

insert into Cliente
values('20130112 03:15:02 AM','Kiko',823424561,'Escobedo','mfghjtfgjh@bit2tube.com')

insert into Region
values('Metropolitana')

insert into Region
values('Noroeste')

insert into Region
values('Noreste')

insert into Region
values('Sur')

insert into Region
values('Centro Periferica')

insert into Estado
values('Cadereyta',1)

insert into Estado
values('Zaragosa',2)

insert into Estado
values('Zacatecas',3)

insert into Estado
values('Parras',4)

insert into Estado
values('Monterrey',5)

insert into Estado
values('Zacatecas',6)

insert into Estado
values('Parras',7)

insert into Estado
values('Monterrey',8)

insert into Envio_Aerio
values(12.32,'20120618 10:34:32 AM')

insert into Envio_Aerio
values(12.32,'20120618 10:34:22 AM')

insert into Envio_Aerio
values(20.32,'20120618 11:30:02 AM')

insert into Envio_Aerio
values(40.10,'20120608 08:24:19 AM')

insert into Envio_Aerio
values(20.10,'20130608 04:24:19 AM')

insert into Envio_Terrestre
values(50.12,'20120610 05:24:19 AM')

insert into Envio_Terrestre
values(50.12,'20120610 05:24:19 AM')

insert into Envio_Terrestre
values(50.12,'20120610 05:24:19 AM')

insert into Envio_Terrestre
values(50.12,'20120710 05:24:19 AM')

insert into Envio_Terrestre
values(32.13,'20120410 06:22:19 AM')

insert into Envio
values(1)

insert into Envio
values(2)

insert into Envio
values(3)

insert into Envio
values(4)

insert into Empleado
values('20120410 10:20:19 AM','qwert','gerente','Alberto',814654685)

insert into Empleado
values('20120413 08:25:05 AM','1234dqa','Ayudante General','Estroncio',814434524)

insert into Empleado
values('20120411 06:12:19 AM','dase1','Ayudante','Gilberto',814345321)

insert into Empleado
values('20120410 07:03:10 AM','asd123','Intendente','Miguel',814654685)

insert into Empleado
values('20100620 09:01:39 AM','asd123','Jefe','Adal',814423843)

insert into Proveedor
values('Heriberto',46546135,'Escobedo','peripir@bit2tube.com')

insert into Proveedor
values('Sergio',83453843,'San Nicolas','tilamo@eos2mail.com')

insert into Proveedor
values('Hector',85342443,'Tamaulipas','moyu@bit2tube.com')

insert into Proveedor
values('Laura',23423843,'Santa Catarina','cupuhi@polyswarms.com')

insert into Proveedor
values('Mario',52342343,'Apodaca','bemucawa@spindl-e.com')

insert into Proveedor
values('Erick',74623423,'Sinaloa','seniwi@spindl-e.com')

insert into [Producto_Almacen Stock]
values('20120410 06:22:19 AM',10)

insert into [Producto_Almacen Stock]
values('20120216 06:22:19 AM',15)

insert into [Producto_Almacen Stock]
values('20130610 07:22:19 AM',8)

insert into [Producto_Almacen Stock]
values('20150820 04:22:19 AM',5)

insert into [Producto_Almacen Stock]
values('20120410 06:22:19 AM',5)

insert into Almacen
values('San pedro',16546843)

insert into Almacen
values('San pedro',23423443)

insert into Almacen
values('Guadalupe',45645633)

insert into Almacen
values('Monterrey',335345434)

insert into Almacen
values('San nicolas',6457546745)


insert into Producto
values(14.52,'Chocolate','De fresa','Si')


UPDATE Cliente
SET Nombre = 'Johnson'
WHERE Id_Cliente = 1;

UPDATE Cliente
SET Nombre = 'Gerson'
WHERE Id_Cliente = 2;

UPDATE Cliente
SET Nombre = 'tania'
WHERE Id_Cliente = 3;

UPDATE Cliente
SET Nombre = 'Velia'
WHERE Id_Cliente = 4;

UPDATE Cliente
SET Nombre = 'Pablo'
WHERE Id_Cliente = 5;


DELETE FROM Cliente
WHERE Id_Cliente = 1;

DELETE FROM Proveedor
WHERE Id_Provedor= 2;

DELETE FROM Proveedor
WHERE Id_Provedor= 3;

DELETE FROM Estado
WHERE Codigo_Region= 1;

DELETE FROM Estado
WHERE Codigo_Region= 2;

