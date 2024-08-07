USE [master]
GO
/****** Object:  Database [SoftTek]    Script Date: 05/08/2024 13:58:37 ******/
CREATE DATABASE [SoftTek]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SoftTek', FILENAME = N'F:\MSSQLServer\SoftTek.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SoftTek_log', FILENAME = N'F:\MSSQLServer\SoftTek_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
/****** Object:  Table [dbo].[Categorias_Tecnico]    Script Date: 05/08/2024 13:58:37 ******/
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
/****** Object:  Table [dbo].[Grupos_Atribuicao]    Script Date: 05/08/2024 13:58:37 ******/
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
/****** Object:  Table [dbo].[Grupos_Categoria_Tecnico]    Script Date: 05/08/2024 13:58:37 ******/
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
/****** Object:  Table [dbo].[Grupos_Solicitante]    Script Date: 05/08/2024 13:58:37 ******/
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
/****** Object:  Table [dbo].[Locais]    Script Date: 05/08/2024 13:58:37 ******/
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
/****** Object:  Table [dbo].[Relatorio_Categorias]    Script Date: 05/08/2024 13:58:37 ******/
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
/****** Object:  Table [dbo].[Relatorio_Estados]    Script Date: 05/08/2024 13:58:37 ******/
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
/****** Object:  Table [dbo].[Relatorio_Subcategorias]    Script Date: 05/08/2024 13:58:37 ******/
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
/****** Object:  Table [dbo].[Ticket_Comentarios]    Script Date: 05/08/2024 13:58:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket_Comentarios](
	[idComentario] [int] IDENTITY(1,1) NOT NULL,
	[idTicket] [int] NULL,
	[textoComentario] [nvarchar](500) NULL,
 CONSTRAINT [PK_Ticket_Comentarios] PRIMARY KEY CLUSTERED 
(
	[idComentario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket_Prioridades]    Script Date: 05/08/2024 13:58:37 ******/
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
/****** Object:  Table [dbo].[Ticket_Sintomas]    Script Date: 05/08/2024 13:58:37 ******/
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
/****** Object:  Table [dbo].[Tickets]    Script Date: 05/08/2024 13:58:37 ******/
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
	[idLocal] [int] NULL,
	[idGrupoAtribuicao] [int] NULL,
	[idGrupoCategoriaTecnico] [int] NULL,
	[idGrupoSolicitante] [int] NULL,
	[idPrioridadeTicket] [int] NULL,
	[idSubCategoriaRelatorio] [int] NULL,
	[numeroTicket] [nvarchar](50) NULL,
	[descricaoTicket] [nvarchar](500) NULL,
	[resolucaoTicket] [nvarchar](500) NULL,
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
SET IDENTITY_INSERT [dbo].[Ticket_Comentarios] ON 

INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (1, 1, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (2, 1, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (3, 1, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (4, 1, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (5, 1, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (6, 1, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (7, 1, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (8, 1, N'Somente em sua maquina ?')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (9, 1, N'Em todo departamento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (10, 2, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (11, 2, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (12, 2, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (13, 2, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (14, 2, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (15, 2, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (16, 2, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (17, 2, N'Somente em sua maquina ?')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (18, 2, N'Somente na minha maquina')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (19, 3, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (20, 3, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (21, 3, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (22, 3, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (23, 3, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (24, 3, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (25, 3, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (26, 3, N'Somente em sua maquina ?')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (27, 3, N'Em todo departamento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (28, 4, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (29, 4, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (30, 4, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (31, 4, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (32, 4, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (33, 4, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (34, 4, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (35, 4, N'Somente em sua maquina ?')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (36, 4, N'Somente na minha maquina')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (37, 5, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (38, 5, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (39, 5, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (40, 5, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (41, 5, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (42, 5, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (43, 5, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (44, 5, N'Impressora esta ligada?')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (45, 5, N'Sim, somente em minha maquina não imprime')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (46, 6, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (47, 6, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (48, 6, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (49, 6, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (50, 6, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (51, 6, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (52, 6, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (53, 6, N'Somente em sua maquina ?')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (54, 6, N'Somente na minha maquina')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (55, 7, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (56, 7, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (57, 7, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (58, 7, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (59, 7, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (60, 7, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (61, 7, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (62, 7, N'Informar perfil espelho')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (63, 7, N'Usar perfil espelho XXXXXXX')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (64, 8, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (65, 8, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (66, 8, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (67, 8, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (68, 8, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (69, 8, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (70, 8, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (71, 8, N'Informar perfil espelho')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (72, 8, N'Usar perfil espelho XXXXXXX')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (73, 9, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (74, 9, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (75, 9, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (76, 9, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (77, 9, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (78, 9, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (79, 9, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (80, 9, N'Anexar aval e planilha de acesso')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (81, 9, N'Realizado envio das informações solicitadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (82, 10, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (83, 10, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (84, 10, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (85, 10, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (86, 10, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (87, 10, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (88, 10, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (89, 10, N'Impressora esta ligada?')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (90, 10, N'Não, estamos sem energia no local')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (91, 11, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (92, 11, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (93, 11, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (94, 11, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (95, 11, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (96, 11, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (97, 11, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (98, 11, N'Informar perfil espelho')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (99, 11, N'Usar perfil espelho XXXXXXX')
GO
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (100, 12, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (101, 12, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (102, 12, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (103, 12, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (104, 12, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (105, 12, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (106, 12, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (107, 12, N'Informar data e local entrega')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (108, 12, N'Equipamentos liberados para entrega')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (109, 13, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (110, 13, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (111, 13, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (112, 13, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (113, 13, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (114, 13, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (115, 13, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (116, 13, N'Anexar aval e planilha de acesso')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (117, 13, N'Realizado envio das informações solicitadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (118, 14, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (119, 14, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (120, 14, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (121, 14, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (122, 14, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (123, 14, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (124, 14, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (125, 14, N'Somente em sua maquina ?')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (126, 14, N'Em todo departamento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (127, 15, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (128, 15, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (129, 15, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (130, 15, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (131, 15, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (132, 15, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (133, 15, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (134, 15, N'Somente em sua maquina ?')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (135, 15, N'Em todo departamento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (136, 16, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (137, 16, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (138, 16, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (139, 16, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (140, 16, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (141, 16, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (142, 16, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (143, 16, N'Informar data e local entrega')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (144, 16, N'Equipamentos liberados para entrega')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (145, 17, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (146, 17, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (147, 17, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (148, 17, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (149, 17, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (150, 17, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (151, 17, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (152, 17, N'Enviar aval gestor imediato para seguirmos com criação do acesso')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (153, 17, N'Realizado envio das informações solicitadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (154, 18, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (155, 18, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (156, 18, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (157, 18, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (158, 18, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (159, 18, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (160, 18, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (161, 18, N'Configurar Smartphone XXXX')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (162, 18, N'informar melhor horário para atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (163, 19, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (164, 19, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (165, 19, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (166, 19, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (167, 19, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (168, 19, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (169, 19, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (170, 19, N'Realizar entrega dos equipamentos ao time de gestão de ativos')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (171, 19, N'Realizado entrega dos equipamentos')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (172, 20, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (173, 20, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (174, 20, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (175, 20, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (176, 20, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (177, 20, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (178, 20, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (179, 20, N'Informar local e aval para criação ponto de rede')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (180, 20, N'Aguardando passagem do cabeamento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (181, 21, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (182, 21, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (183, 21, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (184, 21, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (185, 21, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (186, 21, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (187, 21, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (188, 21, N'Anexar aval e planilha de acesso')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (189, 21, N'Realizado envio das informações solicitadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (190, 22, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (191, 22, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (192, 22, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (193, 22, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (194, 22, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (195, 22, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (196, 22, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (197, 22, N'Anexar aval e planilha de acesso')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (198, 22, N'Realizado envio das informações solicitadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (199, 23, N'Aguardando atendimento')
GO
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (200, 23, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (201, 23, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (202, 23, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (203, 23, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (204, 23, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (205, 23, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (206, 23, N'Solicito notebook para utilizar')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (207, 23, N'Retirar equipamento junto ao time de Field Service')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (208, 24, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (209, 24, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (210, 24, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (211, 24, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (212, 24, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (213, 24, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (214, 24, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (215, 24, N'Informar perfil espelho')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (216, 24, N'Usar perfil espelho XXXXXXX')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (217, 25, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (218, 25, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (219, 25, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (220, 25, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (221, 25, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (222, 25, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (223, 25, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (224, 25, N'Anexar aval e planilha de acesso')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (225, 25, N'Realizado envio das informações solicitadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (226, 26, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (227, 26, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (228, 26, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (229, 26, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (230, 26, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (231, 26, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (232, 26, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (233, 26, N'Configurar Smartphone XXXX')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (234, 26, N'informar melhor horário para atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (235, 27, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (236, 27, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (237, 27, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (238, 27, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (239, 27, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (240, 27, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (241, 27, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (242, 27, N'Equipamento danificado')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (243, 27, N'Trocar carcaça')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (244, 28, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (245, 28, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (246, 28, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (247, 28, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (248, 28, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (249, 28, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (250, 28, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (251, 28, N'Não consigo logar em minha maquina')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (252, 28, N'Informar os dados abaixo')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (253, 29, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (254, 29, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (255, 29, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (256, 29, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (257, 29, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (258, 29, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (259, 29, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (260, 29, N'Informar perfil espelho')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (261, 29, N'Usar perfil espelho XXXXXXX')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (262, 30, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (263, 30, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (264, 30, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (265, 30, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (266, 30, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (267, 30, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (268, 30, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (269, 30, N'Somente em sua maquina ?')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (270, 30, N'Em todo departamento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (271, 31, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (272, 31, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (273, 31, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (274, 31, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (275, 31, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (276, 31, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (277, 31, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (278, 31, N'Informar acesso a ser liberado')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (279, 31, N'Por favor liberar acesso a pasta XXXXXX')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (280, 32, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (281, 32, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (282, 32, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (283, 32, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (284, 32, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (285, 32, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (286, 32, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (287, 32, N'Somente em sua maquina ?')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (288, 32, N'Em todo departamento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (289, 33, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (290, 33, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (291, 33, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (292, 33, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (293, 33, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (294, 33, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (295, 33, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (296, 33, N'Preencher planilha em anexo para criação das Ics')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (297, 33, N'Planilha enviada com informações solicitadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (298, 34, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (299, 34, N'Em atendimento')
GO
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (300, 34, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (301, 34, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (302, 34, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (303, 34, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (304, 34, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (305, 34, N'Anexar aval e planilha de acesso')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (306, 34, N'Realizado envio das informações solicitadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (307, 35, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (308, 35, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (309, 35, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (310, 35, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (311, 35, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (312, 35, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (313, 35, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (314, 35, N'Anexar aval e planilha de acesso')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (315, 35, N'Realizado envio das informações solicitadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (316, 36, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (317, 36, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (318, 36, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (319, 36, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (320, 36, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (321, 36, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (322, 36, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (323, 36, N'Informar data e local entrega')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (324, 36, N'Equipamentos liberados para entrega')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (325, 37, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (326, 37, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (327, 37, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (328, 37, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (329, 37, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (330, 37, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (331, 37, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (332, 37, N'Informar local e aval para criação ponto de rede')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (333, 37, N'Aguardando passagem do cabeamento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (334, 38, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (335, 38, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (336, 38, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (337, 38, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (338, 38, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (339, 38, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (340, 38, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (341, 38, N'Informar local e aval para criação ponto de rede')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (342, 38, N'Aguardando passagem do cabeamento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (343, 39, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (344, 39, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (345, 39, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (346, 39, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (347, 39, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (348, 39, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (349, 39, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (350, 39, N'Porta lenta ao abrir')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (351, 39, N'Por favor informar local')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (352, 40, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (353, 40, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (354, 40, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (355, 40, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (356, 40, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (357, 40, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (358, 40, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (359, 40, N'Porta lenta ao abrir')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (360, 40, N'Por favor informar local')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (361, 41, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (362, 41, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (363, 41, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (364, 41, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (365, 41, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (366, 41, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (367, 41, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (368, 41, N'Somente em sua maquina ?')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (369, 41, N'Somente na minha maquina')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (370, 42, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (371, 42, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (372, 42, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (373, 42, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (374, 42, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (375, 42, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (376, 42, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (377, 42, N'Somente em sua maquina ?')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (378, 42, N'Somente na minha maquina')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (379, 43, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (380, 43, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (381, 43, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (382, 43, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (383, 43, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (384, 43, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (385, 43, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (386, 43, N'Somente em sua maquina ?')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (387, 43, N'Somente na minha maquina')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (388, 44, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (389, 44, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (390, 44, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (391, 44, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (392, 44, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (393, 44, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (394, 44, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (395, 44, N'Somente em sua maquina ?')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (396, 44, N'Em todo departamento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (397, 45, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (398, 45, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (399, 45, N'Enviar evidencias')
GO
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (400, 45, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (401, 45, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (402, 45, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (403, 45, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (404, 45, N'Somente em sua maquina ?')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (405, 45, N'Em todo departamento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (406, 46, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (407, 46, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (408, 46, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (409, 46, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (410, 46, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (411, 46, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (412, 46, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (413, 46, N'Somente em sua maquina ?')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (414, 46, N'Em todo departamento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (415, 47, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (416, 47, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (417, 47, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (418, 47, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (419, 47, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (420, 47, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (421, 47, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (422, 47, N'Papel atolado')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (423, 47, N'informar local da impressora?')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (424, 48, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (425, 48, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (426, 48, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (427, 48, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (428, 48, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (429, 48, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (430, 48, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (431, 48, N'Configurar Smartphone XXXX')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (432, 48, N'informar melhor horário para atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (433, 49, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (434, 49, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (435, 49, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (436, 49, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (437, 49, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (438, 49, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (439, 49, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (440, 49, N'Informar numero da nota de entrada')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (441, 49, N'Informação anxeada conforme solicitado')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (442, 50, N'Aguardando atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (443, 50, N'Em atendimento')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (444, 50, N'Enviar evidencias')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (445, 50, N'Evidencias Anexadas')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (446, 50, N'Problema Persiste')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (447, 50, N'Acionando Nivel 2')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (448, 50, N'Acionando Nvel 3')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (449, 50, N'Informar data para ativação')
INSERT [dbo].[Ticket_Comentarios] ([idComentario], [idTicket], [textoComentario]) VALUES (450, 50, N'Data informadas conforme solicitado')
SET IDENTITY_INSERT [dbo].[Ticket_Comentarios] OFF
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
SET IDENTITY_INSERT [dbo].[Tickets] ON 

INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (1, 1, 1, 0, 1, 1, 1, 1, 1, 3, 1, N'INC0194887', N'Lentidão sistema', N'Solução aplicada Reinciado serviço database', N'', CAST(N'2024-02-09T17:15:47.000' AS DateTime), CAST(N'2024-05-03T14:34:26.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-01T18:00:04.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (2, 1, 1, 0, 1, 1, 1, 1, 1, 3, 2, N'INC0201867', N'Lentidão sistema', N'Solução aplicada Reinciado sistema operacional local', N'', CAST(N'2024-03-22T08:08:10.000' AS DateTime), CAST(N'2024-05-02T14:40:15.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime), CAST(N'2024-05-01T18:00:04.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (3, 1, 1, 0, 1, 2, 1, 1, 1, 3, 3, N'INC0204817', N'Lentidão sistema', N'Solução aplicada Reinciado serviço database', N'Download', CAST(N'2024-04-16T13:35:32.000' AS DateTime), CAST(N'2024-05-03T14:54:03.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-01T18:00:04.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (4, 1, 1, 0, 1, 1, 1, 1, 1, 3, 4, N'INC0205119', N'Lentidão sistema', N'Solução aplicada Reinciado sistema operacional local', N'', CAST(N'2024-04-18T07:17:26.000' AS DateTime), CAST(N'2024-05-02T12:29:14.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime), CAST(N'2024-05-01T18:00:04.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (5, 1, 1, 0, 2, 1, 2, 2, 1, 3, 5, N'INC0208361', N'Impressora Não Imprime', N'Realizado instalção driver impressora.', N'Outros', CAST(N'2024-05-02T11:47:19.000' AS DateTime), CAST(N'2024-05-02T13:29:23.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime), CAST(N'2024-05-01T18:00:04.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (6, 1, 1, 0, 2, 3, 2, 2, 1, 3, 6, N'INC0208388', N'Sistema não abre', N'Solução aplicada Reinciado sistema operacional local', N'', CAST(N'2024-05-02T16:59:33.000' AS DateTime), CAST(N'2024-05-02T17:49:39.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime), CAST(N'2024-05-01T18:00:04.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (7, 2, 2, 1, 3, 1, 3, 3, 1, 3, 7, N'TASK0900023', N'Incluir perfil espelho', N'Realizado conforme solicitado o espelhamento do perfil', N'Com SAP', CAST(N'2024-02-19T08:16:45.000' AS DateTime), CAST(N'2024-05-01T17:00:04.000' AS DateTime), CAST(N'2024-04-26T00:00:00.000' AS DateTime), CAST(N'2024-05-01T17:00:04.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (8, 2, 2, 2, 3, 1, 3, 3, 1, 2, 7, N'TASK0900593', N'Troca de pefil', N'Realizado conforme solicitado o espelhamento do perfil', N'Com SAP', CAST(N'2024-02-19T13:14:10.000' AS DateTime), CAST(N'2024-05-01T11:00:05.000' AS DateTime), CAST(N'2024-04-26T00:00:00.000' AS DateTime), CAST(N'2024-05-01T11:00:05.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (9, 2, 2, 3, 2, 3, 4, 2, 1, 3, 8, N'TASK0902990', N'Criar usuário de rede', N'Usuário de rede criado e enviado os dados ao gestor imediato', N'Com SAP', CAST(N'2024-02-21T15:57:24.000' AS DateTime), CAST(N'2024-05-01T18:00:04.000' AS DateTime), CAST(N'2024-04-26T00:00:00.000' AS DateTime), CAST(N'2024-05-01T18:00:04.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (10, 1, 3, 4, 2, 1, 5, 2, 1, 4, 9, N'TASK0912173', N'Impressora Não Imprime', N'Realizado acionamento time de facilites local.', N'Outros', CAST(N'2024-03-05T16:55:51.000' AS DateTime), CAST(N'2024-05-03T16:17:38.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-03T16:17:38.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (11, 2, 2, 5, 2, 1, 4, 2, 1, 3, 7, N'TASK0919208', N'Incluir perfil espelho', N'Realizado conforme solicitado o espelhamento do perfil', N'Com SAP', CAST(N'2024-03-14T18:18:18.000' AS DateTime), CAST(N'2024-05-01T18:00:40.000' AS DateTime), CAST(N'2024-04-26T00:00:00.000' AS DateTime), CAST(N'2024-05-01T18:00:40.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (12, 2, 4, 6, 4, 3, 6, 4, 1, 3, 10, N'TASK0926414', N'Solicitação de Equipamento', N'Equipamentos entregue e termos assinados', N'Capitais e Regiões Metropolitanas', CAST(N'2024-03-25T17:17:59.000' AS DateTime), CAST(N'2024-05-01T16:00:04.000' AS DateTime), CAST(N'2024-04-26T00:00:00.000' AS DateTime), CAST(N'2024-05-01T16:00:04.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (13, 1, 2, 7, 2, 1, 4, 2, 1, 3, 11, N'TASK0928474', N'Atualização de Acesso', N'Usuário de rede criado e enviado os dados ao gestor imediato', N'', CAST(N'2024-03-28T09:31:03.000' AS DateTime), CAST(N'2024-05-02T09:08:05.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime), CAST(N'2024-05-02T09:08:06.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (14, 1, 5, 8, 2, 1, 5, 2, 1, 2, 12, N'TASK0929053', N'Suporte Funcional', N'Solução aplicada Reinciado serviço database', N'Ordem de Produção', CAST(N'2024-03-28T17:23:31.000' AS DateTime), CAST(N'2024-05-03T08:41:16.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-03T08:41:17.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (15, 1, 1, 9, 1, 1, 1, 1, 1, 3, 13, N'TASK0931383', N'Sistema lento', N'Solução aplicada Reinciado serviço database', N'', CAST(N'2024-04-02T13:05:46.000' AS DateTime), CAST(N'2024-05-02T10:41:16.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime), CAST(N'2024-04-22T15:05:12.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (16, 2, 4, 10, 4, 3, 7, 4, 1, 3, 14, N'TASK0933095', N'Troca de Equipamento', N'Equipamentos entregue e termos assinados', N'Acima de 300Km', CAST(N'2024-04-04T10:37:29.000' AS DateTime), CAST(N'2024-05-01T13:00:42.000' AS DateTime), CAST(N'2024-04-26T00:00:00.000' AS DateTime), CAST(N'2024-05-01T13:00:42.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (17, 1, 2, 11, 2, 2, 5, 2, 1, 3, 15, N'TASK0933890', N'Criar Perfil SAP', N'Ralizado a criação do acesso, enviado ao gestor imediato as informações.', N'', CAST(N'2024-04-05T09:45:04.000' AS DateTime), CAST(N'2024-05-03T09:42:44.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-03T09:42:44.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (18, 1, 4, 12, 4, 1, 8, 4, 1, 3, 16, N'TASK0935862', N'Configuração de Equipamento', N'Realizado a configuração do smartphone conforme solicitado', N'', CAST(N'2024-04-09T09:32:28.000' AS DateTime), CAST(N'2024-05-02T14:22:32.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime), CAST(N'2024-05-02T14:22:33.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (19, 2, 4, 6, 4, 1, 8, 4, 1, 3, 17, N'TASK0937918', N'Devolução de Equipamento', N'Equipamentos devolvidos ao estoque local', N'Capitais e Regiões Metropolitanas', CAST(N'2024-04-11T12:02:32.000' AS DateTime), CAST(N'2024-05-01T10:02:12.000' AS DateTime), CAST(N'2024-04-26T00:00:00.000' AS DateTime), CAST(N'2024-05-01T10:02:12.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (20, 2, 6, 13, 2, 3, 4, 2, 1, 3, 18, N'TASK0939623', N'Solicito novo ponto de rede', N'Pontos criados e ativados', N'', CAST(N'2024-04-15T10:39:31.000' AS DateTime), CAST(N'2024-05-01T11:02:04.000' AS DateTime), CAST(N'2024-04-26T00:00:00.000' AS DateTime), CAST(N'2024-05-01T11:02:04.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (21, 2, 7, 14, 2, 1, 4, 2, 1, 3, 19, N'TASK0942133', N'Criar usuário de rede', N'Usuário de rede criado e enviado os dados ao gestor imediato', N'', CAST(N'2024-04-17T18:12:59.000' AS DateTime), CAST(N'2024-05-01T10:02:56.000' AS DateTime), CAST(N'2024-04-26T00:00:00.000' AS DateTime), CAST(N'2024-05-01T10:02:56.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (22, 1, 2, 15, 3, 2, 3, 3, 1, 3, 20, N'TASK0944627', N'Prorrogação de Acessos', N'Realizado a prorrogação dos acessos conforme solicitado', N'', CAST(N'2024-04-22T12:12:06.000' AS DateTime), CAST(N'2024-05-02T19:54:09.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime), CAST(N'2024-05-02T19:54:09.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (23, 2, 4, 16, 4, 1, 8, 4, 1, 3, 21, N'TASK0944775', N'Empréstimo de Equipamento', N'Equipamento entregue conforme termo assinado e anexado', N'', CAST(N'2024-04-22T14:25:11.000' AS DateTime), CAST(N'2024-05-01T14:03:05.000' AS DateTime), CAST(N'2024-04-26T00:00:00.000' AS DateTime), CAST(N'2024-05-01T14:03:05.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (24, 1, 2, 17, 3, 3, 3, 3, 1, 3, 7, N'TASK0945016', N'Alteração de Perfil', N'Realizado conforme solicitado o espelhamento do perfil', N'Com SAP', CAST(N'2024-04-22T16:39:18.000' AS DateTime), CAST(N'2024-05-03T09:14:25.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-03T09:14:25.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (25, 2, 2, 18, 3, 3, 9, 3, 1, 3, 22, N'TASK0945485', N'Suporte Acessos', N'Usuário de rede criado e enviado os dados ao gestor imediato', N'Sistema Não SAP', CAST(N'2024-04-23T10:20:43.000' AS DateTime), CAST(N'2024-05-03T11:11:47.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime), CAST(N'2024-05-03T11:11:47.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (26, 2, 8, 19, 4, 3, 10, 4, 1, 3, 23, N'TASK0946570', N'Configuração de Equipamento', N'Realizado a configuração do smartphone conforme solicitado', N'Informação', CAST(N'2024-04-24T11:33:29.000' AS DateTime), CAST(N'2024-05-01T10:05:04.000' AS DateTime), CAST(N'2024-04-26T00:00:00.000' AS DateTime), CAST(N'2024-05-01T10:05:04.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (27, 2, 4, 20, 4, 3, 8, 4, 1, 3, 24, N'TASK0946697', N'Manutenção de Equipamento Locado', N'Realizado a troca da carcaça', N'Simpress', CAST(N'2024-04-24T13:23:11.000' AS DateTime), CAST(N'2024-05-01T12:06:46.000' AS DateTime), CAST(N'2024-04-26T00:00:00.000' AS DateTime), CAST(N'2024-05-01T12:06:46.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (28, 2, 2, 21, 3, 2, 9, 3, 1, 1, 25, N'TASK0946794', N'Reset/Desbloqueio de Senha', N'Realizado desbloqueio da senha de rede', N'', CAST(N'2024-04-24T14:44:00.000' AS DateTime), CAST(N'2024-05-01T18:02:03.000' AS DateTime), CAST(N'2024-04-26T00:00:00.000' AS DateTime), CAST(N'2024-05-01T18:02:03.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (29, 1, 2, 22, 3, 1, 9, 3, 1, 3, 26, N'TASK0947172', N'Troca de Acessos', N'Realizado conforme solicitado o espelhamento do perfil', N'Sem SAP', CAST(N'2024-04-25T08:46:11.000' AS DateTime), CAST(N'2024-05-02T15:37:36.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime), CAST(N'2024-05-02T15:37:37.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (30, 2, 1, 19, 1, 2, 1, 1, 1, 3, 27, N'TASK0947321', N'Sistema lento', N'Solução aplicada Reinciado serviço database', N'Informação', CAST(N'2024-04-25T10:26:02.000' AS DateTime), CAST(N'2024-05-01T17:04:12.000' AS DateTime), CAST(N'2024-04-26T00:00:00.000' AS DateTime), CAST(N'2024-05-01T17:04:12.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (31, 2, 2, 23, 3, 1, 9, 3, 1, 3, 11, N'TASK0947870', N'Atualização de Acesso', N'Acesso liberado de leitura na pasta XXXXXXX', N'', CAST(N'2024-04-25T18:02:24.000' AS DateTime), CAST(N'2024-05-01T10:07:52.000' AS DateTime), CAST(N'2024-04-26T00:00:00.000' AS DateTime), CAST(N'2024-05-01T10:07:52.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (32, 1, 1, 9, 1, 1, 1, 1, 1, 3, 2, N'TASK0947940', N'Sistema lento', N'Solução aplicada Reinciado serviço database', N'', CAST(N'2024-04-26T07:37:03.000' AS DateTime), CAST(N'2024-05-03T11:51:07.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-03T11:51:07.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (33, 2, 4, 24, 2, 3, 11, 5, 1, 3, 28, N'TASK0948052', N'Item de Configuração', N'Raealizado a criação das Ics solicitadas.', N'', CAST(N'2024-04-26T09:46:43.000' AS DateTime), CAST(N'2024-05-01T11:07:17.000' AS DateTime), CAST(N'2024-04-26T00:00:00.000' AS DateTime), CAST(N'2024-05-01T11:07:17.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (34, 2, 2, 25, 3, 2, 9, 3, 1, 3, 29, N'TASK0948363', N'Revogação de Acesso', N'Realizado a revogação dos acessos conforme solicitado', N'Sem SAP', CAST(N'2024-04-26T14:36:09.000' AS DateTime), CAST(N'2024-05-01T17:06:56.000' AS DateTime), CAST(N'2024-04-26T00:00:00.000' AS DateTime), CAST(N'2024-05-01T17:06:56.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (35, 1, 2, 26, 3, 1, 3, 3, 1, 2, 8, N'TASK0948365', N'Liberação de Acesso', N'Usuário de rede criado e enviado os dados ao gestor imediato', N'Com SAP', CAST(N'2024-04-26T14:39:07.000' AS DateTime), CAST(N'2024-05-03T09:35:45.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-03T08:05:24.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (36, 1, 4, 6, 2, 1, 8, 5, 1, 3, 10, N'TASK0948800', N'Solicitação de Equipamento', N'Equipamentos entregue e termos assinados', N'Capitais e Regiões Metropolitanas', CAST(N'2024-04-29T09:29:21.000' AS DateTime), CAST(N'2024-05-02T10:00:14.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime), CAST(N'2024-05-02T10:00:14.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (37, 1, 4, 27, 2, 1, 8, 5, 1, 3, 30, N'TASK0948949', N'Solicito novo ponto de rede', N'Pontos criados e ativados', N'', CAST(N'2024-04-29T11:15:10.000' AS DateTime), CAST(N'2024-05-03T13:43:13.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-03T13:43:14.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (38, 1, 6, 28, 4, 1, 8, 4, 1, 3, 18, N'TASK0950427', N'Solicito novo ponto de rede', N'Pontos criados e ativados', N'Suporte a Instalação e Configuração de Aplicativos', CAST(N'2024-05-02T05:37:17.000' AS DateTime), CAST(N'2024-05-03T00:34:26.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-03T00:34:26.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (39, 1, 4, 29, 4, 2, 8, 4, 1, 3, 31, N'TASK0950560', N'Controle de Acesso e Relógio de Ponto', N'Realizado restart do serviço local', N'Porta', CAST(N'2024-05-02T09:02:47.000' AS DateTime), CAST(N'2024-05-02T15:13:57.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime), CAST(N'2024-05-02T15:13:57.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (40, 1, 4, 29, 4, 3, 8, 4, 1, 3, 31, N'TASK0950674', N'Controle de Acesso e Relógio de Ponto', N'Realizado restart do serviço local', N'REP', CAST(N'2024-05-02T09:43:30.000' AS DateTime), CAST(N'2024-05-02T13:03:35.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime), CAST(N'2024-05-02T13:03:35.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (41, 2, 1, 9, 1, 1, 1, 1, 1, 3, 32, N'TASK0950875', N'Sistema lento', N'Solução aplicada Reinciado sistema operacional local', N'', CAST(N'2024-05-02T11:33:41.000' AS DateTime), CAST(N'2024-05-02T16:30:38.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime), CAST(N'2024-05-02T16:30:36.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (42, 1, 1, 30, 1, 3, 1, 1, 1, 3, 33, N'TASK0951510', N'Sistema lento', N'Solução aplicada Reinciado sistema operacional local', N'Outros', CAST(N'2024-05-03T08:37:13.000' AS DateTime), CAST(N'2024-05-03T09:57:23.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-03T09:57:23.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (43, 1, 4, 31, 4, 2, 8, 4, 1, 3, 30, N'TASK0951667', N'Sistema lento', N'Solução aplicada Reinciado sistema operacional local', N'', CAST(N'2024-05-03T09:44:47.000' AS DateTime), CAST(N'2024-05-03T09:49:36.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-03T09:49:36.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (44, 1, 1, 19, 1, 2, 1, 1, 1, 3, 3, N'TASK0951715', N'Sistema lento', N'Solução aplicada Reinciado serviço database', N'Informação', CAST(N'2024-05-03T10:04:45.000' AS DateTime), CAST(N'2024-05-03T17:17:11.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-03T17:17:11.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (45, 1, 4, 32, 2, 3, 12, 5, 1, 3, 30, N'TASK0951951', N'Sistema lento', N'Solução aplicada Reinciado serviço database', N'', CAST(N'2024-05-03T12:55:09.000' AS DateTime), CAST(N'2024-05-03T13:18:47.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-03T12:59:36.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (46, 1, 4, 32, 2, 3, 12, 5, 1, 3, 30, N'TASK0951957', N'Sistema lento', N'Solução aplicada Reinciado serviço database', N'', CAST(N'2024-05-03T13:02:51.000' AS DateTime), CAST(N'2024-05-03T13:18:29.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-03T13:06:37.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (47, 1, 9, 33, 4, 3, 8, 4, 1, 3, 34, N'TASK0951959', N'Suporte Impressoras', N'Realizado a retirada dos papeis atolados', N'', CAST(N'2024-05-03T13:06:27.000' AS DateTime), CAST(N'2024-05-03T13:34:03.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-03T13:34:03.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (48, 1, 4, 32, 2, 3, 12, 5, 1, 3, 30, N'TASK0951964', N'Configuração de Equipamento', N'Realizado a configuração do smartphone conforme solicitado', N'', CAST(N'2024-05-03T13:15:34.000' AS DateTime), CAST(N'2024-05-03T13:18:10.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-03T13:18:10.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (49, 1, 4, 34, 2, 3, 8, 5, 1, 3, 30, N'TASK0951989', N'Transferência de Equipamento', N'Nota de saida anexada e enviada para seguir com transferencia', N'', CAST(N'2024-05-03T13:51:37.000' AS DateTime), CAST(N'2024-05-03T13:53:26.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-03T13:53:26.000' AS DateTime))
INSERT [dbo].[Tickets] ([idTicket], [idEstadoRelatorio], [idCategoriaRelatorio], [idSintoma], [idCategoriaTecnico], [idLocal], [idGrupoAtribuicao], [idGrupoCategoriaTecnico], [idGrupoSolicitante], [idPrioridadeTicket], [idSubCategoriaRelatorio], [numeroTicket], [descricaoTicket], [resolucaoTicket], [qualificacaoSintoma], [dataAbertura], [dataAtualizacao], [dataRelatorioResolvido], [dataEncerramento]) VALUES (50, 1, 10, 35, 4, 3, 10, 4, 1, 3, 35, N'TASK0952138', N'Roaming Internacional', N'Ativação do Roaming Internacional concluida conforme solicitado', N'', CAST(N'2024-05-03T15:52:12.000' AS DateTime), CAST(N'2024-05-03T16:26:54.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2024-05-03T16:26:54.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tickets] OFF
GO
ALTER TABLE [dbo].[Relatorio_Subcategorias]  WITH CHECK ADD  CONSTRAINT [FK_Relatorio_Subcategorias_Relatorio_Categorias] FOREIGN KEY([idCategoriaRelatorio])
REFERENCES [dbo].[Relatorio_Categorias] ([idCategoriaRelatorio])
GO
ALTER TABLE [dbo].[Relatorio_Subcategorias] CHECK CONSTRAINT [FK_Relatorio_Subcategorias_Relatorio_Categorias]
GO
ALTER TABLE [dbo].[Ticket_Comentarios]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Comentarios_Tickets] FOREIGN KEY([idTicket])
REFERENCES [dbo].[Tickets] ([idTicket])
GO
ALTER TABLE [dbo].[Ticket_Comentarios] CHECK CONSTRAINT [FK_Ticket_Comentarios_Tickets]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Categorias_Tecnico] FOREIGN KEY([idCategoriaTecnico])
REFERENCES [dbo].[Categorias_Tecnico] ([idCategoriaTecnico])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Categorias_Tecnico]
GO
ALTER TABLE [dbo].[Tickets]  WITH CHECK ADD  CONSTRAINT [FK_Tickets_Grupos_Atribuicao] FOREIGN KEY([idGrupoAtribuicao])
REFERENCES [dbo].[Grupos_Atribuicao] ([idGrupoAtribuicao])
GO
ALTER TABLE [dbo].[Tickets] CHECK CONSTRAINT [FK_Tickets_Grupos_Atribuicao]
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
ALTER TABLE [dbo].[Tickets]  WITH NOCHECK ADD  CONSTRAINT [FK_Tickets_Ticket_Sintomas] FOREIGN KEY([idSintoma])
REFERENCES [dbo].[Ticket_Sintomas] ([idSintomaTicket])
GO
ALTER TABLE [dbo].[Tickets] NOCHECK CONSTRAINT [FK_Tickets_Ticket_Sintomas]
GO
USE [master]
GO
ALTER DATABASE [SoftTek] SET  READ_WRITE 
GO
