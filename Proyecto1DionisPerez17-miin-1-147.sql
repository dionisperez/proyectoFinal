

/* Nombre:Dionis ventura perez cuello Matricula:17-miin-1-147 Seccion:0541  */





USE [master]
GO
/****** Object:  Database [ColegioDVPC]    Script Date: 15/11/2020 18:22:31 ******/
CREATE DATABASE [ColegioDVPC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ColegioDVPC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ColegioDVPC.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ColegioDVPC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ColegioDVPC_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ColegioDVPC] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ColegioDVPC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ColegioDVPC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ColegioDVPC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ColegioDVPC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ColegioDVPC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ColegioDVPC] SET ARITHABORT OFF 
GO
ALTER DATABASE [ColegioDVPC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ColegioDVPC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ColegioDVPC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ColegioDVPC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ColegioDVPC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ColegioDVPC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ColegioDVPC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ColegioDVPC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ColegioDVPC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ColegioDVPC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ColegioDVPC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ColegioDVPC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ColegioDVPC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ColegioDVPC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ColegioDVPC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ColegioDVPC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ColegioDVPC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ColegioDVPC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ColegioDVPC] SET  MULTI_USER 
GO
ALTER DATABASE [ColegioDVPC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ColegioDVPC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ColegioDVPC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ColegioDVPC] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ColegioDVPC] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ColegioDVPC] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ColegioDVPC] SET QUERY_STORE = OFF
GO
USE [ColegioDVPC]
GO
/****** Object:  Table [dbo].[Calificaciones]    Script Date: 15/11/2020 18:22:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificaciones](
	[CalificacionId] [int] NOT NULL,
	[MateriaId] [int] NULL,
	[Estudianteid] [int] NULL,
	[ProfesorId] [int] NULL,
	[Calificacion1] [float] NULL,
	[Calificacion2] [float] NULL,
	[Calificacion3] [float] NULL,
	[Calificacion4] [float] NULL,
	[Promedio] [float] NULL,
	[Examenfinal] [float] NULL,
	[Calificacionfinal] [int] NULL,
 CONSTRAINT [PK_Calificaciones] PRIMARY KEY CLUSTERED 
(
	[CalificacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 15/11/2020 18:22:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursos](
	[cursoId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Horario] [varchar](20) NULL,
 CONSTRAINT [PK_Cursos] PRIMARY KEY CLUSTERED 
(
	[cursoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 15/11/2020 18:22:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[EstudianteId] [int] NOT NULL,
	[Nombre] [varchar](60) NULL,
	[Matricula] [varchar](15) NULL,
	[CursoId] [int] NULL,
	[Fechadenacimiento] [datetime] NULL,
	[Sexo] [char](1) NULL,
	[Direccion] [varchar](250) NULL,
 CONSTRAINT [PK_Estudiantes] PRIMARY KEY CLUSTERED 
(
	[EstudianteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materias]    Script Date: 15/11/2020 18:22:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materias](
	[MateriaId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[CursoId] [int] NULL,
	[ProfesorId] [int] NULL,
 CONSTRAINT [PK_Materias] PRIMARY KEY CLUSTERED 
(
	[MateriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 15/11/2020 18:22:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesores](
	[ProfesorId] [int] NOT NULL,
	[Nombre] [varchar](60) NULL,
	[Direccion] [varchar](250) NULL,
	[Sexo] [char](1) NULL,
	[Telefono] [varchar](13) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Profesores] PRIMARY KEY CLUSTERED 
(
	[ProfesorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Calificaciones] ([CalificacionId], [MateriaId], [Estudianteid], [ProfesorId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificacionfinal]) VALUES (1, 1, 1, 1, 10, 15, 15, 15, 55, 40, 95)
INSERT [dbo].[Calificaciones] ([CalificacionId], [MateriaId], [Estudianteid], [ProfesorId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificacionfinal]) VALUES (2, 2, 3, 2, 10, 15, 15, 15, 55, 40, 95)
INSERT [dbo].[Calificaciones] ([CalificacionId], [MateriaId], [Estudianteid], [ProfesorId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificacionfinal]) VALUES (3, 2, 4, 3, 10, 15, 15, 15, 55, 40, 95)
INSERT [dbo].[Calificaciones] ([CalificacionId], [MateriaId], [Estudianteid], [ProfesorId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificacionfinal]) VALUES (4, 3, 2, 4, 10, 15, 15, 15, 55, 40, 95)
INSERT [dbo].[Calificaciones] ([CalificacionId], [MateriaId], [Estudianteid], [ProfesorId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificacionfinal]) VALUES (5, 4, 5, 5, 10, 15, 15, 15, 55, 40, 95)
INSERT [dbo].[Calificaciones] ([CalificacionId], [MateriaId], [Estudianteid], [ProfesorId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificacionfinal]) VALUES (6, 5, 6, 6, 10, 15, 15, 15, 55, 40, 95)
INSERT [dbo].[Calificaciones] ([CalificacionId], [MateriaId], [Estudianteid], [ProfesorId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificacionfinal]) VALUES (7, 6, 7, 7, 10, 15, 15, 15, 55, 40, 95)
INSERT [dbo].[Calificaciones] ([CalificacionId], [MateriaId], [Estudianteid], [ProfesorId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificacionfinal]) VALUES (8, 7, 8, 8, 10, 15, 15, 15, 55, 40, 95)
INSERT [dbo].[Calificaciones] ([CalificacionId], [MateriaId], [Estudianteid], [ProfesorId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificacionfinal]) VALUES (9, 8, 9, 9, 10, 15, 15, 15, 55, 40, 95)
INSERT [dbo].[Calificaciones] ([CalificacionId], [MateriaId], [Estudianteid], [ProfesorId], [Calificacion1], [Calificacion2], [Calificacion3], [Calificacion4], [Promedio], [Examenfinal], [Calificacionfinal]) VALUES (10, 9, 10, 10, 10, 15, 15, 15, 55, 40, 95)
GO
INSERT [dbo].[Cursos] ([cursoId], [Nombre], [Horario]) VALUES (1, N'Primero de Basica', N'Mañana')
INSERT [dbo].[Cursos] ([cursoId], [Nombre], [Horario]) VALUES (2, N'Segundo de Basica', N'Mañana')
INSERT [dbo].[Cursos] ([cursoId], [Nombre], [Horario]) VALUES (3, N'Segundo de Basica', N'Tarde')
INSERT [dbo].[Cursos] ([cursoId], [Nombre], [Horario]) VALUES (4, N'Tercero de Basica', N'mañana')
INSERT [dbo].[Cursos] ([cursoId], [Nombre], [Horario]) VALUES (5, N'cuarto de basica', N'tarde')
INSERT [dbo].[Cursos] ([cursoId], [Nombre], [Horario]) VALUES (6, N'quinto de basica', N'tarde')
INSERT [dbo].[Cursos] ([cursoId], [Nombre], [Horario]) VALUES (7, N'sexto de basica', N'mañana')
INSERT [dbo].[Cursos] ([cursoId], [Nombre], [Horario]) VALUES (8, N'octavo de basica', N'tarde')
INSERT [dbo].[Cursos] ([cursoId], [Nombre], [Horario]) VALUES (9, N'primero de bachiller', N'tarde')
INSERT [dbo].[Cursos] ([cursoId], [Nombre], [Horario]) VALUES (10, N'segundo de bachiller', N'tarde')
GO
INSERT [dbo].[Estudiantes] ([EstudianteId], [Nombre], [Matricula], [CursoId], [Fechadenacimiento], [Sexo], [Direccion]) VALUES (1, N'Juan Pancracio', N'77145556546', 1, NULL, N'M', N'Calle')
INSERT [dbo].[Estudiantes] ([EstudianteId], [Nombre], [Matricula], [CursoId], [Fechadenacimiento], [Sexo], [Direccion]) VALUES (2, N'Dionis perez', N'65465419879', 1, NULL, N'M', N'Calle')
INSERT [dbo].[Estudiantes] ([EstudianteId], [Nombre], [Matricula], [CursoId], [Fechadenacimiento], [Sexo], [Direccion]) VALUES (3, N'Ariel cuello', N'65431694664', 2, NULL, N'M', N'Calle')
INSERT [dbo].[Estudiantes] ([EstudianteId], [Nombre], [Matricula], [CursoId], [Fechadenacimiento], [Sexo], [Direccion]) VALUES (4, N'Rosa perez ', N'65465464976', 3, NULL, N'F', N'Calle')
INSERT [dbo].[Estudiantes] ([EstudianteId], [Nombre], [Matricula], [CursoId], [Fechadenacimiento], [Sexo], [Direccion]) VALUES (5, N'Eimi cuello', N'21321987654', 1, NULL, N'F', N'Calle')
INSERT [dbo].[Estudiantes] ([EstudianteId], [Nombre], [Matricula], [CursoId], [Fechadenacimiento], [Sexo], [Direccion]) VALUES (6, N'Maria contrera', N'13219697498', 4, NULL, N'F', N'Calle')
INSERT [dbo].[Estudiantes] ([EstudianteId], [Nombre], [Matricula], [CursoId], [Fechadenacimiento], [Sexo], [Direccion]) VALUES (7, N'jose manuel', N'61321654964', 5, NULL, N'H', N'Calle')
INSERT [dbo].[Estudiantes] ([EstudianteId], [Nombre], [Matricula], [CursoId], [Fechadenacimiento], [Sexo], [Direccion]) VALUES (8, N'juan luis', N'64649831396', 6, NULL, N'H', N'Calle')
INSERT [dbo].[Estudiantes] ([EstudianteId], [Nombre], [Matricula], [CursoId], [Fechadenacimiento], [Sexo], [Direccion]) VALUES (9, N'marlon perez', N'54987961316', 7, NULL, N'H', N'Calle')
INSERT [dbo].[Estudiantes] ([EstudianteId], [Nombre], [Matricula], [CursoId], [Fechadenacimiento], [Sexo], [Direccion]) VALUES (10, N'marieli perez', N'65464987646', 2, NULL, N'F', N'Calle')
GO
INSERT [dbo].[Materias] ([MateriaId], [Nombre], [CursoId], [ProfesorId]) VALUES (1, N'Matematicas', 1, 1)
INSERT [dbo].[Materias] ([MateriaId], [Nombre], [CursoId], [ProfesorId]) VALUES (2, N'Base de datos', 1, 1)
INSERT [dbo].[Materias] ([MateriaId], [Nombre], [CursoId], [ProfesorId]) VALUES (3, N'Sociales', 1, 1)
INSERT [dbo].[Materias] ([MateriaId], [Nombre], [CursoId], [ProfesorId]) VALUES (4, N'Quimica', 2, 2)
INSERT [dbo].[Materias] ([MateriaId], [Nombre], [CursoId], [ProfesorId]) VALUES (5, N'Algebra', 3, 3)
INSERT [dbo].[Materias] ([MateriaId], [Nombre], [CursoId], [ProfesorId]) VALUES (6, N'Calculo', 1, 1)
INSERT [dbo].[Materias] ([MateriaId], [Nombre], [CursoId], [ProfesorId]) VALUES (7, N'Español', 2, 2)
INSERT [dbo].[Materias] ([MateriaId], [Nombre], [CursoId], [ProfesorId]) VALUES (8, N'Redaccion', 6, 6)
INSERT [dbo].[Materias] ([MateriaId], [Nombre], [CursoId], [ProfesorId]) VALUES (9, N'Geografia ', 7, 7)
INSERT [dbo].[Materias] ([MateriaId], [Nombre], [CursoId], [ProfesorId]) VALUES (10, N'Estadistica', 8, 8)
GO
INSERT [dbo].[Profesores] ([ProfesorId], [Nombre], [Direccion], [Sexo], [Telefono], [Email]) VALUES (1, N'Starling', N'calle', N'H', N'8492077714', N'sgermosen@praysoft.net')
INSERT [dbo].[Profesores] ([ProfesorId], [Nombre], [Direccion], [Sexo], [Telefono], [Email]) VALUES (2, N'manuel', N'calle', N'H', N'5656599844', N'manuel17@gmail.com')
INSERT [dbo].[Profesores] ([ProfesorId], [Nombre], [Direccion], [Sexo], [Telefono], [Email]) VALUES (3, N'jose', N'calle', N'H', N'6549871312', N'jose47@gmail.com')
INSERT [dbo].[Profesores] ([ProfesorId], [Nombre], [Direccion], [Sexo], [Telefono], [Email]) VALUES (4, N'carlos', N'calle', N'H', N'6546549873', N'carlos87@gmail.com')
INSERT [dbo].[Profesores] ([ProfesorId], [Nombre], [Direccion], [Sexo], [Telefono], [Email]) VALUES (5, N'luis', N'calle', N'H', N'8756465466', N'luis54@gmail.com')
INSERT [dbo].[Profesores] ([ProfesorId], [Nombre], [Direccion], [Sexo], [Telefono], [Email]) VALUES (6, N'pedro', N'calle', N'H', N'3132165979', N'pedro@gmail.com')
INSERT [dbo].[Profesores] ([ProfesorId], [Nombre], [Direccion], [Sexo], [Telefono], [Email]) VALUES (7, N'juan', N'calle', N'H', N'3464319876', N'juan34@gmail.com')
INSERT [dbo].[Profesores] ([ProfesorId], [Nombre], [Direccion], [Sexo], [Telefono], [Email]) VALUES (8, N'aneo', N'calle', N'H', N'6546549873', N'aneo45@gmai.com')
INSERT [dbo].[Profesores] ([ProfesorId], [Nombre], [Direccion], [Sexo], [Telefono], [Email]) VALUES (9, N'ariel', N'calle', N'H', N'4987641321', N'ariel69@gmail.com')
INSERT [dbo].[Profesores] ([ProfesorId], [Nombre], [Direccion], [Sexo], [Telefono], [Email]) VALUES (10, N'kelvin', N'calle', N'H', N'6549873216', N'kelvin@gmail.com')
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_Estudiantes] FOREIGN KEY([Estudianteid])
REFERENCES [dbo].[Estudiantes] ([EstudianteId])
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_Estudiantes]
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_Materias] FOREIGN KEY([MateriaId])
REFERENCES [dbo].[Materias] ([MateriaId])
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_Materias]
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_Profesores] FOREIGN KEY([ProfesorId])
REFERENCES [dbo].[Profesores] ([ProfesorId])
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_Profesores]
GO
ALTER TABLE [dbo].[Estudiantes]  WITH CHECK ADD  CONSTRAINT [FK_Estudiantes_Cursos] FOREIGN KEY([CursoId])
REFERENCES [dbo].[Cursos] ([cursoId])
GO
ALTER TABLE [dbo].[Estudiantes] CHECK CONSTRAINT [FK_Estudiantes_Cursos]
GO
ALTER TABLE [dbo].[Materias]  WITH CHECK ADD  CONSTRAINT [FK_Materias_Cursos] FOREIGN KEY([CursoId])
REFERENCES [dbo].[Cursos] ([cursoId])
GO
ALTER TABLE [dbo].[Materias] CHECK CONSTRAINT [FK_Materias_Cursos]
GO
ALTER TABLE [dbo].[Materias]  WITH CHECK ADD  CONSTRAINT [FK_Materias_Profesores] FOREIGN KEY([ProfesorId])
REFERENCES [dbo].[Profesores] ([ProfesorId])
GO
ALTER TABLE [dbo].[Materias] CHECK CONSTRAINT [FK_Materias_Profesores]
GO
USE [master]
GO
ALTER DATABASE [ColegioDVPC] SET  READ_WRITE 
GO
