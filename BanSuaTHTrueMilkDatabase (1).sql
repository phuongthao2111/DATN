USE [master]
GO
/****** Object:  Database [BanSuaTHTrueMilkDataBase]    Script Date: 4/5/2024 9:13:40 AM ******/
CREATE DATABASE [BanSuaTHTrueMilkDataBase] ON  PRIMARY 
( NAME = N'BanSuaTHTrueMilkDataBase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BanSuaTHTrueMilkDataBase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BanSuaTHTrueMilkDataBase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BanSuaTHTrueMilkDataBase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BanSuaTHTrueMilkDataBase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET ARITHABORT OFF 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET RECOVERY FULL 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET  MULTI_USER 
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BanSuaTHTrueMilkDataBase', N'ON'
GO
USE [BanSuaTHTrueMilkDataBase]
GO
/****** Object:  Table [dbo].[carts]    Script Date: 4/5/2024 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[user_id] [int] NULL,
	[price] [decimal](18, 0) NULL,
	[quantity] [int] NULL,
	[size] [int] NULL,
 CONSTRAINT [PK_carts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 4/5/2024 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NULL,
	[slug] [varchar](200) NULL,
	[status] [int] NULL,
	[created_at] [datetime2](7) NOT NULL,
	[updated_at] [datetime2](7) NULL,
	[icon] [varchar](max) NULL,
	[isdetele] [int] NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[color]    Script Date: 4/5/2024 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[color](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NULL,
	[code] [varchar](200) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_color] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contacts]    Script Date: 4/5/2024 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [nvarchar](250) NULL,
	[phone_number] [varchar](11) NULL,
	[note] [text] NULL,
	[status] [int] NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_contacts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[images]    Script Date: 4/5/2024 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NULL,
	[alt] [nvarchar](400) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_images] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 4/5/2024 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[price] [decimal](18, 0) NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_order_details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 4/5/2024 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](250) NULL,
	[user_id] [int] NULL,
	[note] [nvarchar](500) NULL,
	[full_name] [nvarchar](150) NULL,
	[phone_number] [varchar](150) NULL,
	[review] [int] NULL,
	[payment] [int] NOT NULL,
	[status] [int] NULL,
	[total] [int] NULL,
	[fee_ship] [int] NULL,
	[created_at] [datetime2](7) NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[posts]    Script Date: 4/5/2024 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[posts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](250) NULL,
	[slug] [varchar](500) NULL,
	[avatar] [varchar](200) NULL,
	[content] [nvarchar](max) NULL,
	[short_content] [nvarchar](500) NULL,
	[created_at] [datetime2](7) NULL,
	[updated_at] [datetime2](7) NULL,
	[status] [int] NULL,
	[author] [int] NULL,
 CONSTRAINT [PK_posts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_images]    Script Date: 4/5/2024 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[image_id] [int] NULL,
 CONSTRAINT [PK_product_images] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_quantity]    Script Date: 4/5/2024 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_quantity](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[color_id] [int] NULL,
	[size_id] [int] NULL,
	[totalimport] [int] NULL,
	[totalsell] [int] NULL,
	[totalinventory] [int] NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_product_quantity] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 4/5/2024 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NULL,
	[category_id] [int] NULL,
	[price_sell] [decimal](18, 0) NULL,
	[description] [nvarchar](max) NULL,
	[status] [int] NULL,
	[price_reduced] [decimal](18, 0) NULL,
	[horizontal] [int] NULL,
	[trademark] [nvarchar](500) NULL,
	[price_import] [decimal](18, 0) NULL,
	[trademarkId] [int] NULL,
	[ishidden] [int] NULL,
	[sizes] [varchar](max) NULL,
	[images] [varchar](max) NULL,
	[number_import] [int] NULL,
	[cover_type] [int] NULL,
	[shortdescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[size]    Script Date: 4/5/2024 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[size](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_size] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 4/5/2024 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [nvarchar](250) NULL,
	[phone_number] [varchar](11) NULL,
	[email] [varchar](50) NULL,
	[avatar] [varchar](500) NULL,
	[code] [varchar](10) NULL,
	[address] [nvarchar](max) NULL,
	[role] [int] NULL,
	[password] [varchar](32) NULL,
	[status] [int] NULL,
	[register_date] [datetime2](7) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_carts_product_id]    Script Date: 4/5/2024 9:13:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_carts_product_id] ON [dbo].[carts]
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_order_details_order_id]    Script Date: 4/5/2024 9:13:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_order_details_order_id] ON [dbo].[order_details]
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_order_details_product_id]    Script Date: 4/5/2024 9:13:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_order_details_product_id] ON [dbo].[order_details]
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_orders_user_id]    Script Date: 4/5/2024 9:13:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_orders_user_id] ON [dbo].[orders]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_product_images_image_id]    Script Date: 4/5/2024 9:13:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_product_images_image_id] ON [dbo].[product_images]
(
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_product_images_product_id]    Script Date: 4/5/2024 9:13:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_product_images_product_id] ON [dbo].[product_images]
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_product_quantity_color_id]    Script Date: 4/5/2024 9:13:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_product_quantity_color_id] ON [dbo].[product_quantity]
(
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_product_quantity_product_id]    Script Date: 4/5/2024 9:13:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_product_quantity_product_id] ON [dbo].[product_quantity]
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_product_quantity_size_id]    Script Date: 4/5/2024 9:13:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_product_quantity_size_id] ON [dbo].[product_quantity]
(
	[size_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_products_category_id]    Script Date: 4/5/2024 9:13:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_products_category_id] ON [dbo].[products]
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[carts]  WITH CHECK ADD  CONSTRAINT [FK_carts_products_product_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[carts] CHECK CONSTRAINT [FK_carts_products_product_id]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FK_order_details_orders_order_id] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FK_order_details_orders_order_id]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FK_order_details_products_product_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FK_order_details_products_product_id]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_users_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_users_user_id]
GO
ALTER TABLE [dbo].[product_images]  WITH CHECK ADD  CONSTRAINT [FK_product_images_images_image_id] FOREIGN KEY([image_id])
REFERENCES [dbo].[images] ([id])
GO
ALTER TABLE [dbo].[product_images] CHECK CONSTRAINT [FK_product_images_images_image_id]
GO
ALTER TABLE [dbo].[product_images]  WITH CHECK ADD  CONSTRAINT [FK_product_images_products_product_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_images] CHECK CONSTRAINT [FK_product_images_products_product_id]
GO
ALTER TABLE [dbo].[product_quantity]  WITH CHECK ADD  CONSTRAINT [FK_product_quantity_color_color_id] FOREIGN KEY([color_id])
REFERENCES [dbo].[color] ([id])
GO
ALTER TABLE [dbo].[product_quantity] CHECK CONSTRAINT [FK_product_quantity_color_color_id]
GO
ALTER TABLE [dbo].[product_quantity]  WITH CHECK ADD  CONSTRAINT [FK_product_quantity_products_product_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_quantity] CHECK CONSTRAINT [FK_product_quantity_products_product_id]
GO
ALTER TABLE [dbo].[product_quantity]  WITH CHECK ADD  CONSTRAINT [FK_product_quantity_size_size_id] FOREIGN KEY([size_id])
REFERENCES [dbo].[size] ([id])
GO
ALTER TABLE [dbo].[product_quantity] CHECK CONSTRAINT [FK_product_quantity_size_size_id]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_categories_category_id] FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_categories_category_id]
GO
USE [master]
GO
ALTER DATABASE [BanSuaTHTrueMilkDataBase] SET  READ_WRITE 
GO
