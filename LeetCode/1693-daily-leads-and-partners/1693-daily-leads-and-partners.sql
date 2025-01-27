# Write your MySQL query statement below
SELECT date_id, make_name
     , DISTINCT lead_id AS unique_leads
     , DISTINCT partner_id AS unique_partners
  FROM DailySales