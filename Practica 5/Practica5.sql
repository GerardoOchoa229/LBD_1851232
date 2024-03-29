USE [bar]
GO
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [CHK_edad]
GO
ALTER TABLE [dbo].[ticketEncabezado] DROP CONSTRAINT [FK__ticketEnc__tipoP__0E6E26BF]
GO
ALTER TABLE [dbo].[ticketEncabezado] DROP CONSTRAINT [FK__ticketEnc__sucur__0C85DE4D]
GO
ALTER TABLE [dbo].[ticketEncabezado] DROP CONSTRAINT [FK__ticketEnc__emple__0D7A0286]
GO
ALTER TABLE [dbo].[ticketDetalle] DROP CONSTRAINT [FK__ticketDet__ticke__7D439ABD]
GO
ALTER TABLE [dbo].[ticketDetalle] DROP CONSTRAINT [FK__ticketDet__ticke__6E01572D]
GO
ALTER TABLE [dbo].[ticketDetalle] DROP CONSTRAINT [FK__ticketDet__produ__7E37BEF6]
GO
ALTER TABLE [dbo].[ticketDetalle] DROP CONSTRAINT [FK__ticketDet__produ__6EF57B66]
GO
ALTER TABLE [dbo].[sucursal] DROP CONSTRAINT [FK__sucursal__munici__71D1E811]
GO
ALTER TABLE [dbo].[sucursal] DROP CONSTRAINT [FK__sucursal__munici__01142BA1]
GO
ALTER TABLE [dbo].[sucursal] DROP CONSTRAINT [FK__sucursal__estado__72C60C4A]
GO
ALTER TABLE [dbo].[sucursal] DROP CONSTRAINT [FK__sucursal__estado__02084FDA]
GO
ALTER TABLE [dbo].[sucursal] DROP CONSTRAINT [FK__sucursal__coloni__70DDC3D8]
GO
ALTER TABLE [dbo].[sucursal] DROP CONSTRAINT [FK__sucursal__coloni__00200768]
GO
ALTER TABLE [dbo].[sucursal] DROP CONSTRAINT [FK__sucursal__calle___7F2BE32F]
GO
ALTER TABLE [dbo].[sucursal] DROP CONSTRAINT [FK__sucursal__calle___6FE99F9F]
GO
ALTER TABLE [dbo].[ordenCompra] DROP CONSTRAINT [FK__ordenComp__ticke__693CA210]
GO
ALTER TABLE [dbo].[ordenCompra] DROP CONSTRAINT [FK__ordenComp__produ__6A30C649]
GO
ALTER TABLE [dbo].[ordenCompra] DROP CONSTRAINT [FK__ordenComp__almac__6B24EA82]
GO
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK__empleado__sucurs__787EE5A0]
GO
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK__empleado__sucurs__07C12930]
GO
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK__empleado__puesto__778AC167]
GO
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK__empleado__puesto__06CD04F7]
GO
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK__empleado__munici__75A278F5]
GO
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK__empleado__munici__04E4BC85]
GO
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK__empleado__estado__76969D2E]
GO
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK__empleado__estado__05D8E0BE]
GO
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK__empleado__coloni__74AE54BC]
GO
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK__empleado__coloni__03F0984C]
GO
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK__empleado__calle___73BA3083]
GO
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK__empleado__calle___02FC7413]
GO
ALTER TABLE [dbo].[almacenProducto] DROP CONSTRAINT [FK__almacenPr__sucur__7B5B524B]
GO
ALTER TABLE [dbo].[almacenProducto] DROP CONSTRAINT [FK__almacenPr__sucur__6C190EBB]
GO
ALTER TABLE [dbo].[almacenProducto] DROP CONSTRAINT [FK__almacenPr__produ__7C4F7684]
GO
ALTER TABLE [dbo].[almacenProducto] DROP CONSTRAINT [FK__almacenPr__produ__6D0D32F4]
GO
ALTER TABLE [dbo].[puesto] DROP CONSTRAINT [Dft_sueldo]
GO
ALTER TABLE [dbo].[productos] DROP CONSTRAINT [Dft_precio]
GO
/****** Object:  Index [indxProducto]    Script Date: 08/10/2019 12:50:30 a. m. ******/
DROP INDEX [indxProducto] ON [dbo].[productos]
GO
/****** Object:  Index [UN_Producto]    Script Date: 08/10/2019 12:50:30 a. m. ******/
ALTER TABLE [dbo].[productos] DROP CONSTRAINT [UN_Producto]
GO
/****** Object:  Index [indxNombreEmpleado]    Script Date: 08/10/2019 12:50:30 a. m. ******/
DROP INDEX [indxNombreEmpleado] ON [dbo].[empleado]
GO
/****** Object:  Table [dbo].[tipoPago]    Script Date: 08/10/2019 12:50:30 a. m. ******/
DROP TABLE [dbo].[tipoPago]
GO
/****** Object:  Table [dbo].[ticketEncabezado]    Script Date: 08/10/2019 12:50:30 a. m. ******/
DROP TABLE [dbo].[ticketEncabezado]
GO
/****** Object:  Table [dbo].[ticketDetalle]    Script Date: 08/10/2019 12:50:30 a. m. ******/
DROP TABLE [dbo].[ticketDetalle]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 08/10/2019 12:50:30 a. m. ******/
DROP TABLE [dbo].[sucursal]
GO
/****** Object:  Table [dbo].[puesto]    Script Date: 08/10/2019 12:50:30 a. m. ******/
DROP TABLE [dbo].[puesto]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 08/10/2019 12:50:30 a. m. ******/
DROP TABLE [dbo].[productos]
GO
/****** Object:  Table [dbo].[ordenCompra]    Script Date: 08/10/2019 12:50:30 a. m. ******/
DROP TABLE [dbo].[ordenCompra]
GO
/****** Object:  Table [dbo].[municipio]    Script Date: 08/10/2019 12:50:30 a. m. ******/
DROP TABLE [dbo].[municipio]
GO
/****** Object:  Table [dbo].[estado]    Script Date: 08/10/2019 12:50:30 a. m. ******/
DROP TABLE [dbo].[estado]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 08/10/2019 12:50:30 a. m. ******/
DROP TABLE [dbo].[empleado]
GO
/****** Object:  Table [dbo].[colonia]    Script Date: 08/10/2019 12:50:30 a. m. ******/
DROP TABLE [dbo].[colonia]
GO
/****** Object:  Table [dbo].[calle]    Script Date: 08/10/2019 12:50:30 a. m. ******/
DROP TABLE [dbo].[calle]
GO
/****** Object:  Table [dbo].[almacenProducto]    Script Date: 08/10/2019 12:50:30 a. m. ******/
DROP TABLE [dbo].[almacenProducto]
GO
USE [master]
GO
/****** Object:  Database [bar]    Script Date: 08/10/2019 12:50:30 a. m. ******/
DROP DATABASE [bar]
GO
/****** Object:  Database [bar]    Script Date: 08/10/2019 12:50:30 a. m. ******/
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
/****** Object:  Table [dbo].[almacenProducto]    Script Date: 08/10/2019 12:50:30 a. m. ******/
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
/****** Object:  Table [dbo].[calle]    Script Date: 08/10/2019 12:50:31 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[calle](
	[calle_id] [int] NOT NULL,
	[nombreMunicipio] [varchar](50) NOT NULL,
	[estado_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[calle_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[colonia]    Script Date: 08/10/2019 12:50:31 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[colonia](
	[colonia_id] [int] NOT NULL,
	[codigoPostal] [int] NOT NULL,
	[nombreCalle] [varchar](50) NOT NULL,
	[municipio_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[colonia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 08/10/2019 12:50:31 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[empleado_id] [int] NOT NULL,
	[nombreCompleto] [varchar](100) NOT NULL,
	[telefono] [int] NULL,
	[puesto_id] [int] NOT NULL,
	[fechaNacimiento] [date] NOT NULL,
	[calle_id] [int] NOT NULL,
	[numero] [int] NOT NULL,
	[sucursal_id] [int] NOT NULL,
	[municipio_id] [int] NOT NULL,
	[estado_id] [int] NOT NULL,
	[colonia_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estado]    Script Date: 08/10/2019 12:50:31 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado](
	[estado_id] [int] NOT NULL,
	[nombreEstado] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[estado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[municipio]    Script Date: 08/10/2019 12:50:31 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[municipio](
	[municipio_id] [int] NOT NULL,
	[nombreMunicipio] [varchar](50) NOT NULL,
	[estado_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[municipio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordenCompra]    Script Date: 08/10/2019 12:50:31 a. m. ******/
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
/****** Object:  Table [dbo].[productos]    Script Date: 08/10/2019 12:50:31 a. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[puesto]    Script Date: 08/10/2019 12:50:31 a. m. ******/
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
/****** Object:  Table [dbo].[sucursal]    Script Date: 08/10/2019 12:50:31 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursal](
	[sucursal_id] [int] NOT NULL,
	[nombre_id] [int] NOT NULL,
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
/****** Object:  Table [dbo].[ticketDetalle]    Script Date: 08/10/2019 12:50:31 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticketDetalle](
	[ticket_id] [int] NOT NULL,
	[producto_id] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio] [int] NOT NULL,
	[totalProducto]  AS ([cantidad]*[precio]),
	[detalle_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[detalle_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticketEncabezado]    Script Date: 08/10/2019 12:50:31 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticketEncabezado](
	[ticket_id] [int] NOT NULL,
	[empleado_id] [int] NOT NULL,
	[fechaCompra] [date] NOT NULL,
	[horaCompra] [time](7) NOT NULL,
	[tipoPago_id] [int] NOT NULL,
	[sucursal_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ticket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoPago]    Script Date: 08/10/2019 12:50:31 a. m. ******/
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
/****** Object:  Index [indxNombreEmpleado]    Script Date: 08/10/2019 12:50:31 a. m. ******/
CREATE NONCLUSTERED INDEX [indxNombreEmpleado] ON [dbo].[empleado]
(
	[nombreCompleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_Producto]    Script Date: 08/10/2019 12:50:31 a. m. ******/
ALTER TABLE [dbo].[productos] ADD  CONSTRAINT [UN_Producto] UNIQUE NONCLUSTERED 
(
	[producto_id] ASC,
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indxProducto]    Script Date: 08/10/2019 12:50:31 a. m. ******/
CREATE NONCLUSTERED INDEX [indxProducto] ON [dbo].[productos]
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([estado_id])
REFERENCES [dbo].[estado] ([estado_id])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([estado_id])
REFERENCES [dbo].[estado] ([estado_id])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([municipio_id])
REFERENCES [dbo].[municipio] ([municipio_id])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([municipio_id])
REFERENCES [dbo].[municipio] ([municipio_id])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([puesto_id])
REFERENCES [dbo].[puesto] ([puesto_id])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([puesto_id])
REFERENCES [dbo].[puesto] ([puesto_id])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([sucursal_id])
REFERENCES [dbo].[sucursal] ([sucursal_id])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([sucursal_id])
REFERENCES [dbo].[sucursal] ([sucursal_id])
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
ALTER TABLE [dbo].[sucursal]  WITH CHECK ADD FOREIGN KEY([estado_id])
REFERENCES [dbo].[estado] ([estado_id])
GO
ALTER TABLE [dbo].[sucursal]  WITH CHECK ADD FOREIGN KEY([estado_id])
REFERENCES [dbo].[estado] ([estado_id])
GO
ALTER TABLE [dbo].[sucursal]  WITH CHECK ADD FOREIGN KEY([municipio_id])
REFERENCES [dbo].[municipio] ([municipio_id])
GO
ALTER TABLE [dbo].[sucursal]  WITH CHECK ADD FOREIGN KEY([municipio_id])
REFERENCES [dbo].[municipio] ([municipio_id])
GO
ALTER TABLE [dbo].[ticketDetalle]  WITH CHECK ADD FOREIGN KEY([producto_id])
REFERENCES [dbo].[productos] ([producto_id])
GO
ALTER TABLE [dbo].[ticketDetalle]  WITH CHECK ADD FOREIGN KEY([producto_id])
REFERENCES [dbo].[productos] ([producto_id])
GO
ALTER TABLE [dbo].[ticketDetalle]  WITH CHECK ADD FOREIGN KEY([ticket_id])
REFERENCES [dbo].[ticketEncabezado] ([ticket_id])
GO
ALTER TABLE [dbo].[ticketDetalle]  WITH CHECK ADD FOREIGN KEY([ticket_id])
REFERENCES [dbo].[ticketEncabezado] ([ticket_id])
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
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [CHK_edad] CHECK  ((datediff(year,'fechaNacimiento',getdate())>(18)))
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [CHK_edad]
GO
USE [master]
GO
ALTER DATABASE [bar] SET  READ_WRITE 
GO
