Use Ventas

select (C.Nombre +' '+ C.Apellido_Paterno+' '+C.Apellido_Materno) as Nombre_Completo
from Cliente as C

select (E.Nombre +' '+ E.Apellido_Paterno+' '+E.Apellido_Materno) as Nombre_Completo
from Empleado as E

select (P.Nombre +' '+P.Apellido_Paterno+' '+P.Apellido_Materno) as Nombre_Completo , 
		(Telefono) as Numero_Proveedor
from Proveedor AS P
 
select (P.Nombre +' '+P.Apellido_Paterno+' '+P.Apellido_Materno) as Nombre_Completo , 
		(P.Direccion) as Direccion
from Proveedor AS P

select (E.Nombre +' '+E.Apellido_Paterno+' '+E.Apellido_Materno) as Nombre_Completo , 
		(E.Cargo) as Funcion
from Empleado AS E



 
select p. * ,(a.Nombre +' '+a.Apellido_Paterno+' '+a.Apellido_Materno) as Nombre_Completo
from Producto as p 

inner join Proveedor a on p.Codigo_Proveedor= a.Id_Provedor


 
select p. * , (a.Nombre +' '+a.Apellido_Paterno+' '+a.Apellido_Materno) as Nombre_Completo
from Producto as p 
left join Proveedor a on p.Codigo_Proveedor= a.Id_Provedor

 
select p. * , (a.Nombre +' '+a.Apellido_Paterno+' '+a.Apellido_Materno) as Nombre_Completo 

from Producto as p 
right join Proveedor a on p.Codigo_Proveedor= a.Id_Provedor


select p. * ,  (a.Nombre +' '+a.Apellido_Paterno+' '+a.Apellido_Materno) as Nombre_Completo 

from Producto as p 
CROSS join Proveedor a 


select Count (P.Id_Producto) as Total_Productos
 From Producto as P 

select SUM (P.Stock) as TotalProductosEnInventario
 From Producto as P 

select (p.Nombre) as Nombre , count (P.Nombre) as Stock_Productos
 From Producto as P 

group by p.Nombre 
Order by COUNT(p.Nombre) asc


select (p.Nombre) as Nombre , count (P.Nombre) as Stock_Productos
 From Producto as P 

group by p.Nombre 
Order by COUNT(p.Nombre) asc

select (Tipo_envio) as Tipo_Envio , COUNT (Tipo_envio) as CantidadEnvios

From Envio 

Group by envio.Tipo_envio


select p.Nombre as NombreProducto, p.Precio as Precio,
			 COUNT(p.Nombre) AS  Productos_stock
from Producto as p 
where p.Precio > 11
group by p.Nombre , p.Precio
having p.Precio <= 13


 
select a.Nombre as NombreProveedor ,
			 COUNT(p.Id_Producto) AS  Productos_Entregados
from Producto as p 

right join Proveedor a on p.Codigo_Proveedor= a.Id_Provedor

group by a.Nombre
Order by COUNT(p.Id_Producto) ASC


select a.Nombre as Nombre_Cliente ,
			 COUNT(p.Id_Pedido) AS  Compras
from Pedido as p 

right  join Cliente a on p.Codigo_Cliente= a.Id_Cliente

group by a.Nombre

Order by COUNT(p.Id_Pedido) ASC


select a.Nombre as Nombre_Empleado ,
			 COUNT(p.Id_Pedido) AS  Ventas
from Pedido as p 

right  join Empleado a on p.Codigo_Empleado= a.Id_Empleado

group by a.Nombre

Order by COUNT(p.Id_Pedido) ASC



select a.Nombre as Nombre_Empleado ,
			 COUNT(p.Id_Pedido) AS  Ventas
into #tempEmpleados
from Pedido as p 

right  join Empleado a on p.Codigo_Empleado= a.Id_Empleado

group by a.Nombre

Order by COUNT(p.Id_Pedido) ASC



Drop table Empleado

insert into  empleado select *
from #tempEmpleados