SELECT 
    Product,               
    SUM([Sales]) AS TotalSales   
FROM 
    [LITA Capstone Sales]       
GROUP BY 
    Product                
ORDER BY 
    TotalSales DESC;    


	SELECT 
    Region,               
    COUNT(*) AS TransactionCount  
FROM 
    [LITA Capstone Sales]        
GROUP BY 
    Region               
ORDER BY 
    TransactionCount DESC;  

	SELECT TOP 1 
    Product,               
    SUM([Sales]) AS TotalSales   
FROM 
    [LITA Capstone Sales]        
GROUP BY 
    Product                
ORDER BY 
    TotalSales DESC;   
	
	SELECT 
    Product,               
    SUM([Sales]) AS TotalRevenue   
FROM 
    [LITA Capstone Sales]        
GROUP BY 
    Product                
ORDER BY 
    TotalRevenue DESC;  
	
	SELECT 
    MONTH(OrderDate) AS Month,  
    SUM([Sales]) AS MonthlyTotal   
FROM 
    [LITA Capstone Sales]       
WHERE 
    YEAR(OrderDate) = YEAR(GETDATE())  
GROUP BY 
    MONTH(OrderDate)                
ORDER BY 
    Month;  
	
	SELECT TOP 5 
    [Customer_Id],               
    SUM([Sales]) AS TotalPurchase   
FROM 
    [LITA Capstone Sales]        
GROUP BY 
    [Customer_Id]                
ORDER BY 
    TotalPurchase DESC;    

	SELECT 
    Region,                                  
    SUM([Sales]) AS TotalSales,               
    (SUM([Sales]) * 100.0 / (SELECT SUM([Sales]) FROM [LITA Capstone Sales])) AS PercentageContribution  
FROM 
    [LITA Capstone Sales]                           
GROUP BY 
    Region                                  
ORDER BY 
    PercentageContribution DESC;            

    
    SELECT 
    Product
FROM 
    [LITA Capstone Sales]
WHERE 
    Product NOT IN (
        SELECT 
            Product
        FROM 
            [LITA Capstone Sales] 
        WHERE 
            OrderDate >= DATEADD(QUARTER, -1, GETDATE())
    );





