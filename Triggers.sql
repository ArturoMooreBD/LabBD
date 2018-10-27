create trigger Tr_instead_Insert_Pedido
  on pedido
  instead of insert
  as
   begin
   DECLARE @Producto int
   DECLARE @cantidad int 
   
   set @Producto = (select Codigo_Producto from inserted)
   set @cantidad = (select Cantidad from inserted)

   UPDATE Producto
   SET Stock = Stock - @cantidad
   where Id_Producto = @Producto
   end;

   insert into Pedido 
   Values('2011-07-24 09:22:19.000', 5,3,2,1,1)
  
  create trigger Tr_After_Update_Cliente
  on Cliente
  After update
  as
   begin
   select *
   from CLIENTE
   where id_cliente = (select id_cliente from inserted) 
     end;


create trigger Tr_After_Delete_Empleado
  on Empleado
  After delete
  as
   begin
   select *
   into #tempEmpleado
   from Empleado
   where Id_Empleado = (select Id_Empleado from inserted) 
   select *
   from Empleado
    end;

   
 