use GD2C2019

drop table	dbo.funcionalidadxrol,
			dbo.usuario,
			dbo.funcionalidad,
			dbo.rol

create table usuario(
	username varchar(50) PRIMARY KEY NOT NULL,
	pass varchar(500) NOT NULL,
	intentos_fallidos_login int default 0)

create table funcionalidad(
	id int identity not null primary key,
	descripcion varchar(50))

create table rol(
	rol_id int identity not null primary key,
	rol_nombre varchar(100))

create table funcionalidadxrol(
	rol_id int not null REFERENCES rol,
	funcionalidad_id int not null REFERENCES funcionalidad)

insert into usuario (username, pass)
	values ('admin','e6b87050bfcb8143fcb8db0170a4dc9ed00d904ddd3e2a4ad1b1e8dc0fdc9be7')

insert into funcionalidad (descripcion)
	values ('ABM Cliente'),('ABM Proveedor'),('Carga de credito'),
			('Alta de oferta'),('Compra de oferta'),('Baja de oferta'),
			('Facturacion'),('Estadisticas')