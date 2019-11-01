use bar 

create view calleColonia as
	select c.nombreCalle,co.nombreColonia from calle c
		left join colonia co
		on co.colonia_id=c.colonia_id;
go
create view  coloniaMunicipio as
select c.nombreColonia,m.nombre as nombreMunicipio from colonia c
	left join municipios m
	on m.id=c.municipio_id;

create view municipiosEstados as
select m.nombre,e.estado from municipios m
	left join estados e
	on m.estado_id=e.id;

create view empleadoPuesto as
select e.nombreCompleto,p.decripcion from empleado e
	left join puesto p
	on p.puesto_id=e.puesto_id;

create view empleadoSucursal as
select e.nombreCompleto,s.sucursal_id from empleado e
	left join sucursal s
	on s.sucursal_id=e.sucursal_id


create view domicilios as
select cme.calle_id,cme.nombreCalle,cme.nombreColonia,cme.nombreMunicipio,e.estado from estados e
		right join (select c.calle_id,c.colonia_id,c.nombreCalle,cm.nombreColonia,cm.nombreMunicipio,cm.estado_id from calle c
					left join 
							(select c.colonia_id,c.nombreColonia,m.nombre as nombreMunicipio,m.estado_id from colonia c
							left join municipios m
							on m.id=c.municipio_id)
					as cm
					on c.colonia_id=cm.colonia_id)
		as cme
		on cme.estado_id=e.id;
create view empleadoDomicilio as
select e.nombreCompleto,dir.nombreCalle,e.numero,dir.nombreColonia,dir.nombreMunicipio,dir.estado from empleado e
	inner join domicilios as dir
on dir.calle_id=e.calle_id;

create view productoExistencia as
select p.nombre,a.sucursal_id,a.productoExistencia from almacenProducto a
	left join productos p
on p.producto_id=a.producto_id;

select * from calleColonia
select * from coloniaMunicipio
select * from domicilios
select * from empleadoDomicilio
select * from empleadoPuesto
select * from empleadoSucursal
select * from municipiosEstados
select * from productoExistencia



with cteAlmacen  as(
select sucursal_id,producto_id,productoExistencia 
from almacenProducto
)

select * from cteAlmacen

select * into empleadosBackup from empleado
select * from empleadosBackup


