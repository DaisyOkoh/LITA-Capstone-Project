SELECT Region, COUNT(CustomerID) AS TotalCustomers
FROM [LITA Capstone Customer]
GROUP BY Region;

SELECT TOP 1 SubscriptionType, COUNT(CustomerID) AS TotalCustomers
FROM [LITA Capstone Customer]
GROUP BY SubscriptionType
ORDER BY TotalCustomers DESC;

SELECT *
FROM [LITA Capstone Customer]
WHERE DATEDIFF(month, SubscriptionStart, SubscriptionEnd) <= 6;

SELECT AVG(DATEDIFF(day, SubscriptionStart, SubscriptionEnd)) AS AverageSubscriptionDuration
FROM [LITA Capstone Customer];

SELECT *
FROM [LITA Capstone Customer]
WHERE DATEDIFF(month, SubscriptionStart, SubscriptionEnd) > 12;

UPDATE [LITA Capstone Customer]
SET Revenue = REPLACE(Revenue, '?', '')
WHERE Revenue LIKE '%?%';

SELECT SubscriptionType, SUM(TRY_CAST(Revenue AS decimal(18, 2))) AS TotalRevenue
FROM [LITA Capstone Customer]
WHERE TRY_CAST(Revenue AS decimal(18, 2)) IS NOT NULL
GROUP BY SubscriptionType;

SELECT TOP 3 Region, COUNT(CustomerID) AS TotalCancellations
FROM [LITA Capstone Customer]
WHERE SubscriptionEnd IS NOT NULL
GROUP BY Region
ORDER BY TotalCancellations DESC;

SELECT 
    SUM(CASE WHEN SubscriptionEnd IS NULL THEN 1 ELSE 0 END) AS TotalActiveSubscriptions,
    SUM(CASE WHEN SubscriptionEnd IS NOT NULL THEN 1 ELSE 0 END) AS TotalCanceledSubscriptions
FROM [LITA Capstone Customer];



























