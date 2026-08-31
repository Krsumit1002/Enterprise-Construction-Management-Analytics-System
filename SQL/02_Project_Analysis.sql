-- Query 1 - Project By Status
SELECT
 status,
 count(*) as total_project
 from `clever-tube-467215-u0.enterprise_construction.projects`
 group by status
 order by total_project desc;

-- Query 2 - Total Project Budget
SELECT
 sum(budget) as total_budget
 from `clever-tube-467215-u0.enterprise_construction.projects`;

-- Query 3 - Budget By Project Type
SELECT
 project_type,
 COUNT(*) AS total_projects,
 SUM(budget) AS total_budget,
 AVG(budget) AS average_budget
 from `clever-tube-467215-u0.enterprise_construction.projects`
 group by project_type
 order by total_budget desc;

-- Query 4 - Average Completion By Status
SELECT
 status,
 avg(completion_percentage) as avg_completion
 from `clever-tube-467215-u0.enterprise_construction.projects`
 group by status
 order by avg_completion desc;

-- Query 5 - Top 10 Projects By Budget
SELECT
  project_id,
  project_name,
  project_type,
  budget,
  status,
  completion_percentage
FROM `clever-tube-467215-u0.enterprise_construction.projects`
ORDER BY budget DESC
LIMIT 10;
 

