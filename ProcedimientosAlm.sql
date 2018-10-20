USE Ventas

create procedure Procedimiento_Script
    @Parametro  int  ,
	@Parametro2 int
	
as 
begin 
DECLARE @Variable int
set @Variable = 8
	     if @Parametro > 10    			                                                
	Update Producto
	set Precio= @Variable              
	where Id_Producto = @Parametro2
end ; 

exec Procedimiento_Script @parametro = 11, @Parametro2 =  4 ;


Create procedure Procedimiento1
@parametro4 varchar(30)


as 
BEGIN

SELECT a.Nombre as Nombre_Empleado , A.Cargo AS Puesto ,
			 COUNT(p.Id_Pedido) AS  Ventas ,  (b.Nombre +'   ' + b.Apellido_Paterno +''+ b.Apellido_Materno) as Nombre_Cliente , (b.Direccion) as Direccion
FROM Pedido as p 

right join Empleado a on p.Codigo_Empleado= a.Id_Empleado	
left join Cliente b ON P.Codigo_Cliente = B.Id_Cliente


group by a.Nombre, a.Cargo , B.Nombre , b.Apellido_Paterno,b.Apellido_Materno , b.Direccion
having  Cargo = @parametro4
end;
exec Procedimiento1 @parametro4 = 'ayudante' ;



create procedure Procedimiento2
@parametro1 varchar (30)
as
begin
SELECT   (b.Nombre +'   ' + b.Apellido_Paterno +''+ b.Apellido_Materno) as Nombre_Cliente , (b.Direccion) as Direccion , C.Fecha_Envio AS Fecha_Entrega ,c.Tipo_envio

FROM Pedido as p 
	
right join Cliente b ON P.Codigo_Cliente = B.Id_Cliente
left join Envio c ON P.Codigo_envio = C.Id_envio
group by  B.Nombre , b.Apellido_Paterno,b.Apellido_Materno , b.Direccion,c.Fecha_Envio,c.Tipo_envio
having Tipo_envio = @parametro1
end;

exec Procedimiento2 @parametro1 ='terrestre' 



create procedure procedimiento3
@parametro1 int
as
begin
SELECT a.Nombre as Nombre_Empleado , A.Cargo AS Puesto ,
			 COUNT(p.Id_Pedido) AS  Ventas , c.Nombre as ProductoPedido , c.stock as ProductoVendidos, (b.Nombre +'   ' + b.Apellido_Paterno +''+ b.Apellido_Materno) as Nombre_Cliente , (b.Direccion) as Direccion
FROM Pedido as p 

right join Empleado a on p.Codigo_Empleado= a.Id_Empleado	
left join Cliente b ON P.Codigo_Cliente = B.Id_Cliente
 join Producto c on p.Codigo_Producto = c.Id_Producto
group by a.Nombre, a.Cargo , B.Nombre , b.Apellido_Paterno,b.Apellido_Materno , b.Direccion , c.Nombre, c.Stock
having c.Stock >= @parametro1
end;

exec procedimiento3 @parametro1 = 15;

create procedure procedimiento4
@parametro1 varchar(20)
as
begin
SELECT COUNT(p.Codigo_envio) AS  envios , c.Nombre as ProductoPedido , c.stock as ProductoVendidos, a.Fecha_Envio,a.Tipo_envio,(b.Nombre +'   ' + b.Apellido_Paterno +''+ b.Apellido_Materno) as Nombre_Cliente , (b.Direccion) as Direccion
FROM Pedido as p 

right join Envio a on p.Codigo_Empleado= a.Id_envio	
left join Cliente b ON P.Codigo_Cliente = B.Id_Cliente
 join Producto c on p.Codigo_Producto = c.Id_Producto
group by a.Fecha_Envio,a.Tipo_envio, B.Nombre , b.Apellido_Paterno,b.Apellido_Materno , b.Direccion , c.Nombre, c.Stock 
having c.Nombre = @parametro1
end;

exec procedimiento4 @parametro1 = 'chicle';



create procedure procedimiento5
@parametro1 int
as
begin


SELECT count (p.Codigo_Proveedor) AS  Productos_Registrados ,p.Nombre as Nombre_Producto,p.Precio as Precio_Unidad,p.Stock as Cantidad_Stock,(b.Nombre +'   ' + b.Apellido_Paterno +''+ b.Apellido_Materno) as Nombre_proveedor , (b.Direccion) as Direccion
FROM Producto as p 
right join Proveedor b ON P.Codigo_Proveedor = B.Id_Provedor
 
group by B.Nombre , b.Apellido_Paterno,b.Apellido_Materno , b.Direccion ,p.Nombre , p.Precio,p.Stock
having p.Precio = @parametro1
end;

exec procedimiento5 @parametro1 = 10;





create function mifuncion (@param1 int)

returns VARCHAR(30)
as 
begin	

return (select p.Nombre from Producto p where Id_Producto =  @param1) ;
end

select dbo.MiFuncion(10) 