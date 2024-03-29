USE [bar]
GO
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [CHK_edad]
GO
ALTER TABLE [dbo].[ticketEncabezado] DROP CONSTRAINT [RLT_EncabezadoTipoPago]
GO
ALTER TABLE [dbo].[ticketEncabezado] DROP CONSTRAINT [RLT_EncabezadoEmpleado]
GO
ALTER TABLE [dbo].[ticketDetalle] DROP CONSTRAINT [RLT_DetalleProducto]
GO
ALTER TABLE [dbo].[ticketDetalle] DROP CONSTRAINT [RLT_DetalleEncabezado]
GO
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK_empleadoPuesto]
GO
ALTER TABLE [dbo].[puesto] DROP CONSTRAINT [Dft_sueldo]
GO
ALTER TABLE [dbo].[productos] DROP CONSTRAINT [Dft_precio]
GO
/****** Object:  Index [indxProducto]    Script Date: 16/09/2019 09:24:08 p. m. ******/
DROP INDEX [indxProducto] ON [dbo].[productos]
GO
/****** Object:  Index [UN_Producto]    Script Date: 16/09/2019 09:24:08 p. m. ******/
ALTER TABLE [dbo].[productos] DROP CONSTRAINT [UN_Producto]
GO
/****** Object:  Index [indxNombreEmpleado]    Script Date: 16/09/2019 09:24:08 p. m. ******/
DROP INDEX [indxNombreEmpleado] ON [dbo].[empleado]
GO
/****** Object:  Index [UN_Empleado]    Script Date: 16/09/2019 09:24:08 p. m. ******/
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [UN_Empleado]
GO
/****** Object:  Table [dbo].[tipoPago]    Script Date: 16/09/2019 09:24:08 p. m. ******/
DROP TABLE [dbo].[tipoPago]
GO
/****** Object:  Table [dbo].[ticketEncabezado]    Script Date: 16/09/2019 09:24:08 p. m. ******/
DROP TABLE [dbo].[ticketEncabezado]
GO
/****** Object:  Table [dbo].[ticketDetalle]    Script Date: 16/09/2019 09:24:08 p. m. ******/
DROP TABLE [dbo].[ticketDetalle]
GO
/****** Object:  Table [dbo].[puesto]    Script Date: 16/09/2019 09:24:08 p. m. ******/
DROP TABLE [dbo].[puesto]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 16/09/2019 09:24:08 p. m. ******/
DROP TABLE [dbo].[productos]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 16/09/2019 09:24:08 p. m. ******/
DROP TABLE [dbo].[empleado]
GO
USE [master]
GO
/****** Object:  Database [bar]    Script Date: 16/09/2019 09:24:08 p. m. ******/
DROP DATABASE [bar]
GO
/****** Object:  Database [bar]    Script Date: 16/09/2019 09:24:08 p. m. ******/
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
/****** Object:  Table [dbo].[empleado]    Script Date: 16/09/2019 09:24:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[empleado_id] [int] NOT NULL,
	[nombreCompleto] [varchar](100) NOT NULL,
	[domicilio] [varchar](50) NOT NULL,
	[telefono] [int] NULL,
	[puesto_id] [int] NOT NULL,
	[fechaNacimiento] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 16/09/2019 09:24:08 p. m. ******/
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
/****** Object:  Table [dbo].[puesto]    Script Date: 16/09/2019 09:24:08 p. m. ******/
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
/****** Object:  Table [dbo].[ticketDetalle]    Script Date: 16/09/2019 09:24:08 p. m. ******/
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
PRIMARY KEY CLUSTERED 
(
	[ticket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticketEncabezado]    Script Date: 16/09/2019 09:24:08 p. m. ******/
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
PRIMARY KEY CLUSTERED 
(
	[ticket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipoPago]    Script Date: 16/09/2019 09:24:08 p. m. ******/
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
/****** Object:  Index [UN_Empleado]    Script Date: 16/09/2019 09:24:08 p. m. ******/
ALTER TABLE [dbo].[empleado] ADD  CONSTRAINT [UN_Empleado] UNIQUE NONCLUSTERED 
(
	[empleado_id] ASC,
	[nombreCompleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indxNombreEmpleado]    Script Date: 16/09/2019 09:24:08 p. m. ******/
CREATE NONCLUSTERED INDEX [indxNombreEmpleado] ON [dbo].[empleado]
(
	[nombreCompleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_Producto]    Script Date: 16/09/2019 09:24:08 p. m. ******/
ALTER TABLE [dbo].[productos] ADD  CONSTRAINT [UN_Producto] UNIQUE NONCLUSTERED 
(
	[producto_id] ASC,
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indxProducto]    Script Date: 16/09/2019 09:24:08 p. m. ******/
CREATE NONCLUSTERED INDEX [indxProducto] ON [dbo].[productos]
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[productos] ADD  CONSTRAINT [Dft_precio]  DEFAULT ((0)) FOR [precio]
GO
ALTER TABLE [dbo].[puesto] ADD  CONSTRAINT [Dft_sueldo]  DEFAULT ((0)) FOR [sueldo]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [FK_empleadoPuesto] FOREIGN KEY([puesto_id])
REFERENCES [dbo].[puesto] ([puesto_id])
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_empleadoPuesto]
GO
ALTER TABLE [dbo].[ticketDetalle]  WITH CHECK ADD  CONSTRAINT [RLT_DetalleEncabezado] FOREIGN KEY([ticket_id])
REFERENCES [dbo].[ticketEncabezado] ([ticket_id])
GO
ALTER TABLE [dbo].[ticketDetalle] CHECK CONSTRAINT [RLT_DetalleEncabezado]
GO
ALTER TABLE [dbo].[ticketDetalle]  WITH CHECK ADD  CONSTRAINT [RLT_DetalleProducto] FOREIGN KEY([producto_id])
REFERENCES [dbo].[productos] ([producto_id])
GO
ALTER TABLE [dbo].[ticketDetalle] CHECK CONSTRAINT [RLT_DetalleProducto]
GO
ALTER TABLE [dbo].[ticketEncabezado]  WITH CHECK ADD  CONSTRAINT [RLT_EncabezadoEmpleado] FOREIGN KEY([empleado_id])
REFERENCES [dbo].[empleado] ([empleado_id])
GO
ALTER TABLE [dbo].[ticketEncabezado] CHECK CONSTRAINT [RLT_EncabezadoEmpleado]
GO
ALTER TABLE [dbo].[ticketEncabezado]  WITH CHECK ADD  CONSTRAINT [RLT_EncabezadoTipoPago] FOREIGN KEY([tipoPago_id])
REFERENCES [dbo].[tipoPago] ([tipoPago_id])
GO
ALTER TABLE [dbo].[ticketEncabezado] CHECK CONSTRAINT [RLT_EncabezadoTipoPago]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [CHK_edad] CHECK  ((datediff(year,'fechaNacimiento',getdate())>(18)))
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [CHK_edad]
GO
USE [master]
GO
ALTER DATABASE [bar] SET  READ_WRITE 
GO
