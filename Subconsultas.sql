
SELECT * FROM( SELECT Nombre, COUNT(Nombre) as [Cantidad]
	FROM Producto  
	GROUP BY Nombre) as A
	WHERE A.Cantidad > 1 

 SELECT * FROM( SELECT Nombre, COUNT(Nombre) as [Cantidad]
	FROM Producto WHERE Precio > 7 
	GROUP BY Nombre HAVING Nombre = 'choocolate') as A
	WHERE A.Cantidad >= 1

WITH ProductosDisponible as (
		SELECT Nombre , COUNT (Nombre) as [Cantidad]
		FROM Producto
		WHERE stock > 15
		GROUP BY Nombre
						) 
						
SELECT * FROM ProductosDisponible
WHERE ProductosDisponible.Cantidad > 1

create view Ventas_Realizadas

as
SELECT a.Nombre as Nombre_Empleado , A.Cargo AS Puesto ,
			 COUNT(p.Id_Pedido) AS  Ventas ,  (b.Nombre +'   ' + b.Apellido_Paterno +''+ b.Apellido_Materno) as Nombre_Cliente , (b.Direccion) as Direccion
FROM Pedido as p 

right join Empleado a on p.Codigo_Empleado= a.Id_Empleado	
left join Cliente b ON P.Codigo_Cliente = B.Id_Cliente
group by a.Nombre, a.Cargo , B.Nombre , b.Apellido_Paterno,b.Apellido_Materno , b.Direccion



create view Envios_Ventas

as
SELECT   (b.Nombre +'   ' + b.Apellido_Paterno +''+ b.Apellido_Materno) as Nombre_Cliente , (b.Direccion) as Direccion , C.Fecha_Envio AS Fecha_Entrega ,c.Tipo_envio

FROM Pedido as p 
	
right join Cliente b ON P.Codigo_Cliente = B.Id_Cliente
left join Envio c ON P.Codigo_envio = C.Id_envio
group by  B.Nombre , b.Apellido_Paterno,b.Apellido_Materno , b.Direccion,c.Fecha_Envio,c.Tipo_envio


create view Productos_Vendidos
as
SELECT a.Nombre as Nombre_Empleado , A.Cargo AS Puesto ,
			 COUNT(p.Id_Pedido) AS  Ventas , c.Nombre as ProductoPedido , c.stock as ProductoVendidos, (b.Nombre +'   ' + b.Apellido_Paterno +''+ b.Apellido_Materno) as Nombre_Cliente , (b.Direccion) as Direccion
FROM Pedido as p 

right join Empleado a on p.Codigo_Empleado= a.Id_Empleado	
left join Cliente b ON P.Codigo_Cliente = B.Id_Cliente
 join Producto c on p.Codigo_Producto = c.Id_Producto
group by a.Nombre, a.Cargo , B.Nombre , b.Apellido_Paterno,b.Apellido_Materno , b.Direccion , c.Nombre, c.Stock

Create view  Cantidad_Productos_Vendidos
as
SELECT COUNT(p.Codigo_envio) AS  envios , c.Nombre as ProductoPedido , c.stock as ProductoVendidos, a.Fecha_Envio,a.Tipo_envio,(b.Nombre +'   ' + b.Apellido_Paterno +''+ b.Apellido_Materno) as Nombre_Cliente , (b.Direccion) as Direccion
FROM Pedido as p 

right join Envio a on p.Codigo_Empleado= a.Id_envio	
left join Cliente b ON P.Codigo_Cliente = B.Id_Cliente
 join Producto c on p.Codigo_Producto = c.Id_Producto
group by a.Fecha_Envio,a.Tipo_envio, B.Nombre , b.Apellido_Paterno,b.Apellido_Materno , b.Direccion , c.Nombre, c.Stock 

Create view Productos_Stock
as

SELECT count (p.Codigo_Proveedor) AS  Productos_Registrados ,p.Nombre as Nombre_Producto,p.Precio as Precio_Unidad,p.Stock as Cantidad_Stock,(b.Nombre +'   ' + b.Apellido_Paterno +''+ b.Apellido_Materno) as Nombre_proveedor , (b.Direccion) as Direccion
FROM Producto as p 
right join Proveedor b ON P.Codigo_Proveedor = B.Id_Provedor
 
group by B.Nombre , b.Apellido_Paterno,b.Apellido_Materno , b.Direccion ,p.Nombre , p.Precio,p.Stock



DECLARE @ConsultaSQL NVARCHAR(500)
DECLARE @Tabla NVARCHAR(25)

SET @Tabla = 'Empleado'
SET @ConsultaSQL = 'SELECT * FROM ' + @Tabla

EXEC(@ConsultaSQL)
