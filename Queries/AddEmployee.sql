USE [ECLHR]
GO

INSERT INTO [dbo].[Employee]
           ([Code]
		   ,[FullName]
           ,[Gender]
           ,[BloodGroup]
           ,[DOB]
           ,[Designation]
           ,[MaritalStatus]
           ,[JoiningDate]
           ,[Nationality]
           ,[Status]
           ,[PersonalEmail]
           ,[OfficialEmail]
           ,[Mobile]
           ,[Location])
     VALUES
           ('1','Test Full Name',17,20,'01/01/1990','Software Engineer',4,'01/01/2018',11,29,null,null,'987654321',30)
GO


USE [ECLHR]
GO

INSERT INTO [dbo].[Address]
           ([Type]
           ,[HouseNo]
           ,[Street1]
           ,[Street2]
           ,[Country]
           ,[State]
           ,[City]
           ,[District]
           ,[PinCode]
		   ,[EmpId])
     VALUES
           ('PR'
           ,'1-1/3'
           ,'Hitech City'
           ,'Madhapur'
           ,38
           ,34
           ,'Hyderabad'
           ,'Rangareddy'
           ,'500081'
		   ,1)

INSERT INTO [dbo].[EmpLanguage]
           (EmpId,[LanguageId],[IsRead],[IsWrite],[IsSpeak],[PrimaryLanguage])
     VALUES(1,44,1,1,1,0)


INSERT INTO [dbo].[EmpLanguage]
           (EmpId,[LanguageId],[IsRead],[IsWrite],[IsSpeak],[PrimaryLanguage])
     VALUES(1,106,1,1,1,1)

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('MaritalStatus','D','Divorced')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('MaritalStatus','M','Married')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('MaritalStatus','O','Other')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('MaritalStatus','S','Single')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('MaritalStatus','W','Widowed')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','A','American')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','B','British')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','C','Chinese')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','FI','Filipino')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','F','French')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','I','Indian')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','IT','Italian')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','J','Japanese')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','K','Korean')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Nationality','T','Thai')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Gender','F','Female')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Gender','M','Male')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('BloodGroup','O+','O Positive')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('BloodGroup','O-','O Negative')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('BloodGroup','AB+','AB Positive')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('BloodGroup','AB-','AB Negative')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('BloodGroup','A+','A Positive')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('BloodGroup','A-','A Negative')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('BloodGroup','B+','B Positive')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('BloodGroup','B-','B Negative')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Status','TP','Temporary')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Status','T','Terminated')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Status','AB','Absconded')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Status','P','Permanent')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Location','H','Hyderabad')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Location','C','Chennai')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Location','F','Faridabad')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Location','O','Other')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Country','I','India')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Country','US','United States')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
      VALUES('Country','UAE','United Arab Emirated')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Country','PH','Phillipines')

--INDIA
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('State','TS','Telangana')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText],Parentid)
     VALUES('State','AP','AndhraPradesh',34)
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText],Parentid)
     VALUES('State','MH','Maharastra',34)
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText],Parentid)
     VALUES('State','TN','TamilNadu',34)
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText],Parentid)
     VALUES('State','KA','Karnataka',34)
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText],Parentid)
     VALUES('State','ND','NewDelhi',34)

--US	 
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText],Parentid)
     VALUES('State','FL','Florida',35)
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText],Parentid)
     VALUES('State','NY','NewYork',35)
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText],Parentid)
     VALUES('State','NJ','NewJersey',35)
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText],Parentid)
     VALUES('State','CA','California',35)
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText],Parentid)
     VALUES('State','TX','Texas',35)

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('AddressType','PR','Present')

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('AddressType','PE','Permanent')

--Language



INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
VALUES('Language','X','Declined to Specify')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','spa','Spanish')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','fra','French')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','eng','English')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','zho','Chinese')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','deu','German')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','jpn','Japanese')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','kor','Korean')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','nor','Norwegian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','swe','Swedish')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','flp','Filipino')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','oth','Other')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','aar','Afar')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','abk','Abkhazian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','afr','Afrikaans')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','aka','akan')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','amh','Amharic')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ara','Arabic')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','arg','Aragonese')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','asm','Assamese')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ava','Avaric')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ave','Avestan')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','aym','Aymara')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','aze','Azerbaijani')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','bak','Bashkir')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','bam','Bambara')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','bel','Belarusian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ben','Bengali')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','bih','Bihari languages')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','bis','Bislama')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','bod','Tibetan')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','bos','Bosnian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','bre','Breton')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','bul','Bulgarian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','cat','Catalan; Valencian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ces','Czech')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','cha','Chamorro')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','che','Chechen')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','chu','Church Slavic; Old Slavonic; Church Slavonic; Old Bulgarian; Old Church Slavonic')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','chv','Chuvash')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','cos','Corsican')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','cre','Cree')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','cym','Welsh')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','dan','Danish')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','div','Divehi; Dhivehi; Maldivian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','dzo','Dzongkha')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ewe','Ewe')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ell','Greek, Modern (1453-)')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','epo','Esperanto')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','est','Estonian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','eus','Basque')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','fas','Persian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ful','Fulah')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','fin','Finnish')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','fij','Fijian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','fao','Faroese')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','fry','Western Frisian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','gle','Irish')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','gla','Gaelic; Scottish Gaelic')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','glg','Galician')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','grn','Guarani')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','guj','Gujarati')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','glv','Manx')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','hau','Hausa')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','heb','Hebrew')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','hin','Hindi')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','hmo','Hiri Motu')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','hrv','Croatian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','hat','Haitian; Haitian Creole')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','hun','Hungarian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','hye','Armenian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','her','Herero')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ina','Interlingua (International Auxiliary Language Association)')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ind','Indonesian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ile','Interlingue; Occidental')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ibo','Igbo')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','iii','Sichuan Yi; Nuosu')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ipk','Inupiaq')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ido','Ido')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','isl','Icelandic')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ita','Italian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','iku','Inuktitut')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','jav','Javanese')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','kat','Georgian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','kon','Kongo')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','kik','Kikuyu; Gikuyu')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','kua','Kuanyama; Kwanyama')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','kaz','Kazakh')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','kal','Kalaallisut; Greenlandic')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','khm','Central Khmer')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','kan','Kannada')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','kau','Kanuri')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','kas','Kashmiri')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','kur','Kurdish')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','kom','Komi')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','cor','Cornish')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','kir','Kirghiz; Kyrgyz')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','lat','Latin')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ltz','Luxembourgish; Letzeburgesch')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','lug','Ganda')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','lim','Limburgan; Limburger; Limburgish')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','lin','Lingala')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','lao','Lao')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','lit','Lithuanian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','lub','Luba-Katanga')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','lav','Latvian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','mlg','Malagasy')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','mah','Marshallese')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','mri','Maori')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','mkd','Macedonian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','mal','Malayalam')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','mon','Mongolian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','mar','Marathi')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','msa','Malay')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','mlt','Maltese')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','mya','Burmese')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','nau','Nauru')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','nob','Bokm�l, Norwegian; Norwegian Bokm�l')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','nde','Ndebele, North; North Ndebele')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','nep','Nepali')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ndo','Ndonga')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','nld','Dutch; Flemish')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','nno','Norwegian Nynorsk; Nynorsk, Norwegian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','nbl','Ndebele, South; South Ndebele')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','nav','Navajo; Navaho')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','nya','Chichewa; Chewa; Nyanja')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','oci','Occitan (post 1500)')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','oji','Ojibwa')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','orm','Oromo')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ori','Oriya')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','oss','Ossetian; Ossetic')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','pan','Panjabi; Punjabi')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','pli','Pali')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','pol','Polish')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','pus','Pushto; Pashto')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','por','Portuguese')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','que','Quechua')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','roh','Romansh')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','run','Rundi')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ron','Romanian; Moldavian; Moldovan')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','rus','Russian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','kin','Kinyarwanda')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','san','Sanskrit')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','srd','Sardinian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','snd','Sindhi')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','sme','Northern Sami')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','sag','Sango')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','sin','Sinhala; Sinhalese')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','slk','Slovak')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','slv','Slovenian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','smo','Samoan')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','sna','Shona')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','som','Somali')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','sqi','Albanian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','srp','Serbian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ssw','Swati')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','sot','Sotho, Southern')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','sun','Sundanese')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','swa','Swahili')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','tam','Tamil')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','tel','Telugu')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','tgk','Tajik')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','tha','Thai')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','tir','Tigrinya')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','tuk','Turkmen')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','tgl','Tagalog')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','tsn','Tswana')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ton','Tonga (Tonga Islands)')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','tur','Turkish')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','tso','Tsonga')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','tat','Tatar')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','twi','Twi')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','tah','Tahitian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','uig','Uighur; Uyghur')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ukr','Ukrainian')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','urd','Urdu')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','uzb','Uzbek')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','ven','Venda')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','vie','Vietnamese')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','vol','Volap�k')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','wln','Walloon')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','wol','Wolof')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','xho','Xhosa')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','yid','Yiddish')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','yor','Yoruba')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','zha','Zhuang; Chuang')
INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Language','zul','Zulu')

/*********Occupation*************/

INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Occupation','ser','Service')
     INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Occupation','busi','Business')
     INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Occupation','nw','Not Working')

/*********Relation*************/

      INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Relation','Spo','Spouse')
     INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Relation','son','Son')
     INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Relation','mom','Mother')
     INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Relation','fa','Father')
     INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Relation','bro','Brother')
     INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Relation','sis','Sister')
     INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Relation','nep','Nephew')
     INSERT INTO [dbo].[Dropdown]([Item],[Value],[DisplayText])
     VALUES('Relation','nie','Niece')

INSERT INTO [dbo].[FamilyDetails]([firstname],[middlename],[lastname],[dateofbirth],[age],[bloodgroup_id],[gender_id],[relation_id],[birthplace]
           ,[occupation_id],[Isdependent],[Ismediclaim],[country_of_birth_id],[nationality_id],[aadhaar])
     VALUES('Prasanna','VLNK','Bachu','1995-05-24',23,24,17,235,'Guntur',229,1,0,34,11,'450905060504')

CREATE TABLE ATTENDANCE(
ID INT IDENTITY(1,1) NOT NULL,
EMPID INT NOT NULL,
ATTENDANCE_TIME TIME NOT NULL,
ATTENDANCE_DATE DATE NOT NULL,
CREATEDDATE DATETIME
)



insert into ATTENDANCE(EMPID,ATTENDANCE_TIME,ATTENDANCE_DATE,CREATEDDATE)
values(1,'11:00','02/01/2018',getdate())

insert into ATTENDANCE(EMPID,ATTENDANCE_TIME,ATTENDANCE_DATE,CREATEDDATE)
values(1,'13:32','02/01/2018',getdate())

insert into ATTENDANCE(EMPID,ATTENDANCE_TIME,ATTENDANCE_DATE,CREATEDDATE)
values(1,'16:50','02/01/2018',getdate())

insert into ATTENDANCE(EMPID,ATTENDANCE_TIME,ATTENDANCE_DATE,CREATEDDATE)
values(1,'20:43','02/01/2018',getdate())



insert into ATTENDANCE(EMPID,ATTENDANCE_TIME,ATTENDANCE_DATE,CREATEDDATE)
values(1,'11:00','02/06/2018',getdate())

insert into ATTENDANCE(EMPID,ATTENDANCE_TIME,ATTENDANCE_DATE,CREATEDDATE)
values(1,'13:32','02/06/2018',getdate())

insert into ATTENDANCE(EMPID,ATTENDANCE_TIME,ATTENDANCE_DATE,CREATEDDATE)
values(1,'17:50','02/06/2018',getdate())


insert into ATTENDANCE(EMPID,ATTENDANCE_TIME,ATTENDANCE_DATE,CREATEDDATE)
values(1,'11:00','01/02/2018',getdate())

insert into ATTENDANCE(EMPID,ATTENDANCE_TIME,ATTENDANCE_DATE,CREATEDDATE)
values(1,'13:32','01/02/2018',getdate())

insert into ATTENDANCE(EMPID,ATTENDANCE_TIME,ATTENDANCE_DATE,CREATEDDATE)
values(1,'23:50','01/02/2018',getdate())

insert into ATTENDANCE(EMPID,ATTENDANCE_TIME,ATTENDANCE_DATE,CREATEDDATE)
values(1,'11:00','01/10/2018',getdate())

insert into ATTENDANCE(EMPID,ATTENDANCE_TIME,ATTENDANCE_DATE,CREATEDDATE)
values(1,'17:32','01/10/2018',getdate())




insert into ATTENDANCE(EMPID,ATTENDANCE_TIME,ATTENDANCE_DATE,CREATEDDATE)
values(1,'11:00','01/05/2017',getdate())

insert into ATTENDANCE(EMPID,ATTENDANCE_TIME,ATTENDANCE_DATE,CREATEDDATE)
values(1,'13:32','01/05/2017',getdate())

insert into ATTENDANCE(EMPID,ATTENDANCE_TIME,ATTENDANCE_DATE,CREATEDDATE)
values(1,'23:50','01/05/2017',getdate())


insert into ATTENDANCE(EMPID,ATTENDANCE_TIME,ATTENDANCE_DATE,CREATEDDATE)
values(1,'11:00','06/07/2017',getdate())

insert into ATTENDANCE(EMPID,ATTENDANCE_TIME,ATTENDANCE_DATE,CREATEDDATE)
values(1,'13:32','06/07/2017',getdate())

insert into ATTENDANCE(EMPID,ATTENDANCE_TIME,ATTENDANCE_DATE,CREATEDDATE)
values(1,'23:50','06/07/2017',getdate())

Create Table EmpLeaves(
Id int identity(1,1) not null,
Leave_Date Date Not Null,
Leave_Type int not null,
Applied_Date DateTime,
Reason Varchar(500),
Status int,
Approved_By int
)

GO

INSERT INTO [dbo].[EmpLeaves]([Leave_Date],[Leave_Type],[Applied_Date],[Reason],[Status],[Approved_By])
     VALUES
           ('01/10/2018',1,'01/01/2018','Fever',1,1)
GO

INSERT INTO [dbo].[EmpLeaves]([Leave_Date],[Leave_Type],[Applied_Date],[Reason],[Status],[Approved_By])
     VALUES
           ('01/19/2018',1,'01/01/2018','Stomach Ache',1,1)

INSERT INTO [dbo].[EmpLeaves]([Leave_Date],[Leave_Type],[Applied_Date],[Reason],[Status],[Approved_By])
     VALUES
           ('02/06/2018',1,'02/01/2018','Head Ache',1,1)
