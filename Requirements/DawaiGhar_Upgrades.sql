USE [DawaiGhar]
GO

-- ==============================================================================
-- 1. INNER JOIN & Subqueries: View for Comprehensive Product Details
-- ==============================================================================
CREATE VIEW vw_ProductDetails AS
SELECT 
    p.P_ID,
    p.P_Name,
    p.P_Price,
    p.P_BuyPrice,
    p.P_Barcode,
    c.Cat_Name,
    comp.Com_Name,
    sn.SN_Name
FROM 
    Products p
INNER JOIN 
    Categories c ON p.Cat_ID = c.Cat_ID
INNER JOIN 
    Company comp ON p.Com_ID = comp.Com_ID
INNER JOIN 
    Scientific_Name sn ON p.SN_ID = sn.SN_ID
WHERE 
    p.P_BuyPrice < (SELECT AVG(CAST(P_BuyPrice AS DECIMAL(18,2))) FROM Products WHERE ISNUMERIC(P_BuyPrice) = 1)
GO

-- ==============================================================================
-- 2. LEFT JOIN, RIGHT JOIN, FULL JOIN: Inventory and Supplier analysis
-- ==============================================================================
CREATE PROCEDURE sp_SupplierInventoryAnalysis
AS
BEGIN
    -- LEFT JOIN: All products and their suppliers (if any)
    SELECT p.P_Name, s.Sup_Name 
    FROM Products p
    LEFT JOIN Suppliers s ON p.Com_ID = s.Com_ID;

    -- RIGHT JOIN: All suppliers and the products they supply
    SELECT s.Sup_Name, p.P_Name
    FROM Products p
    RIGHT JOIN Suppliers s ON p.Com_ID = s.Com_ID;

    -- FULL JOIN: Comprehensive match of products and suppliers
    SELECT p.P_Name, s.Sup_Name
    FROM Products p
    FULL JOIN Suppliers s ON p.Com_ID = s.Com_ID;
END
GO

-- ==============================================================================
-- 3. GROUP BY & HAVING: Sales Analytics Dashboard Stored Procedure
-- ==============================================================================
CREATE PROCEDURE sp_GetHighPerformingCategories
AS
BEGIN
    SELECT 
        c.Cat_Name,
        COUNT(p.P_ID) AS TotalProducts,
        AVG(CAST(p.P_Price AS DECIMAL(18,2))) AS AverageSellPrice
    FROM 
        Categories c
    INNER JOIN 
        Products p ON c.Cat_ID = p.Cat_ID
    WHERE 
        ISNUMERIC(p.P_Price) = 1
    GROUP BY 
        c.Cat_Name
    HAVING 
        COUNT(p.P_ID) >= 2 -- Only categories with at least 2 products
    ORDER BY 
        AverageSellPrice DESC;
END
GO

-- ==============================================================================
-- 4. Nested Queries & Normalization Views
-- ==============================================================================
CREATE VIEW vw_CustomerPurchaseHistory AS
SELECT 
    cust.Cust_Name,
    cust.Cust_Phone,
    (SELECT COUNT(*) FROM Sales s WHERE s.Cust_ID = cust.Cust_ID) AS TotalOrders,
    (SELECT SUM(CAST(sd.P_Price AS DECIMAL(18,2))) 
     FROM Sales s 
     INNER JOIN Sales_Details sd ON s.S_ID = sd.S_ID 
     WHERE s.Cust_ID = cust.Cust_ID AND ISNUMERIC(sd.P_Price) = 1) AS TotalSpent
FROM 
    Customer cust
GO
