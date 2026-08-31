-- Query 1 - Total Clients
Select count(*) As total_clients
From `clever-tube-467215-u0.enterprise_construction.clients`;

-- Query 2 - Client By Type
Select 
  client_type,
  Count(*) as Total_clients
  from `clever-tube-467215-u0.enterprise_construction.clients`
  group by client_type
  order by total_clients Desc;

-- Query 3 - Client By State
SELECT
 state,
 Count(*) as total_clients
 from `clever-tube-467215-u0.enterprise_construction.clients`
 group by state
 order by total_clients  desc;
