-- Query 1 — Total Invoice Amount
Select 
 Sum(invoice_amount) as Total_Amount
from `clever-tube-467215-u0.enterprise_construction.invoices`;

-- Query  - Outstanding Invoice Amount
SELECT
  SUM(total_amount) AS outstanding_amount
FROM `clever-tube-467215-u0.enterprise_construction.invoices`
WHERE status IN ('Pending', 'Overdue');

-- Query 3 - Invoice Amount by Status
SELECT
  status,
  COUNT(*) AS total_invoices,
  SUM(total_amount) AS total_invoice_amount
FROM `clever-tube-467215-u0.enterprise_construction.invoices`
GROUP BY status
ORDER BY total_invoice_amount DESC;

-- Query 4 - Total Payments Received
SELECT
  SUM(amount) AS total_payments_received
FROM `clever-tube-467215-u0.enterprise_construction.payments`;

-- Query 5 - Invoice Amount By Client
SELECT
  client_id,
  COUNT(*) AS total_invoices,
  SUM(total_amount) AS total_invoiced
FROM `clever-tube-467215-u0.enterprise_construction.invoices`
GROUP BY client_id
ORDER BY total_invoiced DESC;
