    --QUESTION NO 1
    SELECT TOP 1
    [Product_Category], -- Corrected column name here
    SUM(Sales) AS TotalSales
FROM
    [KMS Sql Case Study] -- Using your confirmed table name
GROUP BY
    [Product_Category] -- Corrected column name here
ORDER BY
    TotalSales DESC;


    --QUESTION NO 2
    -- Top 3 Regions by Sales
SELECT TOP 3
    Region,
    SUM(Sales) AS TotalSales
FROM
    [KMS Sql Case Study]
GROUP BY
    Region
ORDER BY
    TotalSales DESC;

-- Bottom 3 Regions by Sales
SELECT TOP 3
    Region,
    SUM(Sales) AS TotalSales
FROM
    [KMS Sql Case Study]
GROUP BY
    Region
ORDER BY
    TotalSales ASC;


       --QUESTION NO 3
    SELECT
    SUM(Sales) AS TotalSalesAppliancesOntario
FROM
    [KMS Sql Case Study]
WHERE
    Product_Category = 'Appliances' AND Province = 'Ontario';


            --QUESTION NO 4
    SELECT TOP 10
    Customer_Name,
    SUM(Sales) AS TotalSales
FROM
    [KMS Sql Case Study]
GROUP BY
    Customer_Name
ORDER BY
    TotalSales ASC;


            --QUESTION NO 5
    SELECT TOP 1
    Ship_Mode,
    SUM(Shipping_Cost) AS TotalShippingCost
FROM
    [KMS Sql Case Study]
GROUP BY
    Ship_Mode
ORDER BY
    TotalShippingCost DESC;


    --QUESTION NO 6
    -- Most valuable customers by total sales
SELECT TOP 5
    Customer_Name,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit
FROM
    [KMS Sql Case Study]
GROUP BY
    Customer_Name
ORDER BY
    TotalSales DESC;

-- To see products typically purchased by a specific valuable customer (e.g., 'Customer A')
-- Replace 'Customer A' with a name from the top 5 results above.
SELECT DISTINCT
    Product_Name,
    Product_Category,
    Product_Sub_Category
FROM
    [KMS Sql Case Study]
WHERE
    Customer_Name = 'Customer A'; -- Replace 'Customer A' with an actual top customer's name


    --QUESTION NO 7
    SELECT TOP 1
    Customer_Name,
    SUM(Sales) AS TotalSales
FROM
    [KMS Sql Case Study]
WHERE
    Customer_Segment = 'Small Business'
GROUP BY
    Customer_Name
ORDER BY
    TotalSales DESC;


    --QUESTION NO 8
    SELECT TOP 1
    Customer_Name,
    COUNT(DISTINCT Order_ID) AS NumberOfOrders
FROM
    [KMS Sql Case Study]
WHERE
    Customer_Segment = 'Corporate'
    AND Order_Date >= '2009-01-01'
    AND Order_Date <= '2012-12-31'
GROUP BY
    Customer_Name
ORDER BY
    NumberOfOrders DESC;


    --QUESTION NO 9
    SELECT TOP 1
    Customer_Name,
    SUM(Profit) AS TotalProfit
FROM
    [KMS Sql Case Study]
WHERE
    Customer_Segment = 'Consumer'
GROUP BY
    Customer_Name
ORDER BY
    TotalProfit DESC;


    --QUESTION NO 11
    SELECT
    Order_Priority,
    Ship_Mode,
    AVG(Shipping_Cost) AS AverageShippingCost,
    COUNT(Order_ID) AS NumberOfOrders
FROM
    [KMS Sql Case Study]
GROUP BY
    Order_Priority,
    Ship_Mode
ORDER BY
    Order_Priority DESC, AverageShippingCost DESC;

