-- Query 1 - Total Procurement Spend
SELECT
  SUM(total_amount) AS total_procurement_spend
FROM `clever-tube-467215-u0.enterprise_construction.purchases`;

-- Query 2 - Procurement Spend By Vendor
Select 
 vendor_id,
 Sum(total_amount) As total_procurement_spend
FROM `clever-tube-467215-u0.enterprise_construction.purchases`
Group by vendor_id
Order by total_procurement_spend desc;

-- Query 3 - Procurement Spend By Material
Select 
 material_id,
 sum(total_amount) as total_procurement_spend
FROM `clever-tube-467215-u0.enterprise_construction.purchases`
Group by material_id
Order by total_procurement_spend desc;

-- Query 4 - Top 10 Most Expensive Purchases
SELECT
  purchase_id,
  vendor_id,
  material_id,
  project_id,
  quantity,
  unit_price,
  total_amount
FROM `clever-tube-467215-u0.enterprise_construction.purchases`
ORDER BY total_amount DESC
LIMIT 10;

-- Query 5 - Average Purchase Cost By Vendor
SELECT
  vendor_id,
  COUNT(*) AS total_purchases,
  SUM(total_cost) AS total_spend,
  AVG(total_cost) AS average_purchase_cost
FROM `clever-tube-467215-u0.enterprise_construction.purchases`
GROUP BY vendor_id
ORDER BY total_spend DESC;
