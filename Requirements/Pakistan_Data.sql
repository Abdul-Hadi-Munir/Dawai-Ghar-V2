USE [DawaiGhar]
GO

-- =============================================
-- Update Company Info to Pakistan
-- =============================================
UPDATE [dbo].[Company_Info] SET Com_Name = N'Dawai Ghar', Com_Address = N'Lahore, Pakistan', Com_Phone = N'03001234567'
GO

-- =============================================
-- Update Countries to Pakistani region
-- =============================================
DELETE FROM [dbo].[Cities]
DELETE FROM [dbo].[Countries]
GO
INSERT [dbo].[Countries] ([Country_ID], [Country_Name]) VALUES (1, N'Pakistan')
INSERT [dbo].[Countries] ([Country_ID], [Country_Name]) VALUES (2, N'China')
INSERT [dbo].[Countries] ([Country_ID], [Country_Name]) VALUES (3, N'Turkey')
INSERT [dbo].[Countries] ([Country_ID], [Country_Name]) VALUES (4, N'India')
INSERT [dbo].[Countries] ([Country_ID], [Country_Name]) VALUES (5, N'UAE')
GO

-- =============================================
-- Pakistani Cities
-- =============================================
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID]) VALUES (1, N'Lahore', 1)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID]) VALUES (2, N'Karachi', 1)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID]) VALUES (3, N'Islamabad', 1)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID]) VALUES (4, N'Rawalpindi', 1)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID]) VALUES (5, N'Faisalabad', 1)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID]) VALUES (6, N'Multan', 1)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID]) VALUES (7, N'Peshawar', 1)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID]) VALUES (8, N'Quetta', 1)
GO

-- =============================================
-- Pakistani Suppliers
-- =============================================
DELETE FROM [dbo].[ExpAndQty]
DELETE FROM [dbo].[Purchases_Details]
DELETE FROM [dbo].[Purchases]
DELETE FROM [dbo].[Sales_Details]
DELETE FROM [dbo].[Sales]
DELETE FROM [dbo].[Suppliers]
GO
INSERT [dbo].[Suppliers] ([Su_ID], [Su_Name], [Su_Phone], [city_ID]) VALUES (1, N'Ahmed Pharma Dist.', N'03211234567', 1)
INSERT [dbo].[Suppliers] ([Su_ID], [Su_Name], [Su_Phone], [city_ID]) VALUES (2, N'Bilal Medical Store', N'03009876543', 2)
INSERT [dbo].[Suppliers] ([Su_ID], [Su_Name], [Su_Phone], [city_ID]) VALUES (3, N'Chaudhry Medicines', N'03451112233', 3)
INSERT [dbo].[Suppliers] ([Su_ID], [Su_Name], [Su_Phone], [city_ID]) VALUES (4, N'Dawakhana Hakim Ali', N'03331234567', 4)
INSERT [dbo].[Suppliers] ([Su_ID], [Su_Name], [Su_Phone], [city_ID]) VALUES (5, N'Essa Pharma Supply', N'03121234567', 5)
INSERT [dbo].[Suppliers] ([Su_ID], [Su_Name], [Su_Phone], [city_ID]) VALUES (6, N'Farooq Distributors', N'03009991122', 6)
GO

-- =============================================
-- Pakistani Customers
-- =============================================
DELETE FROM [dbo].[Customer]
GO
INSERT [dbo].[Customer] ([Cu_ID], [Cu_Name], [Cu_Address], [Cu_Phone]) VALUES (1, N'Walk-in Customer', N'', N'')
INSERT [dbo].[Customer] ([Cu_ID], [Cu_Name], [Cu_Address], [Cu_Phone]) VALUES (2, N'Ali Hassan', N'Gulberg, Lahore', N'03001112233')
INSERT [dbo].[Customer] ([Cu_ID], [Cu_Name], [Cu_Address], [Cu_Phone]) VALUES (3, N'Fatima Bibi', N'DHA, Karachi', N'03219876543')
INSERT [dbo].[Customer] ([Cu_ID], [Cu_Name], [Cu_Address], [Cu_Phone]) VALUES (4, N'Usman Khan', N'F-8, Islamabad', N'03331234567')
INSERT [dbo].[Customer] ([Cu_ID], [Cu_Name], [Cu_Address], [Cu_Phone]) VALUES (5, N'Zainab Tariq', N'Saddar, Rawalpindi', N'03451234567')
INSERT [dbo].[Customer] ([Cu_ID], [Cu_Name], [Cu_Address], [Cu_Phone]) VALUES (6, N'Muhammad Imran', N'Peoples Colony, Faisalabad', N'03009998877')
GO

-- =============================================
-- Pakistani Producer Companies (common in PK market)
-- =============================================
DELETE FROM [dbo].[Products]
DELETE FROM [dbo].[Producer_Company]
GO
INSERT [dbo].[Producer_Company] ([Com_ID], [Com_Name], [Com_Notes], [Com_Phone], [Com_Address], [Com_Status]) VALUES (0, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Producer_Company] ([Com_ID], [Com_Name], [Com_Notes], [Com_Phone], [Com_Address], [Com_Status]) VALUES (1, N'Getz Pharma', N'Leading PK pharma', N'02135688011', N'Karachi, Pakistan', 1)
INSERT [dbo].[Producer_Company] ([Com_ID], [Com_Name], [Com_Notes], [Com_Phone], [Com_Address], [Com_Status]) VALUES (2, N'Martin Dow', N'', N'02135060261', N'Karachi, Pakistan', 1)
INSERT [dbo].[Producer_Company] ([Com_ID], [Com_Name], [Com_Notes], [Com_Phone], [Com_Address], [Com_Status]) VALUES (3, N'Searle Pakistan', N'', N'02135313691', N'Karachi, Pakistan', 1)
INSERT [dbo].[Producer_Company] ([Com_ID], [Com_Name], [Com_Notes], [Com_Phone], [Com_Address], [Com_Status]) VALUES (4, N'Sami Pharmaceuticals', N'', N'04235761091', N'Lahore, Pakistan', 1)
INSERT [dbo].[Producer_Company] ([Com_ID], [Com_Name], [Com_Notes], [Com_Phone], [Com_Address], [Com_Status]) VALUES (5, N'Hilton Pharma', N'', N'02135060700', N'Karachi, Pakistan', 1)
INSERT [dbo].[Producer_Company] ([Com_ID], [Com_Name], [Com_Notes], [Com_Phone], [Com_Address], [Com_Status]) VALUES (6, N'GSK Pakistan', N'GlaxoSmithKline', N'02135122041', N'Karachi, Pakistan', 1)
INSERT [dbo].[Producer_Company] ([Com_ID], [Com_Name], [Com_Notes], [Com_Phone], [Com_Address], [Com_Status]) VALUES (7, N'Abbott Laboratories PK', N'', N'04235761000', N'Lahore, Pakistan', 1)
INSERT [dbo].[Producer_Company] ([Com_ID], [Com_Name], [Com_Notes], [Com_Phone], [Com_Address], [Com_Status]) VALUES (8, N'PharmEvo', N'', N'02134390601', N'Karachi, Pakistan', 1)
GO

-- =============================================
-- Scientific Names
-- =============================================
DELETE FROM [dbo].[Sceintific_Name]
GO
INSERT [dbo].[Sceintific_Name] ([Sn_ID], [Sn_Name], [Sn_Status], [Sn_Description]) VALUES (0, NULL, 1, NULL)
INSERT [dbo].[Sceintific_Name] ([Sn_ID], [Sn_Name], [Sn_Status], [Sn_Description]) VALUES (1, N'Paracetamol 500mg', 1, N'Analgesic/Antipyretic')
INSERT [dbo].[Sceintific_Name] ([Sn_ID], [Sn_Name], [Sn_Status], [Sn_Description]) VALUES (2, N'Amoxicillin 500mg', 1, N'Antibiotic')
INSERT [dbo].[Sceintific_Name] ([Sn_ID], [Sn_Name], [Sn_Status], [Sn_Description]) VALUES (3, N'Omeprazole 20mg', 1, N'Proton Pump Inhibitor')
INSERT [dbo].[Sceintific_Name] ([Sn_ID], [Sn_Name], [Sn_Status], [Sn_Description]) VALUES (4, N'Metformin 500mg', 1, N'Antidiabetic')
INSERT [dbo].[Sceintific_Name] ([Sn_ID], [Sn_Name], [Sn_Status], [Sn_Description]) VALUES (5, N'Ciprofloxacin 500mg', 1, N'Fluoroquinolone Antibiotic')
INSERT [dbo].[Sceintific_Name] ([Sn_ID], [Sn_Name], [Sn_Status], [Sn_Description]) VALUES (6, N'Ibuprofen 400mg', 1, N'NSAID')
INSERT [dbo].[Sceintific_Name] ([Sn_ID], [Sn_Name], [Sn_Status], [Sn_Description]) VALUES (7, N'Cetirizine 10mg', 1, N'Antihistamine')
INSERT [dbo].[Sceintific_Name] ([Sn_ID], [Sn_Name], [Sn_Status], [Sn_Description]) VALUES (8, N'Amlodipine 5mg', 1, N'Calcium Channel Blocker')
INSERT [dbo].[Sceintific_Name] ([Sn_ID], [Sn_Name], [Sn_Status], [Sn_Description]) VALUES (9, N'Azithromycin 500mg', 1, N'Macrolide Antibiotic')
INSERT [dbo].[Sceintific_Name] ([Sn_ID], [Sn_Name], [Sn_Status], [Sn_Description]) VALUES (10, N'Losartan 50mg', 1, N'ARB Antihypertensive')
GO

-- =============================================
-- Pakistani Products (PKR prices)
-- =============================================
INSERT [dbo].[Products] ([P_ID],[P_Name],[P_Description],[buyPrice],[sellPrice],[Barcode],[Cat_ID],[Sn_ID],[Com_ID],[P_Filling],[P_Filling_Price],[P_active]) VALUES (1, N'Panadol Extra', N'Pain & Fever Relief', N'120', N'150', N'8964000150011', 2, 1, 6, 10, N'15', 1)
INSERT [dbo].[Products] ([P_ID],[P_Name],[P_Description],[buyPrice],[sellPrice],[Barcode],[Cat_ID],[Sn_ID],[Com_ID],[P_Filling],[P_Filling_Price],[P_active]) VALUES (2, N'Amoxil 500mg', N'Broad Spectrum Antibiotic', N'280', N'350', N'8964000250018', 1, 2, 6, 12, N'30', 1)
INSERT [dbo].[Products] ([P_ID],[P_Name],[P_Description],[buyPrice],[sellPrice],[Barcode],[Cat_ID],[Sn_ID],[Com_ID],[P_Filling],[P_Filling_Price],[P_active]) VALUES (3, N'Risek 20mg', N'Stomach Acid Reducer', N'450', N'560', N'8964001350012', 5, 3, 1, 14, N'40', 1)
INSERT [dbo].[Products] ([P_ID],[P_Name],[P_Description],[buyPrice],[sellPrice],[Barcode],[Cat_ID],[Sn_ID],[Com_ID],[P_Filling],[P_Filling_Price],[P_active]) VALUES (4, N'Glucophage 500mg', N'Diabetes Management', N'200', N'260', N'8964002450019', 2, 4, 2, 30, N'9', 1)
INSERT [dbo].[Products] ([P_ID],[P_Name],[P_Description],[buyPrice],[sellPrice],[Barcode],[Cat_ID],[Sn_ID],[Com_ID],[P_Filling],[P_Filling_Price],[P_active]) VALUES (5, N'Ciproxin 500mg', N'Urinary & Resp Infections', N'380', N'480', N'8964003550016', 2, 5, 3, 10, N'48', 1)
INSERT [dbo].[Products] ([P_ID],[P_Name],[P_Description],[buyPrice],[sellPrice],[Barcode],[Cat_ID],[Sn_ID],[Com_ID],[P_Filling],[P_Filling_Price],[P_active]) VALUES (6, N'Brufen 400mg', N'Pain & Inflammation', N'90', N'120', N'8964004650013', 2, 6, 7, 20, N'6', 1)
INSERT [dbo].[Products] ([P_ID],[P_Name],[P_Description],[buyPrice],[sellPrice],[Barcode],[Cat_ID],[Sn_ID],[Com_ID],[P_Filling],[P_Filling_Price],[P_active]) VALUES (7, N'Rigix 10mg', N'Allergy Relief', N'160', N'210', N'8964005750010', 2, 7, 4, 10, N'21', 1)
INSERT [dbo].[Products] ([P_ID],[P_Name],[P_Description],[buyPrice],[sellPrice],[Barcode],[Cat_ID],[Sn_ID],[Com_ID],[P_Filling],[P_Filling_Price],[P_active]) VALUES (8, N'Norvasc 5mg', N'Blood Pressure Control', N'320', N'420', N'8964006850017', 2, 8, 8, 14, N'30', 1)
INSERT [dbo].[Products] ([P_ID],[P_Name],[P_Description],[buyPrice],[sellPrice],[Barcode],[Cat_ID],[Sn_ID],[Com_ID],[P_Filling],[P_Filling_Price],[P_active]) VALUES (9, N'Zetro 500mg', N'3-Day Antibiotic Course', N'350', N'450', N'8964007950014', 1, 9, 1, 3, N'150', 1)
INSERT [dbo].[Products] ([P_ID],[P_Name],[P_Description],[buyPrice],[sellPrice],[Barcode],[Cat_ID],[Sn_ID],[Com_ID],[P_Filling],[P_Filling_Price],[P_active]) VALUES (10, N'Cozaar 50mg', N'Hypertension Treatment', N'500', N'650', N'8964008050011', 2, 10, 5, 14, N'47', 1)
INSERT [dbo].[Products] ([P_ID],[P_Name],[P_Description],[buyPrice],[sellPrice],[Barcode],[Cat_ID],[Sn_ID],[Com_ID],[P_Filling],[P_Filling_Price],[P_active]) VALUES (11, N'Augmentin 625mg', N'Amox+Clavulanate', N'600', N'780', N'8964009150018', 2, 2, 6, 6, N'130', 1)
GO

-- =============================================
-- Categories update
-- =============================================
UPDATE [dbo].[Categories] SET Cat_Name = N'Capsule' WHERE Cat_ID = 1
UPDATE [dbo].[Categories] SET Cat_Name = N'Tablet' WHERE Cat_ID = 2
UPDATE [dbo].[Categories] SET Cat_Name = N'Injection' WHERE Cat_ID = 3
UPDATE [dbo].[Categories] SET Cat_Name = N'Cream' WHERE Cat_ID = 4
UPDATE [dbo].[Categories] SET Cat_Name = N'Gastro Cap' WHERE Cat_ID = 5
UPDATE [dbo].[Categories] SET Cat_Name = N'Syrup' WHERE Cat_ID = 6
UPDATE [dbo].[Categories] SET Cat_Name = N'Drops' WHERE Cat_ID = 7
UPDATE [dbo].[Categories] SET Cat_Name = N'Liquid' WHERE Cat_ID = 8
UPDATE [dbo].[Categories] SET Cat_Name = N'Ointment' WHERE Cat_ID = 9
GO

-- =============================================
-- Sample Sales & Purchases Data (PKR)
-- =============================================
INSERT [dbo].[Purchases] ([Purchases_ID],[Purchases_Date],[Supp_ID],[Purchases_Notes],[Purchases_User_Added],[Purchases_Count],[Purchases_Total_Discount],[Purchases_Total_Paid],[Purchases_Total_Residul],[Purchases_Total_Amount],[Purchases_Total]) VALUES (1, CAST(N'2026-04-15T10:00:00' AS DateTime), 1, N'Monthly stock', N'root', 3, 0, N'5000', N'0', N'5000', N'5000')
INSERT [dbo].[Purchases] ([Purchases_ID],[Purchases_Date],[Supp_ID],[Purchases_Notes],[Purchases_User_Added],[Purchases_Count],[Purchases_Total_Discount],[Purchases_Total_Paid],[Purchases_Total_Residul],[Purchases_Total_Amount],[Purchases_Total]) VALUES (2, CAST(N'2026-04-20T14:00:00' AS DateTime), 2, N'Emergency restock', N'root', 2, 500, N'8000', N'0', N'8000', N'8500')
INSERT [dbo].[Purchases] ([Purchases_ID],[Purchases_Date],[Supp_ID],[Purchases_Notes],[Purchases_User_Added],[Purchases_Count],[Purchases_Total_Discount],[Purchases_Total_Paid],[Purchases_Total_Residul],[Purchases_Total_Amount],[Purchases_Total]) VALUES (3, CAST(N'2026-05-01T09:00:00' AS DateTime), 3, N'May stock', N'root', 4, 0, N'12000', N'0', N'12000', N'12000')
GO

INSERT [dbo].[Purchases_Details] ([PurchasesDet_ID],[Purchases_ID],[Product_ID],[PurchasesDet_Price],[PurchasesDet_Qty],[PurchasesDet_Total],[PurchasesDet_Discount],[PurchasesDet_Notes],[PurchasesDet_ExpiredDate]) VALUES (1, 1, 1, N'120', 50, N'6000', N'0', N'', CAST(N'2027-04-15' AS Date))
INSERT [dbo].[Purchases_Details] ([PurchasesDet_ID],[Purchases_ID],[Product_ID],[PurchasesDet_Price],[PurchasesDet_Qty],[PurchasesDet_Total],[PurchasesDet_Discount],[PurchasesDet_Notes],[PurchasesDet_ExpiredDate]) VALUES (2, 1, 3, N'450', 20, N'9000', N'0', N'', CAST(N'2027-06-20' AS Date))
INSERT [dbo].[Purchases_Details] ([PurchasesDet_ID],[Purchases_ID],[Product_ID],[PurchasesDet_Price],[PurchasesDet_Qty],[PurchasesDet_Total],[PurchasesDet_Discount],[PurchasesDet_Notes],[PurchasesDet_ExpiredDate]) VALUES (3, 2, 5, N'380', 30, N'11400', N'0', N'', CAST(N'2027-08-10' AS Date))
INSERT [dbo].[Purchases_Details] ([PurchasesDet_ID],[Purchases_ID],[Product_ID],[PurchasesDet_Price],[PurchasesDet_Qty],[PurchasesDet_Total],[PurchasesDet_Discount],[PurchasesDet_Notes],[PurchasesDet_ExpiredDate]) VALUES (4, 3, 7, N'160', 40, N'6400', N'0', N'', CAST(N'2027-12-01' AS Date))
GO

INSERT [dbo].[ExpAndQty] ([Ex_ID],[Ex_Date],[P_ID],[Qty],[Supplier_ID]) VALUES (1, CAST(N'2027-04-15T00:00:00' AS DateTime), 1, 50, 1)
INSERT [dbo].[ExpAndQty] ([Ex_ID],[Ex_Date],[P_ID],[Qty],[Supplier_ID]) VALUES (2, CAST(N'2027-06-20T00:00:00' AS DateTime), 3, 20, 1)
INSERT [dbo].[ExpAndQty] ([Ex_ID],[Ex_Date],[P_ID],[Qty],[Supplier_ID]) VALUES (3, CAST(N'2027-08-10T00:00:00' AS DateTime), 5, 30, 2)
INSERT [dbo].[ExpAndQty] ([Ex_ID],[Ex_Date],[P_ID],[Qty],[Supplier_ID]) VALUES (4, CAST(N'2027-12-01T00:00:00' AS DateTime), 7, 40, 3)
GO

INSERT [dbo].[Sales] ([Sales_ID],[Sales_Date],[Cust_ID],[Sales_Notes],[Sales_User_Added],[Sales_Count],[Sales_Total_Discount],[Sales_Total_Paid],[Sales_Total_Residul],[Sales_Total_Amount],[Sales_Total]) VALUES (1, CAST(N'2026-04-16T11:00:00' AS DateTime), 2, N'', N'root', 2, 0, N'1500', N'0', N'1500', N'1500')
INSERT [dbo].[Sales] ([Sales_ID],[Sales_Date],[Cust_ID],[Sales_Notes],[Sales_User_Added],[Sales_Count],[Sales_Total_Discount],[Sales_Total_Paid],[Sales_Total_Residul],[Sales_Total_Amount],[Sales_Total]) VALUES (2, CAST(N'2026-04-18T15:00:00' AS DateTime), 3, N'', N'root', 1, 0, N'560', N'0', N'560', N'560')
INSERT [dbo].[Sales] ([Sales_ID],[Sales_Date],[Cust_ID],[Sales_Notes],[Sales_User_Added],[Sales_Count],[Sales_Total_Discount],[Sales_Total_Paid],[Sales_Total_Residul],[Sales_Total_Amount],[Sales_Total]) VALUES (3, CAST(N'2026-05-01T09:30:00' AS DateTime), 1, N'Walk-in', N'root', 3, 0, N'2100', N'0', N'2100', N'2100')
GO

INSERT [dbo].[Sales_Details] ([SalesDet_ID],[Sales_ID],[Product_ID],[SalesDet_Price],[SalesDet_Qty],[SalesDet_Total],[SalesDet_Discount],[SalesDet_Notes]) VALUES (1, 1, 1, N'150', 10, N'1500', N'0', N'')
INSERT [dbo].[Sales_Details] ([SalesDet_ID],[Sales_ID],[Product_ID],[SalesDet_Price],[SalesDet_Qty],[SalesDet_Total],[SalesDet_Discount],[SalesDet_Notes]) VALUES (2, 2, 3, N'560', 1, N'560', N'0', N'')
INSERT [dbo].[Sales_Details] ([SalesDet_ID],[Sales_ID],[Product_ID],[SalesDet_Price],[SalesDet_Qty],[SalesDet_Total],[SalesDet_Discount],[SalesDet_Notes]) VALUES (3, 3, 6, N'120', 5, N'600', N'0', N'')
INSERT [dbo].[Sales_Details] ([SalesDet_ID],[Sales_ID],[Product_ID],[SalesDet_Price],[SalesDet_Qty],[SalesDet_Total],[SalesDet_Discount],[SalesDet_Notes]) VALUES (4, 3, 7, N'210', 5, N'1050', N'0', N'')
GO

PRINT 'Pakistan data loaded successfully!'
GO
