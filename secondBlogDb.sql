USE [BlogDB]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2.01.2024 06:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2.01.2024 06:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2.01.2024 06:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2.01.2024 06:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2.01.2024 06:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2.01.2024 06:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogModels]    Script Date: 2.01.2024 06:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogModels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAd] [nvarchar](max) NULL,
	[Baslik] [nvarchar](max) NULL,
	[Resim] [nvarchar](max) NULL,
	[Icerik] [nvarchar](max) NULL,
	[YayinTarih] [datetime] NOT NULL,
	[Goruntulenme] [int] NOT NULL,
	[Onay] [bit] NOT NULL,
	[KategoriAd] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.BlogModels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogPosts]    Script Date: 2.01.2024 06:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogPosts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAd] [nvarchar](max) NULL,
	[Baslik] [nvarchar](max) NULL,
	[Resim] [nvarchar](max) NULL,
	[Icerik] [nvarchar](max) NULL,
	[YayinTarih] [datetime] NOT NULL,
	[Goruntulenme] [int] NOT NULL,
	[Onay] [bit] NOT NULL,
	[KategoriId] [int] NOT NULL,
	[Category_Id] [int] NULL,
 CONSTRAINT [PK_dbo.BlogPosts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2.01.2024 06:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 2.01.2024 06:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Yorum] [nvarchar](max) NULL,
	[KullaniciId] [nvarchar](max) NULL,
	[Tarih] [datetime] NOT NULL,
	[Puan] [real] NOT NULL,
	[BlogId] [int] NOT NULL,
	[BlogPosts_Id] [int] NULL,
	[BlogModel_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202401020058161_InitialCreate', N'BlogOdev.Models.DataContext', 0x1F8B0800000000000400ED5CDD6EDB3614BE1FB0771074B50DA995A4375B60B748DCA630DAFC204E8AED2A6024DA114A919E480536863DD92EF6487B8591FAA129527FB4E5342D8CDE2414F9F19CC3733E928727FDEF9F7F876F9711729E604C438247EED1E0D07520F64910E2F9C84DD8ECD5AFEEDB373FFE307C1F444BE773D1EFB5E8C747623A721F195B9C781EF51F6104E8200AFD98503263039F441E0888777C78F89B7774E4410EE1722CC719DE249885114C7FE1BF8E09F6E18225005D9000229AB7F32FD314D5B90411A40BE0C3917B86C8FC2A804F83ACABEB9CA2107031A610CD5C07604C18605CC8933B0AA72C26783E5DF006806E570BC8FBCD00A23017FE64DDBDAB1E87C7420F6F3DB080F213CA48640978F43A378CA70FDFC8BCAE341C37DD7B6E62B6125AA7E6CB2C971ACD75F4D94EC628163D0DF30EE4A003A7F87420FD80BB8BF877E08C13C492188E304C580C78DFEBE40185FE47B8BA255F201EE1042155382E1EFF566AE04DD73159C098AD6EE02C177912B88E571EE7E903E530654CA6CB04B3D7C7AE73C927070F08CAB557F49E3212C30F10C31830185C03C6608C05064CAD67CCAECDF55140E3D00F4FE5A4DCE778ECB8CE05587E8278CE1E472EFFD175CEC3250C8A965C903B3E94DB76E4B238816D739D018AC22F3B9FE606D230DAF92C131FC6CFA0CC1F6015E25B10878FC554EFF83ADF72EAA9708B66A80F24E6A4952088C5E066076B46BAC26055209C118220C0D6181FB91A7312EFC4EF2EC153384FC3439B744CA288C705E7DC1B88D20EF4315C64D4BB268AFB75B7F398443704A9DC23BFDE4F4912FBC294A4B60B5FB93964650187DE9AD81AE92E47B121BB7CC89EEAAA4289FBFFEE794112EA64F784DA0F2F5C27227C7351B9A0C81E42785BFB52768D5281764D684398A65F6BC3B4FC55C6A01AA65A972292370A53455CBB53493A681FAA4D41B43F95EC4F255FE354D21F998D33C4552597151FEF150E597399F9D5E0B28A2E555CB6D599C88A6CABCE44357CBCD999489AD3E250948FD9536D83C73FEB39BC7987B78E0ADDE91A02A78BD39D524AFC30954AF33A45A2B2A6EF71E0B48B97995755915B99FB5DB8E09EC60519B98783C19161C64670C9086B70C56C65F45F74FD154D9B0D50C103753236914207195B2CD074BE53CC5BDC9CFAD45FBB1B36495877512CEB9FA7B2ACF5AFB963F6A77F16166382190839AFE436E05B3C106D70597525BDA33027609AB381AE82C09C42A65B947BC03A0C4DEB189628C3484D0D0CF9A50541F1C44A39F26F6D72C8803605919F340CC5FA26904A7E4AC77A8AD4B7A24E9424D55035F0ACA00AF753A0EACDE69575EE608FAA1388698F367EEACA505D94E8CA47AA6D6B7C713373E849AA6A7334D15557C2D2CC51C46B8B3D6AF8692B7B147BB524A5F50B8B973DB1144F315ECD5BCCF0022C16FC60A3BCCDE42DCE347B9819BF9ADA3F5A441986E7D38AB70B29AD9C891FD6C01C6A5F854102781EC69409927D00E268350E22A39B4AC1357C54CC64B0ACB966054F1543C4CFEB61956F283ACADA88E75C2FB1A6A98AB0CA71CCB1E9F3184020AE38FF8E094A225C77866E1A5D4A1EA830A50FDDF18A04810A55B47547C9EFFF2A48DED41DA3B8DD976C93B77547512FEF2A92DADE1DAD7C7F57F1CA5FBA2366F77815296BB1F000E54E537200A5DD441B7A9A2BEB11E31921A3B1971E849D42B4E0C26DE2B306A34374D68EDC4D6CE639F892DB654D1BC4B72E4AE94377BC8A50B08E822C87AE42642D162C93A7D04B2C93B7BD185F6D3A6DDAED2695281D77939AB1FBDD64BF9BEC723731E846697F31112A6F715B6D2735205DF693DAA13B0ACF17B9D597AF31D52BA45EF0DB9742EDDD9913C5BDACE639C2CC059846EAB45C12B06ADD849DA4041B09975F1E3714CE5A267EB90AC234EF37A122E92E13DD1D55D66FB0D6DE5195EEE8B0932ABD3B9EF02ACC5F9F17D9D0FC6BC01E9CA33ED3F2A29CA349E75EBC43CFFE74B8B5F7E61DD569A22DBC2303ECC93BAAF34E2FCE3BEA746EF70E2309A67791FB9A4C866949AF619E806AAF523632525917D7E1FA3F8581C8464D5794C168203A0CA67FA2310AD39C5ED1E1829F8E6790B2ECFDD43D3E3C3AD66A9D5F4EDDB14769802A127895C5C7CFFE0A1C0AB3B6BEF3DA963A983536F809C4FE23887F8AC0F26715D0BE8E662BA852ADCC5648E57A98ADA0CC9A97802F04EBABE6255DE32D2A5E1E42FBF1E6DBBF8585ACCB58BF8FB02955916EE5501595A25BE1F5E39B6A35680C01DAB2167413B72E1FA1141CE3D1798203B81CB97FA5034F9CC9EFF7EAD803E72AE6FBD08973E8FC6DCD66A58DDA5E86626C771936A837FD3E226ABF11ED3722A3EC7213294AF772BB905586EE2062AB9362DF6EC0EEE2D8D04BD15D1F35765A5ACEB2A68E43F1B583B1302D40FCA24659CCAF6A4682F13A0EB11F2E00D23530AFAB5D7C42D85542EA5FDEC105C462B10D0DBB4CD692E093E09A8FB65961C7C587BD141BCA3215EBD2BA4DDDC06E69B6F483FA576373AAB654DE33B9816D0D662F35975FC70DEAEA6DBEBA1B34E5EC7A7783EA5254B35CAAE671CCC8DD34D69A66292E7E9E7A207CB1B31DACBEEE6D935AD4AA19D6C9D97E2A55EBB4E8B190B5528DFC5400CD399EBBD0D5BEAED530ED3755C7BA41DDAAE6ABDF50956A7555EA33286B51826A66D939052AFF6308E7601ACED710E2F10043BF447EB2CF04CF48C1C49A444517ED807E0119E07742701AB370067CC63FFB90D2F4AF7A3E0394F02EEFA307184CF055C21609E32AC3E8019542447079D3FC699D6D59E6E1D522FD4B9E3E54E06286E25A7B85CF92100552EE73F3825207213689FCD623D69289DBCF7C25912E09EE08949B4FEE6DB7305A200E46AFF0143CC14D64BBA3F0139C037F553C96D483B42F44D9ECC3772198C720A239C67A3CFF95FB70102DDFFC0F6899BABC38470000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202401020115513_InitialCreate', N'BlogOdev.Identity.IdentityDataContext', 0x1F8B0800000000000400E55C596FE4B8117E0F90FF20E86937F0B67C640613A3BD0B4FDB4E8C8C0F4C7B16791BD012BB4D8C44F58A94D746905FB60FFB93F217424AD4C14B57AB0F6F30C0A025925F158B4556B154E5FFFEF6FBF4A79728749E6142508CCFDCA3C9A1EB40ECC701C2CB3337A58B1F3EB83FFDF8E73F4D2F83E8C5F9B9E877C2FBB191989CB94F94AE4E3D8FF84F30026412213F8949BCA0133F8E3C10C4DEF1E1E1DFBCA3230F3208976139CEF4738A298A60F6C01E6731F6E18AA620BC89031812F19EB5CC3354E7164490AC800FCFDC8F61BCBC0BE0F3E43A800C84BEBACE79880063640EC385EB008C630A2863F3F40B81739AC478395FB117207C785D41D66F01420205FBA755F7AE33393CE633F1AA8105949F121A473D018F4E84683C75F82001BBA5E898F02E33F9F05967023C730B917D8E43260095E0E92C4C78E733F7A624714E56B79096B29EE490570983FB354EBE4DEA88074EE77107A52A1D4F0EF9BF03679686344DE01986294D4078E0DCA78F21F2FF095F1FE26F109F9D1C3D2E4E3EBC7B0F8293F77F8527EFEA33657365FDA417ECD57D12AF60C278838B72FEAEE3C9E33C756039AC3626970AD325B62B5CE706BC7C8278499FD87E39FEE03A57E80506C51BA15C5F30629B880DA249CA1E6FD330048F212CDBBD469AFCFF06AAC7EFDE8F42F5163CA365B6F40A7DB67112E23A9F6198B59227B4CAB797B4DE5F45B7AB248EF8B3AC5F79EBD7799C263E9F4C6CEDF2009225A4327753AF52DE4E2ACDA1C657EB0275FF559B73AAABB7B12B9FD0909D5090D8F66E28F8DD2CDDCE1A77BE5AB1C5CB54AB4DE1345B3551061F3845974A6D8EBAAA0D66D3719D8F804021197583BA8D62BD80C44FD02A373556D9B29F9D64BBAE28B9720D16251FBCBE28FF7F0DCA9045D689CCD3046F83CE650450388279EC408539A60B9444B05CB28F31DB5700F75E807B4008B30EC13F0079DAFC42403F4DD816995310AD364EEDFE29C6F0368D1EF906DE1EADD196E6E1D7F80AF8344E2E311FB536DEA7D8FF16A7F412071780C22FD42F00F9E3038ABA038CC2CEB9EF4342AE9832C36016B37B5701788DE9C9716F387ED4EEDA3D9D85004566FF54310A5F8BAE958F6AEEA1F9A9966E265FB589D54FF112E16EAC165DEDACE63D5A5915DDFAB2CAC1BA712A7ADA19CD3AB4F299F71ACDFBCF56687CF73F83DD7FFF7F3D4FC47616D4C438672724FC3BC43061C758700F288509AE56A0CBB9B10BCF275B3E4E74E3B629A3F43308D3B1490DDA0DD92130FE6EC860F77F37646CB2D7CF28E05E49874B71D199C177EA6FBE6FB7EF3985B36D6F07699ADB26BE9D33C0B65DCE09897D94ED0243385404B364FE990FE7B447B62C976FE786293AE2268FBD61737355A5BAC3173084143AE77E1E2E9E01E2834017239B50D083B1C2A21A18ABA26432737FD168324D87091F04F82588B09D8A30D5B705C23E5A81B0554ACAC88E268CCFBDA4A1B65CC015C49C60AB24BA103707C53803251D6551DA2434F56A1AD7AC8816AFD5B6E66D2E6CB5EE5A80652B3AD9E23B5BF452F86F1B51CC66896D41399B45D285016B8077170A2AEE2A5D1540BDB8EC9B822A37268B820A976A2B0A2A4B6C070A2A8BE4CD29687E45EDBAFECA7D75DFD453BE286FDFAC378A6B07BA29C963CF5433F73DD918CA46C044F1342F0005BC0DBE50C3DD8CB129AE674478BAAA86708C39A472C4A672778D6EA8D70CA2EA501360A5672DA0E2CBB006A4EDA71ECC15A1BC46EE8413D103B608BB35C28AA35F81ADA9808E5DFF425EEB68FF8EAEEA66A7CB4739B3521B341DEF7457A8E11814423DBBE48977108A2D2CAB0BA68B2BDCC719AE4D4C2C4683805A1C578B908AC98C2EA54235DBA564F2C7FA78646B4949F19E2C522A2633BA94848EB60BC9E013F4F00AD612916CC147DA6C45A0A3343665DBD4CBF3E6C48BA96749B09BDE80D50AE1652DE14EBC71E679B6DDEC8779FF3CB428C7F07C6248472BB92D29D138014BA8B432D28CD32B9410CA8DE623E0619E591069DD4CA6D572FA1714EBD6535FC3C20C14BDF96F71B413FEFB6EF19D9E8C503F5ABF37F82402EC8ACD34E28E4D164D37E8819EB62100E63E08416208E0CFE2308DB0DDCFB28FCE3FE3D5C7E76F7484A9A7F0AFF9519AD8FAC8B5354DE68D0854CAA8A9C3480D463CA6B901CAEE33D917044396918487385E843060B3DE8B056B16F7AE574B93AEEC216F55B4457B751E753AAD744331CE82952EFDF045B343D816AEB88FD5056FBBA3D9518A906D1DC516C6DDD9BAD97CFB81A761766BEABF54AD08BBB630368432A7AC0E52BEEC8E2372C6EA28E2554F8C5ADA9106566BEB8E2A6786D531E5961E3293D3BF24C9C94D3DB8AC2779494CD61B06E159246AEED19D829ED65547D75BBB231B12BCEAD086E601D8069ED5B6EEA8861CB03AB0A1B93B769510A69EE69BF22647B0A0D6A8C250139AC79DD6B3A1168CCD1CCDE398E05A764D1DA8F6BA2796C89FD1C0C4FBBD54266BF065A832E5D1C6F594C982613F77A4B414F9D869CCA5B1634AB926D2D1DE946B63C7EBA7B21B550C2DF4A27629A997211825D43215618FF682472D0E9277719D428CCCACBF120AA309EF3099FF12CE4204F9215E74B801182D20A1797E957B7C7874AC144DEE4F01A34748101AC246B62A4679CDB6902A899F41E23F81444F5C5AA326A302D53E0A5DE300BE9CB9FFCE469D66F145FE2B7B7DE05C932F18FD92B286872485CE7FF444EC9E5C19AA820AE6BE8BC0CBF775C02E5991CA7D7A2D190E2F0A1CA0255B2FA8EBAE03D7FFFA9A0F3D70EE12B6BF4F9D4365E587E8A35C66D78B9B7CE81ADC0CAE18FB636DFF413B4C29BB5A0B4B2AAD324E5539538657523D223A4A15D57AB233554AAD8568A8861A0B6F1411DAAA9D8660592B9D02F648B34AA77E9335573E0D61CD5AF584707F30B5E6A9FBD9588C1CC75AAF5116B3F5733293736BCDC85A09E4BB36985A69C95A1B5D2F1FE901B74689C800CD7863D515A3996C43F1C468D8BB54ED8D574CEC4B914495BFB6DBDA886D9643347CE0FB435541EC41DEAE211171F7B50EDBD6355B247CCF13C6FB5534EC99B289F4D4DDD72D6C5BD96C91F23D57B65ED5097BA66BBBB29F3BD6B4CE2674E7B5067ADEA4E58B96299CDE564C907F7B6037FCC7982941EE51E625E0E6EC551BB14A59AC04AB2E76A2F6B45995B0B67134BA5A8F66B2FDE62A0C7EE364459F66B29664F326DAE2FC6FA42DFA34D3B6A470EFA20CC298446D2A4D6939C79AD2D9DE52D9833493962A9B369FB5313DE12D55398C221469F7583EB3BF9DA286514432E6D6E951C4A07F3167B6B3F6878499FD26685941F0B45F0C7DC96A967DAEF1222E8CB7C251D14589D0DC400A026652CF138A16C0A7AC99C798B3BF6121D28A2FA347185CE3BB94AE52CAA60CA3C7500A787127A0897E56A921F33CBDCB3EC69231A6C0D8443C367F873FA6280C4ABEAF0C31210B04F72E444497AF25E591DDE56B89741BE38E40427CA553F400A355C8C0C81D9E8367388437A67E9FE012F8AF5504D006D2BE10B2D8A717082C13101181518D678F4C8783E8E5C7FF017A21D7C84F5B0000, N'6.1.3-40302')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'c7ff203f-c42e-49c4-8204-225231092f82', N'admin', N'admin rolü', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Description], [Discriminator]) VALUES (N'd38ad3a7-cc69-4921-bf44-db1a9e58756a', N'user', N'user rolü', N'ApplicationRole')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'aed119cf-5a80-4351-ad71-05b1dafd8ded', N'c7ff203f-c42e-49c4-8204-225231092f82')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c20c85f8-4f97-4dbd-8145-5ec19e88e1f8', N'c7ff203f-c42e-49c4-8204-225231092f82')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'acc05afa-da91-4315-9421-4baf73ca8e88', N'd38ad3a7-cc69-4921-bf44-db1a9e58756a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'aed119cf-5a80-4351-ad71-05b1dafd8ded', N'd38ad3a7-cc69-4921-bf44-db1a9e58756a')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Surname], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'acc05afa-da91-4315-9421-4baf73ca8e88', N'esma', N'sezen', N'esma@sezen.com', 0, N'AAAxwj4GuwPFqmY7Dxc1KYYdmDooD/Nea/MR1kpg65TBI+ojprQnUBBOXYKpaLy4vg==', N'255694ac-ba96-411c-81e7-750e62f201d7', NULL, 0, 0, NULL, 0, 0, N'esmasezen')
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Surname], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'aed119cf-5a80-4351-ad71-05b1dafd8ded', N'irem', N'nisa', N'irem@nisa.com', 0, N'ANNTpZaX5v+KSaa8r9JC3G7sQioRqo5pKc7rqHhOcCi5GGhaiTOHHCoW0bfoNCTZAw==', N'c803bf0d-07a8-4e6c-91b3-932defb54159', NULL, 0, 0, NULL, 0, 0, N'irem@nisa.com')
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Surname], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c20c85f8-4f97-4dbd-8145-5ec19e88e1f8', N'erhan', N'kaya', N'erhan@kaya.com', 0, N'AKdskjl8EQQZdDEUmDJCLSq1P+hQU1D//UAsbO38l5UlaGP/Uw3EnbcISueBj9dlBw==', N'e6bbd436-385f-433f-b605-8fd0f9cbd8aa', NULL, 0, 0, NULL, 0, 0, N'erhankaya')
GO
SET IDENTITY_INSERT [dbo].[BlogPosts] ON 

INSERT [dbo].[BlogPosts] ([Id], [KullaniciAd], [Baslik], [Resim], [Icerik], [YayinTarih], [Goruntulenme], [Onay], [KategoriId], [Category_Id]) VALUES (1, N'iremnisa', N'Dillerin ve Dinlerin Kenti Mardin', N'Mardin.jpg', N'Mardin, sadece bir şehir değil, aynı zamanda bir zaman makinesi. Dicle''nin bereketli ovalarına yüksek bir tepeden bakan bu kadim şehir, taş işçiliğinin zarafetiyle inşa edilmiş yapıları, arnavut kaldırımlı dar sokakları ve binlerce yıllık tarihiyle ziyaretçilerini adeta geçmişe götürüyor.', CAST(N'2023-12-24T00:00:00.000' AS DateTime), 0, 0, 6, NULL)
INSERT [dbo].[BlogPosts] ([Id], [KullaniciAd], [Baslik], [Resim], [Icerik], [YayinTarih], [Goruntulenme], [Onay], [KategoriId], [Category_Id]) VALUES (2, N'esmasezer', N'Karadeniz''in İncisi ve Tarihin Can Bulduğu Şehir', N'Trabzon.jpeg', N'Trabzon, Karadeniz''in sarp ve yeşil yamaçlarına sıkıca tutunan, tarihi ve doğal güzellikleriyle ön plana çıkan, Türkiye''nin en çok ziyaret edilen şehirlerinden biridir. Bu şehir, zengin tarihi dokusu, benzersiz kültürü, nefes kesen doğa manzaraları ve lezzetli mutfağıyla her yıl yerli ve yabancı birçok turisti ağırlıyor. ', CAST(N'2023-12-21T00:00:00.000' AS DateTime), 4, 1, 4, NULL)
INSERT [dbo].[BlogPosts] ([Id], [KullaniciAd], [Baslik], [Resim], [Icerik], [YayinTarih], [Goruntulenme], [Onay], [KategoriId], [Category_Id]) VALUES (3, N'melisbayrak', N'İstanbul: Kıtalararası Bir Aşk Hikayesi', N'İstanbul.jpg', N'İstanbul, dünyanın en büyüleyici şehirlerinden biridir. Yedi tepe üzerine kurulu bu tarihî şehir, Asya ve Avrupa kıtalarını birbirine bağlayan muazzam bir coğrafyada, binlerce yıllık bir geçmişiyle adeta zamanın ruhunu taşıyor. İstanbul, her köşesinde farklı bir medeniyetin izlerini taşıyan sokakları, dünya mirası listesinde yer alan eserleri ve kesintisiz bir enerjiye sahip yaşam tarzıyla ziyaretçilerine unutulmaz deneyimler vadediyor.', CAST(N'2023-12-26T00:00:00.000' AS DateTime), 7, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[BlogPosts] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [KategoriAd]) VALUES (1, N'Marmara Bölgesi')
INSERT [dbo].[Categories] ([Id], [KategoriAd]) VALUES (2, N'Ege Bölgesi')
INSERT [dbo].[Categories] ([Id], [KategoriAd]) VALUES (3, N'Akdeniz Bölgesi')
INSERT [dbo].[Categories] ([Id], [KategoriAd]) VALUES (4, N'Karadeniz Bölgesi')
INSERT [dbo].[Categories] ([Id], [KategoriAd]) VALUES (5, N'Doğu Anadolu Bölgesi')
INSERT [dbo].[Categories] ([Id], [KategoriAd]) VALUES (6, N'Güneydoğu Anadolu Bölgesi')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BlogPosts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.BlogPosts_dbo.Categories_Category_Id] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[BlogPosts] CHECK CONSTRAINT [FK_dbo.BlogPosts_dbo.Categories_Category_Id]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comments_dbo.BlogModels_BlogModel_Id] FOREIGN KEY([BlogModel_Id])
REFERENCES [dbo].[BlogModels] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_dbo.Comments_dbo.BlogModels_BlogModel_Id]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comments_dbo.BlogPosts_BlogPosts_Id] FOREIGN KEY([BlogPosts_Id])
REFERENCES [dbo].[BlogPosts] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_dbo.Comments_dbo.BlogPosts_BlogPosts_Id]
GO
