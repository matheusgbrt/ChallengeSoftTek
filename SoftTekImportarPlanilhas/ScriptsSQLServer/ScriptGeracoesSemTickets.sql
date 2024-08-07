USE [master]
GO
/****** Object:  Database [SoftTek]    Script Date: 05/08/2024 10:35:17 ******/
CREATE DATABASE [SoftTek]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SoftTek', FILENAME = N'F:\MSSQLServer\SoftTek.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SoftTek_log', FILENAME = N'F:\MSSQLServer\SoftTek_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SoftTek] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SoftTek].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SoftTek] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SoftTek] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SoftTek] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SoftTek] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SoftTek] SET ARITHABORT OFF 
GO
ALTER DATABASE [SoftTek] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SoftTek] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SoftTek] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SoftTek] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SoftTek] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SoftTek] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SoftTek] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SoftTek] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SoftTek] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SoftTek] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SoftTek] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SoftTek] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SoftTek] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SoftTek] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SoftTek] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SoftTek] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SoftTek] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SoftTek] SET RECOVERY FULL 
GO
ALTER DATABASE [SoftTek] SET  MULTI_USER 
GO
ALTER DATABASE [SoftTek] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SoftTek] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SoftTek] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SoftTek] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SoftTek] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SoftTek] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SoftTek', N'ON'
GO
ALTER DATABASE [SoftTek] SET QUERY_STORE = ON
GO
ALTER DATABASE [SoftTek] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SoftTek]
GO
/****** Object:  Table [dbo].[Categorias_Tecnico]    Script Date: 05/08/2024 10:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias_Tecnico](
	[idCategoriaTecnico] [int] IDENTITY(1,1) NOT NULL,
	[descricaoCategoriaTecnico] [nvarchar](100) NULL,
 CONSTRAINT [PK_Categorias_Tecnico] PRIMARY KEY CLUSTERED 
(
	[idCategoriaTecnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupos_Atribuicao]    Script Date: 05/08/2024 10:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupos_Atribuicao](
	[idGrupoAtribuicao] [int] IDENTITY(1,1) NOT NULL,
	[descricaoGrupoAtribuicao] [nvarchar](100) NULL,
 CONSTRAINT [PK_Grupos_Atribuicao] PRIMARY KEY CLUSTERED 
(
	[idGrupoAtribuicao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupos_Categoria_Tecnico]    Script Date: 05/08/2024 10:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupos_Categoria_Tecnico](
	[idGrupoCategoriaTecnico] [int] IDENTITY(1,1) NOT NULL,
	[descricaoGrupoCategoriaTecnico] [nvarchar](100) NULL,
 CONSTRAINT [PK_Grupos_Categoria_Tecnico] PRIMARY KEY CLUSTERED 
(
	[idGrupoCategoriaTecnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupos_Solicitante]    Script Date: 05/08/2024 10:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupos_Solicitante](
	[idGrupoSolicitante] [int] IDENTITY(1,1) NOT NULL,
	[descricaoGrupoSolicitante] [nvarchar](100) NULL,
 CONSTRAINT [PK_Grupos_Solicitante] PRIMARY KEY CLUSTERED 
(
	[idGrupoSolicitante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locais]    Script Date: 05/08/2024 10:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locais](
	[idLocal] [int] IDENTITY(1,1) NOT NULL,
	[nomeLocal] [nvarchar](100) NULL,
 CONSTRAINT [PK_Locais] PRIMARY KEY CLUSTERED 
(
	[idLocal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Relatorio_Categorias]    Script Date: 05/08/2024 10:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relatorio_Categorias](
	[idCategoriaRelatorio] [int] IDENTITY(1,1) NOT NULL,
	[descricaoCategoriaRelatorio] [nvarchar](100) NULL,
 CONSTRAINT [PK_Relatorio_Categorias] PRIMARY KEY CLUSTERED 
(
	[idCategoriaRelatorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Relatorio_Estados]    Script Date: 05/08/2024 10:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relatorio_Estados](
	[idEstadoTicket] [int] IDENTITY(1,1) NOT NULL,
	[descricaoEstadoTicket] [nvarchar](100) NULL,
 CONSTRAINT [PK_Ticket_Estados] PRIMARY KEY CLUSTERED 
(
	[idEstadoTicket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Relatorio_Subcategorias]    Script Date: 05/08/2024 10:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relatorio_Subcategorias](
	[idSubcategoriaRelatorio] [int] IDENTITY(1,1) NOT NULL,
	[idCategoriaRelatorio] [int] NULL,
	[descricaoSubcategoriaRelatorio] [nvarchar](100) NULL,
 CONSTRAINT [PK_Relatorio_Subcategorias] PRIMARY KEY CLUSTERED 
(
	[idSubcategoriaRelatorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket_Prioridades]    Script Date: 05/08/2024 10:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket_Prioridades](
	[idPrioridadeTicket] [int] IDENTITY(1,1) NOT NULL,
	[descricaoPrioridadeTicket] [nvarchar](100) NULL,
	[codigoPrioridade] [nvarchar](100) NULL,
 CONSTRAINT [PK_Ticket_Prioridades] PRIMARY KEY CLUSTERED 
(
	[idPrioridadeTicket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket_Sintomas]    Script Date: 05/08/2024 10:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket_Sintomas](
	[idSintomaTicket] [int] IDENTITY(1,1) NOT NULL,
	[descricaoSintomaTicket] [nvarchar](100) NULL,
 CONSTRAINT [PK_Ticket_Sintomas] PRIMARY KEY CLUSTERED 
(
	[idSintomaTicket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 05/08/2024 10:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets](
	[idTicket] [int] IDENTITY(1,1) NOT NULL,
	[idEstadoRelatorio] [int] NULL,
	[idCategoriaRelatorio] [int] NULL,
	[idSintoma] [int] NULL,
	[idCategoriaTecnico] [int] NULL,
	[idCategoriaTicket] [int] NULL,
	[idLocal] [int] NULL,
	[idGrupoCategoriaTecnico] [int] NULL,
	[idGrupoSolicitante] [int] NULL,
	[idPrioridadeTicket] [int] NULL,
	[numeroTicket] [nvarchar](50) NULL,
	[descricaoTicket] [nvarchar](500) NULL,
	[subcategoriaRelatorio] [nvarchar](100) NULL,
	[qualificacaoSintoma] [nvarchar](100) NULL,
	[dataAbertura] [datetime] NULL,
	[dataAtualizacao] [datetime] NULL,
	[dataRelatorioResolvido] [datetime] NULL,
	[dataEncerramento] [datetime] NULL,
 CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED 
(
	[idTicket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorias_Tecnico] ON 

INSERT [dbo].[Categorias_Tecnico] ([idCategoriaTecnico], [descricaoCategoriaTecnico]) VALUES (1, N'Analista AMS')
INSERT [dbo].[Categorias_Tecnico] ([idCategoriaTecnico], [descricaoCategoriaTecnico]) VALUES (2, N'Analista Service Desk')
INSERT [dbo].[Categorias_Tecnico] ([idCategoriaTecnico], [descricaoCategoriaTecnico]) VALUES (3, N'Analista Acesso')
INSERT [dbo].[Categorias_Tecnico] ([idCategoriaTecnico], [descricaoCategoriaTecnico]) VALUES (4, N'Analista Field')
SET IDENTITY_INSERT [dbo].[Categorias_Tecnico] OFF
GO
SET IDENTITY_INSERT [dbo].[Grupos_Atribuicao] ON 

INSERT [dbo].[Grupos_Atribuicao] ([idGrupoAtribuicao], [descricaoGrupoAtribuicao]) VALUES (1, N'N2-LEG-SAT')
INSERT [dbo].[Grupos_Atribuicao] ([idGrupoAtribuicao], [descricaoGrupoAtribuicao]) VALUES (2, N'N1-NÃO SAP')
INSERT [dbo].[Grupos_Atribuicao] ([idGrupoAtribuicao], [descricaoGrupoAtribuicao]) VALUES (3, N'N1-ACESSOS-SAP')
INSERT [dbo].[Grupos_Atribuicao] ([idGrupoAtribuicao], [descricaoGrupoAtribuicao]) VALUES (4, N'N1-OUTROS')
INSERT [dbo].[Grupos_Atribuicao] ([idGrupoAtribuicao], [descricaoGrupoAtribuicao]) VALUES (5, N'N1-SAP')
INSERT [dbo].[Grupos_Atribuicao] ([idGrupoAtribuicao], [descricaoGrupoAtribuicao]) VALUES (6, N'N2-FS-CA')
INSERT [dbo].[Grupos_Atribuicao] ([idGrupoAtribuicao], [descricaoGrupoAtribuicao]) VALUES (7, N'N2-FS-EX')
INSERT [dbo].[Grupos_Atribuicao] ([idGrupoAtribuicao], [descricaoGrupoAtribuicao]) VALUES (8, N'N2-FS-NA')
INSERT [dbo].[Grupos_Atribuicao] ([idGrupoAtribuicao], [descricaoGrupoAtribuicao]) VALUES (9, N'N1-ACESSOS')
INSERT [dbo].[Grupos_Atribuicao] ([idGrupoAtribuicao], [descricaoGrupoAtribuicao]) VALUES (10, N'TELEFONIA')
INSERT [dbo].[Grupos_Atribuicao] ([idGrupoAtribuicao], [descricaoGrupoAtribuicao]) VALUES (11, N'N2-ATIVOS-IC')
INSERT [dbo].[Grupos_Atribuicao] ([idGrupoAtribuicao], [descricaoGrupoAtribuicao]) VALUES (12, N'N2-AT-EXTERNOS')
SET IDENTITY_INSERT [dbo].[Grupos_Atribuicao] OFF
GO
SET IDENTITY_INSERT [dbo].[Grupos_Categoria_Tecnico] ON 

INSERT [dbo].[Grupos_Categoria_Tecnico] ([idGrupoCategoriaTecnico], [descricaoGrupoCategoriaTecnico]) VALUES (1, N'AMS-Não SAP')
INSERT [dbo].[Grupos_Categoria_Tecnico] ([idGrupoCategoriaTecnico], [descricaoGrupoCategoriaTecnico]) VALUES (2, N'Service Desk')
INSERT [dbo].[Grupos_Categoria_Tecnico] ([idGrupoCategoriaTecnico], [descricaoGrupoCategoriaTecnico]) VALUES (3, N'Acesso')
INSERT [dbo].[Grupos_Categoria_Tecnico] ([idGrupoCategoriaTecnico], [descricaoGrupoCategoriaTecnico]) VALUES (4, N'Field Service')
INSERT [dbo].[Grupos_Categoria_Tecnico] ([idGrupoCategoriaTecnico], [descricaoGrupoCategoriaTecnico]) VALUES (5, N'Ativos')
SET IDENTITY_INSERT [dbo].[Grupos_Categoria_Tecnico] OFF
GO
SET IDENTITY_INSERT [dbo].[Grupos_Solicitante] ON 

INSERT [dbo].[Grupos_Solicitante] ([idGrupoSolicitante], [descricaoGrupoSolicitante]) VALUES (1, N'ADM Sistemas')
SET IDENTITY_INSERT [dbo].[Grupos_Solicitante] OFF
GO
SET IDENTITY_INSERT [dbo].[Locais] ON 

INSERT [dbo].[Locais] ([idLocal], [nomeLocal]) VALUES (1, N'Fábrica 1')
INSERT [dbo].[Locais] ([idLocal], [nomeLocal]) VALUES (2, N'Escritório central')
INSERT [dbo].[Locais] ([idLocal], [nomeLocal]) VALUES (3, N'Centro de Distribuição')
SET IDENTITY_INSERT [dbo].[Locais] OFF
GO
SET IDENTITY_INSERT [dbo].[Relatorio_Categorias] ON 

INSERT [dbo].[Relatorio_Categorias] ([idCategoriaRelatorio], [descricaoCategoriaRelatorio]) VALUES (1, N'Outros Sistemas')
INSERT [dbo].[Relatorio_Categorias] ([idCategoriaRelatorio], [descricaoCategoriaRelatorio]) VALUES (2, N'Acessos')
INSERT [dbo].[Relatorio_Categorias] ([idCategoriaRelatorio], [descricaoCategoriaRelatorio]) VALUES (3, N'Funcional SAP')
INSERT [dbo].[Relatorio_Categorias] ([idCategoriaRelatorio], [descricaoCategoriaRelatorio]) VALUES (4, N'Equipamento de TI')
INSERT [dbo].[Relatorio_Categorias] ([idCategoriaRelatorio], [descricaoCategoriaRelatorio]) VALUES (5, N'Sistemas SAP')
INSERT [dbo].[Relatorio_Categorias] ([idCategoriaRelatorio], [descricaoCategoriaRelatorio]) VALUES (6, N'Serviços de TI')
INSERT [dbo].[Relatorio_Categorias] ([idCategoriaRelatorio], [descricaoCategoriaRelatorio]) VALUES (7, N'Sistemas')
INSERT [dbo].[Relatorio_Categorias] ([idCategoriaRelatorio], [descricaoCategoriaRelatorio]) VALUES (8, N'Outras Solicitações')
INSERT [dbo].[Relatorio_Categorias] ([idCategoriaRelatorio], [descricaoCategoriaRelatorio]) VALUES (9, N'Impressoras')
INSERT [dbo].[Relatorio_Categorias] ([idCategoriaRelatorio], [descricaoCategoriaRelatorio]) VALUES (10, N'Suporte a Equipamento')
SET IDENTITY_INSERT [dbo].[Relatorio_Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Relatorio_Estados] ON 

INSERT [dbo].[Relatorio_Estados] ([idEstadoTicket], [descricaoEstadoTicket]) VALUES (1, N'Resolvido')
INSERT [dbo].[Relatorio_Estados] ([idEstadoTicket], [descricaoEstadoTicket]) VALUES (2, N'Fechado')
SET IDENTITY_INSERT [dbo].[Relatorio_Estados] OFF
GO
SET IDENTITY_INSERT [dbo].[Relatorio_Subcategorias] ON 

INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (1, 1, N'Adapt')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (2, 1, N'Sistema Labware')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (3, 1, N'HCA')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (4, 1, N'Lakos')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (5, 1, N'Outros Sistemas')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (6, 1, N'Gente & Gestão')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (7, 2, N'Alteração de Perfil')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (8, 2, N'Liberação de Acesso')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (9, 3, N'Solicitação')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (10, 4, N'Solicitação de Equipamento')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (11, 2, N'Atualização de Acesso')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (12, 5, N'Suporte Funcional')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (13, 1, N'Nugenesis')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (14, 4, N'Troca de Equipamento')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (15, 2, N'Criar Perfil SAP')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (16, 4, N'Configuração de Equipamento')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (17, 4, N'Devolução de Equipamento')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (18, 6, N'Infraestrutura - Soluções')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (19, 7, N'Admissão')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (20, 2, N'Prorrogação de Acessos')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (21, 4, N'Empréstimo de Equipamento')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (22, 2, N'Suporte Acessos')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (23, 8, N'Outras Solicitações')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (24, 4, N'Manutenção de Equipamento Locado')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (25, 2, N'Reset/Desbloqueio de Senha')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (26, 2, N'Delegação de Aprovações')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (27, 1, N'DMDocs')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (28, 4, N'Item de Configuração')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (29, 2, N'Revogação de Acesso')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (30, 4, N'Hands on')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (31, 4, N'Controle de Acesso e Relógio de Ponto')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (32, 1, N'DocNix')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (33, 1, N'Dynamics')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (34, 9, N'Suporte Impressoras')
INSERT [dbo].[Relatorio_Subcategorias] ([idSubcategoriaRelatorio], [idCategoriaRelatorio], [descricaoSubcategoriaRelatorio]) VALUES (35, 10, N'Roaming Internacional')
SET IDENTITY_INSERT [dbo].[Relatorio_Subcategorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Ticket_Prioridades] ON 

INSERT [dbo].[Ticket_Prioridades] ([idPrioridadeTicket], [descricaoPrioridadeTicket], [codigoPrioridade]) VALUES (1, N'1 - Alto', N'1')
INSERT [dbo].[Ticket_Prioridades] ([idPrioridadeTicket], [descricaoPrioridadeTicket], [codigoPrioridade]) VALUES (2, N'2 - Médio', N'2')
INSERT [dbo].[Ticket_Prioridades] ([idPrioridadeTicket], [descricaoPrioridadeTicket], [codigoPrioridade]) VALUES (3, N'3 - Baixo', N'3')
INSERT [dbo].[Ticket_Prioridades] ([idPrioridadeTicket], [descricaoPrioridadeTicket], [codigoPrioridade]) VALUES (4, N'4 - Planejamento', N'4')
SET IDENTITY_INSERT [dbo].[Ticket_Prioridades] OFF
GO
SET IDENTITY_INSERT [dbo].[Ticket_Sintomas] ON 

INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (1, N'Manutenção de transação e objeto')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (2, N'Troca de Perfil')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (3, N'Criação de Acesso')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (4, N'Análise SAP')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (5, N'Outras manutenções de Perfil')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (6, N'Colaborador Interno')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (7, N'Atualização de dados cadastrais na BU')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (8, N'Analise')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (9, N'Outros')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (10, N'Colaborador Externo')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (11, N'Criar perfil SAP')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (12, N'Configuração de Equipamento')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (13, N'Aquisição / Renovação de Aplicativo')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (14, N'Admissão')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (15, N'Prorrogação de Acessos SAP')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (16, N'Empréstimo de Equipamento')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (17, N'Remediação Solicitadas por Controles Internos (CI)')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (18, N'Análise de usuários Ativos / Inativos')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (19, N'Dúvida')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (20, N'Manutenção de Equipamento Locado')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (21, N'Reset/Desbloqueio de Senha de Sistemas')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (22, N'Delegação de Aprovações')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (23, N'Atualização de Acesso')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (24, N'Criar Item de Configuração – Aplicações')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (25, N'Revogação de Acesso')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (26, N'Reativação de Acessos')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (27, N'Hands on')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (28, N'Instalação de Aplicativos')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (29, N'Suporte')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (30, N'Auditoria Interna')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (31, N'Ativar Ponto de Rede')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (32, N'Solicitação de NF Entrada\Saída')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (33, N'Troca de Toner')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (34, N'Transferência de Equipamento')
INSERT [dbo].[Ticket_Sintomas] ([idSintomaTicket], [descricaoSintomaTicket]) VALUES (35, N'Liberação de Roaming Internacional')
SET IDENTITY_INSERT [dbo].[Ticket_Sintomas] OFF
GO
ALTER TABLE [dbo].[Relatorio_Subcategorias]  WITH CHECK ADD  CONSTRAINT [FK_Relatorio_Subcategorias_Relatorio_Categorias] FOREIGN KEY([idCategoriaRelatorio])
REFERENCES [dbo].[Relatorio_Categorias] ([idCategoriaRelatorio])
GO
ALTER TABLE [dbo].[Relatorio_Subcategorias] CHECK CONSTRAINT [FK_Relatorio_Subcategorias_Relatorio_Categorias]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Categorias_Tecnico] FOREIGN KEY([idCategoriaTecnico])
REFERENCES [dbo].[Categorias_Tecnico] ([idCategoriaTecnico])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Categorias_Tecnico]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Grupos_Categoria_Tecnico] FOREIGN KEY([idGrupoCategoriaTecnico])
REFERENCES [dbo].[Grupos_Categoria_Tecnico] ([idGrupoCategoriaTecnico])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Grupos_Categoria_Tecnico]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Grupos_Solicitante] FOREIGN KEY([idGrupoSolicitante])
REFERENCES [dbo].[Grupos_Solicitante] ([idGrupoSolicitante])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Grupos_Solicitante]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Locais] FOREIGN KEY([idLocal])
REFERENCES [dbo].[Locais] ([idLocal])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Locais]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Relatorio_Categorias] FOREIGN KEY([idCategoriaRelatorio])
REFERENCES [dbo].[Relatorio_Categorias] ([idCategoriaRelatorio])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Relatorio_Categorias]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Ticket_Estados] FOREIGN KEY([idEstadoRelatorio])
REFERENCES [dbo].[Relatorio_Estados] ([idEstadoTicket])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Ticket_Estados]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Ticket_Prioridades] FOREIGN KEY([idPrioridadeTicket])
REFERENCES [dbo].[Ticket_Prioridades] ([idPrioridadeTicket])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Ticket_Prioridades]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Ticket_Sintomas] FOREIGN KEY([idSintoma])
REFERENCES [dbo].[Ticket_Sintomas] ([idSintomaTicket])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Ticket_Sintomas]
GO
USE [master]
GO
ALTER DATABASE [SoftTek] SET  READ_WRITE 
GO
