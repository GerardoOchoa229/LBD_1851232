USE [master]
GO
/****** Object:  Database [bar]    Script Date: 31/10/2019 08:58:42 p. m. ******/
CREATE DATABASE [bar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bar', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\bar.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bar_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\bar_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [bar] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bar] SET ARITHABORT OFF 
GO
ALTER DATABASE [bar] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bar] SET  ENABLE_BROKER 
GO
ALTER DATABASE [bar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bar] SET RECOVERY FULL 
GO
ALTER DATABASE [bar] SET  MULTI_USER 
GO
ALTER DATABASE [bar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bar] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bar] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'bar', N'ON'
GO
ALTER DATABASE [bar] SET QUERY_STORE = OFF
GO
USE [bar]
GO
/****** Object:  Table [dbo].[colonia]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[colonia](
	[colonia_id] [int] NOT NULL,
	[codigoPostal] [int] NOT NULL,
	[nombreColonia] [varchar](50) NOT NULL,
	[municipio_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[colonia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[calle]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[calle](
	[calle_id] [int] NOT NULL,
	[nombreCalle] [varchar](50) NOT NULL,
	[colonia_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[calle_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[calleColonia]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[calleColonia] as
	select c.nombreCalle,co.nombreColonia from calle c
		left join colonia co
		on co.colonia_id=c.colonia_id;
GO
/****** Object:  Table [dbo].[municipios]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[municipios](
	[id] [int] NOT NULL,
	[estado_id] [int] NULL,
	[clave] [varchar](3) NULL,
	[nombre] [varchar](100) NOT NULL,
	[activo] [tinyint] NOT NULL,
 CONSTRAINT [PK_municipios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[coloniaMunicipio]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view  [dbo].[coloniaMunicipio] as
select c.nombreColonia,m.nombre as nombreMunicipio from colonia c
	left join municipios m
	on m.id=c.municipio_id;
GO
/****** Object:  Table [dbo].[estados]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estados](
	[id] [int] NOT NULL,
	[estado] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[municipiosEstados]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[municipiosEstados] as
select m.nombre,e.estado from municipios m
	left join estados e
	on m.estado_id=e.id;
GO
/****** Object:  Table [dbo].[puesto]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[puesto](
	[puesto_id] [int] NOT NULL,
	[decripcion] [varchar](50) NOT NULL,
	[sueldo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[puesto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[empleado_id] [int] NOT NULL,
	[nombreCompleto] [varchar](100) NOT NULL,
	[puesto_id] [int] NOT NULL,
	[calle_id] [int] NOT NULL,
	[numero] [int] NOT NULL,
	[municipio_id] [int] NOT NULL,
	[estado_id] [int] NOT NULL,
	[colonia_id] [int] NOT NULL,
	[sucursal_id] [int] NOT NULL,
	[nacimiento] [date] NOT NULL,
	[telefono] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[empleadoPuesto]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[empleadoPuesto] as
select e.nombreCompleto,p.decripcion from empleado e
	left join puesto p
	on p.puesto_id=e.puesto_id;
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursal](
	[sucursal_id] [int] NOT NULL,
	[calle_id] [int] NOT NULL,
	[numero] [int] NOT NULL,
	[colonia_id] [int] NOT NULL,
	[municipio_id] [int] NOT NULL,
	[estado_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sucursal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[empleadoSucursal]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[empleadoSucursal] as
select e.nombreCompleto,s.sucursal_id from empleado e
	left join sucursal s
	on s.sucursal_id=e.sucursal_id
GO
/****** Object:  View [dbo].[domicilios]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[domicilios] as
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
GO
/****** Object:  View [dbo].[empleadoDomicilio]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[empleadoDomicilio] as
select e.nombreCompleto,dir.nombreCalle,e.numero,dir.nombreColonia,dir.nombreMunicipio,dir.estado from empleado e
	inner join domicilios as dir
on dir.calle_id=e.calle_id;
GO
/****** Object:  Table [dbo].[productos]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[producto_id] [int] NOT NULL,
	[nombre] [varchar](25) NOT NULL,
	[precio] [int] NOT NULL,
	[precioTotal]  AS ([precio]*(1.16)),
PRIMARY KEY CLUSTERED 
(
	[producto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_Producto] UNIQUE NONCLUSTERED 
(
	[producto_id] ASC,
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[almacenProducto]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[almacenProducto](
	[almacenProducto_id] [int] NOT NULL,
	[sucursal_id] [int] NOT NULL,
	[producto_id] [int] NOT NULL,
	[productoExistencia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[almacenProducto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[productoExistencia]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[productoExistencia] as
select p.nombre,a.sucursal_id,a.productoExistencia from almacenProducto a
	left join productos p
on p.producto_id=a.producto_id;
GO
/****** Object:  Table [dbo].[empleadosBackup]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleadosBackup](
	[empleado_id] [int] NOT NULL,
	[nombreCompleto] [varchar](100) NOT NULL,
	[puesto_id] [int] NOT NULL,
	[calle_id] [int] NOT NULL,
	[numero] [int] NOT NULL,
	[municipio_id] [int] NOT NULL,
	[estado_id] [int] NOT NULL,
	[colonia_id] [int] NOT NULL,
	[sucursal_id] [int] NOT NULL,
	[nacimiento] [date] NOT NULL,
	[telefono] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordenCompra]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordenCompra](
	[ordenCompra_id] [int] NOT NULL,
	[ticket_id] [int] NOT NULL,
	[producto_id] [int] NOT NULL,
	[almacenProducto_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ordenCompra_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticketDetalle]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticketDetalle](
	[ticket_id] [int] NOT NULL,
	[producto_id] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[detalle_id] [int] NOT NULL,
	[precio] [money] NOT NULL,
	[precioTotal]  AS ([cantidad]*[precio]),
PRIMARY KEY CLUSTERED 
(
	[detalle_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticketEncabezado]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticketEncabezado](
	[ticket_id] [int] NOT NULL,
	[empleado_id] [int] NOT NULL,
	[fechaCompra] [date] NOT NULL,
	[tipoPago_id] [int] NOT NULL,
	[sucursal_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ticket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoPago]    Script Date: 31/10/2019 08:58:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoPago](
	[tipoPago_id] [int] NOT NULL,
	[decripcion] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tipoPago_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indxNombreEmpleado]    Script Date: 31/10/2019 08:58:43 p. m. ******/
CREATE NONCLUSTERED INDEX [indxNombreEmpleado] ON [dbo].[empleado]
(
	[nombreCompleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indxProducto]    Script Date: 31/10/2019 08:58:43 p. m. ******/
CREATE NONCLUSTERED INDEX [indxProducto] ON [dbo].[productos]
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[municipios] ADD  DEFAULT ('1') FOR [activo]
GO
ALTER TABLE [dbo].[productos] ADD  CONSTRAINT [Dft_precio]  DEFAULT ((0)) FOR [precio]
GO
ALTER TABLE [dbo].[puesto] ADD  CONSTRAINT [Dft_sueldo]  DEFAULT ((0)) FOR [sueldo]
GO
ALTER TABLE [dbo].[almacenProducto]  WITH CHECK ADD FOREIGN KEY([producto_id])
REFERENCES [dbo].[productos] ([producto_id])
GO
ALTER TABLE [dbo].[almacenProducto]  WITH CHECK ADD FOREIGN KEY([producto_id])
REFERENCES [dbo].[productos] ([producto_id])
GO
ALTER TABLE [dbo].[almacenProducto]  WITH CHECK ADD FOREIGN KEY([sucursal_id])
REFERENCES [dbo].[sucursal] ([sucursal_id])
GO
ALTER TABLE [dbo].[almacenProducto]  WITH CHECK ADD FOREIGN KEY([sucursal_id])
REFERENCES [dbo].[sucursal] ([sucursal_id])
GO
ALTER TABLE [dbo].[calle]  WITH CHECK ADD  CONSTRAINT [FK_MunicipioCalle] FOREIGN KEY([colonia_id])
REFERENCES [dbo].[municipios] ([id])
GO
ALTER TABLE [dbo].[calle] CHECK CONSTRAINT [FK_MunicipioCalle]
GO
ALTER TABLE [dbo].[colonia]  WITH CHECK ADD  CONSTRAINT [FK_ColoniaMunicipio] FOREIGN KEY([municipio_id])
REFERENCES [dbo].[municipios] ([id])
GO
ALTER TABLE [dbo].[colonia] CHECK CONSTRAINT [FK_ColoniaMunicipio]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([calle_id])
REFERENCES [dbo].[calle] ([calle_id])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([calle_id])
REFERENCES [dbo].[calle] ([calle_id])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([colonia_id])
REFERENCES [dbo].[colonia] ([colonia_id])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([colonia_id])
REFERENCES [dbo].[colonia] ([colonia_id])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([puesto_id])
REFERENCES [dbo].[puesto] ([puesto_id])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([puesto_id])
REFERENCES [dbo].[puesto] ([puesto_id])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [FK_EmpleadoMunicipio] FOREIGN KEY([municipio_id])
REFERENCES [dbo].[municipios] ([id])
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_EmpleadoMunicipio]
GO
ALTER TABLE [dbo].[municipios]  WITH CHECK ADD  CONSTRAINT [FK_MunicipioEstado] FOREIGN KEY([estado_id])
REFERENCES [dbo].[estados] ([id])
GO
ALTER TABLE [dbo].[municipios] CHECK CONSTRAINT [FK_MunicipioEstado]
GO
ALTER TABLE [dbo].[ordenCompra]  WITH CHECK ADD FOREIGN KEY([almacenProducto_id])
REFERENCES [dbo].[almacenProducto] ([almacenProducto_id])
GO
ALTER TABLE [dbo].[ordenCompra]  WITH CHECK ADD FOREIGN KEY([producto_id])
REFERENCES [dbo].[productos] ([producto_id])
GO
ALTER TABLE [dbo].[ordenCompra]  WITH CHECK ADD FOREIGN KEY([ticket_id])
REFERENCES [dbo].[ticketDetalle] ([detalle_id])
GO
ALTER TABLE [dbo].[sucursal]  WITH CHECK ADD FOREIGN KEY([calle_id])
REFERENCES [dbo].[calle] ([calle_id])
GO
ALTER TABLE [dbo].[sucursal]  WITH CHECK ADD FOREIGN KEY([calle_id])
REFERENCES [dbo].[calle] ([calle_id])
GO
ALTER TABLE [dbo].[sucursal]  WITH CHECK ADD FOREIGN KEY([colonia_id])
REFERENCES [dbo].[colonia] ([colonia_id])
GO
ALTER TABLE [dbo].[sucursal]  WITH CHECK ADD FOREIGN KEY([colonia_id])
REFERENCES [dbo].[colonia] ([colonia_id])
GO
ALTER TABLE [dbo].[sucursal]  WITH CHECK ADD  CONSTRAINT [FK_SucursalEstado] FOREIGN KEY([estado_id])
REFERENCES [dbo].[estados] ([id])
GO
ALTER TABLE [dbo].[sucursal] CHECK CONSTRAINT [FK_SucursalEstado]
GO
ALTER TABLE [dbo].[sucursal]  WITH CHECK ADD  CONSTRAINT [FK_SucursalMunicipio] FOREIGN KEY([municipio_id])
REFERENCES [dbo].[municipios] ([id])
GO
ALTER TABLE [dbo].[sucursal] CHECK CONSTRAINT [FK_SucursalMunicipio]
GO
ALTER TABLE [dbo].[ticketDetalle]  WITH CHECK ADD FOREIGN KEY([producto_id])
REFERENCES [dbo].[productos] ([producto_id])
GO
ALTER TABLE [dbo].[ticketDetalle]  WITH CHECK ADD FOREIGN KEY([producto_id])
REFERENCES [dbo].[productos] ([producto_id])
GO
ALTER TABLE [dbo].[ticketEncabezado]  WITH CHECK ADD FOREIGN KEY([empleado_id])
REFERENCES [dbo].[empleado] ([empleado_id])
GO
ALTER TABLE [dbo].[ticketEncabezado]  WITH CHECK ADD FOREIGN KEY([sucursal_id])
REFERENCES [dbo].[sucursal] ([sucursal_id])
GO
ALTER TABLE [dbo].[ticketEncabezado]  WITH CHECK ADD FOREIGN KEY([tipoPago_id])
REFERENCES [dbo].[tipoPago] ([tipoPago_id])
GO
USE [master]
GO
ALTER DATABASE [bar] SET  READ_WRITE 
GO
