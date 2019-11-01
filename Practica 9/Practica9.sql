use bar

create table log(
	fecha datetime,
	descripcion varchar(50)
)

select * from log
select * from tipoPago

create trigger tr_insert_yipoPago on tipoPago
	for insert 
	as 
	begin
	insert into log values(getdate(),'Se inserto un registro en la tabla tipoPago');
	end

	
create trigger tr_insert_puesto on puesto
	for insert 
	as 
	begin
	insert into log values(getdate(),'Se inserto un registro en la tabla puesto');
	end

insert into tipoPago values(4,'cheque')