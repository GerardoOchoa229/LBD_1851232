use bar 
select c.nombreCalle,co.nombreColonia from calle c
	left join colonia co
	on co.colonia_id=c.colonia_id
order by c.nombreCalle

select c.nombreColonia,m.nombre as nombreMunicipio from colonia c
	left join municipios m
	on m.id=c.municipio_id
order by c.nombreColonia

select m.nombre,e.estado from municipios m
	left join estados e
	on m.estado_id=e.id
order by m.nombre asc


select e.nombreCompleto,p.decripcion from empleado e
	left join puesto p
	on p.puesto_id=e.puesto_id
order by p.decripcion asc

select e.nombreCompleto,s.sucursal_id from empleado e
	left join sucursal s
	on s.sucursal_id=e.sucursal_id


select cme.calle_id,cme.nombreCalle,cme.nombreColonia,cme.nombreMunicipio,e.estado from estados e
		right join (select c.calle_id,c.colonia_id,c.nombreCalle,cm.nombreColonia,cm.nombreMunicipio,cm.estado_id from calle c
					left join 
							(select c.colonia_id,c.nombreColonia,m.nombre as nombreMunicipio,m.estado_id from colonia c
							left join municipios m
							on m.id=c.municipio_id)
					as cm
					on c.colonia_id=cm.colonia_id)
		as cme
		on cme.estado_id=e.id
order by nombreCalle

select e.nombreCompleto,dir.nombreCalle,e.numero,dir.nombreColonia,dir.nombreMunicipio,dir.estado from empleado e
	inner join (select cme.calle_id,cme.nombreCalle,cme.nombreColonia,cme.nombreMunicipio,e.estado from estados e
		right join (select c.calle_id,c.colonia_id,c.nombreCalle,cm.nombreColonia,cm.nombreMunicipio,cm.estado_id from calle c
					left join 
							(select c.colonia_id,c.nombreColonia,m.nombre as nombreMunicipio,m.estado_id from colonia c
							left join municipios m
							on m.id=c.municipio_id)
					as cm
					on c.colonia_id=cm.colonia_id)
		as cme
		on cme.estado_id=e.id) as dir
on dir.calle_id=e.calle_id


select p.nombre,a.sucursal_id,a.productoExistencia from almacenProducto a
	left join productos p
on p.producto_id=a.producto_id
order by a.sucursal_id

select p.precioTotal from productos p
group by p.precioTotal
having p.precioTotal<600

select p.precioTotal from productos p
group by p.precioTotal
having p.precioTotal<500

select p.precioTotal from productos p
group by p.precioTotal
having p.precioTotal<400

select p.precioTotal from productos p
group by p.precioTotal
having p.precioTotal<300

select p.precioTotal from productos p
group by p.precioTotal
having p.precioTotal<200

select precioTotal from productos 
group by precioTotal
having precioTotal<100

select p.nombre,pt.precioTotal from productos p
	right join(select precioTotal from productos 
group by precioTotal
having precioTotal<600) as pt
	on pt.precioTotal=p.precioTotal

select p.nombre,pt.precioTotal from productos p
	right join(select precioTotal from productos 
group by precioTotal
having precioTotal<500) as pt
	on pt.precioTotal=p.precioTotal

select p.nombre,pt.precioTotal from productos p
	right join(select precioTotal from productos 
group by precioTotal
having precioTotal<400) as pt
	on pt.precioTotal=p.precioTotal

select p.nombre,pt.precioTotal from productos p
	right join(select precioTotal from productos 
group by precioTotal
having precioTotal<300) as pt
	on pt.precioTotal=p.precioTotal

select p.nombre,pt.precioTotal from productos p
	right join(select precioTotal from productos 
group by precioTotal
having precioTotal<200) as pt
	on pt.precioTotal=p.precioTotal

select p.nombre,pt.precioTotal from productos p
	right join(select precioTotal from productos 
group by precioTotal
having precioTotal<100) as pt
	on pt.precioTotal=p.precioTotal

