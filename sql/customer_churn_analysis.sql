select count (*) Total_Rows
from CustomerChurn_Cleaned;

select top 10 *
From CustomerChurn_Cleaned;



select count (*) Total_Customers,
Sum ( case 
          when Churn = 1 then 1 else 0 end ) as Churned_Customers
from CustomerChurn_Cleaned;


SELECT Churn, COUNT(*) AS Customer_Count
FROM CustomerChurn_Cleaned
GROUP BY Churn;


select count(*) as Total_Customers,
sum (case when Churn = 1 then 1 else 0 end) as Churned_Customers,

round (
        100.0 * sum(case when Churn = 1 then 1 else 0 end)
        / count (*), 2 
) as Churn_Rate_Percent
FROM CustomerChurn_Cleaned;



select Contract,
count(*) as Total_Customer,
    sum(case when Churn = 1 then 1 else 0 end
    ) as Churned_Customers
from CustomerChurn_Cleaned
group by Contract
order by Churned_Customers desc;
  

  select  Contract,
  count(*) as Total_Customer,
    sum(case 
            when Churn = 1 then 1 else 0 end ) as Churned_Customers,
  ROUND 
        (100.0 * sum (case 
                           when Churn = 1 then 1 else 0 end) /count(*),
                           2) as Churned_rate_Percent
from CustomerChurn_Cleaned
group by Contract 
order by Churned_rate_Percent desc;


select * 
from CustomerChurn_Cleaned;

select  gender
from CustomerChurn_Cleaned;


select count(*)- count (OnlineSecurity) as OnlineSecurity_null,
count(*)- count (OnlineBackup) as OnlineBackup_null
from CustomerChurn_Cleaned;

select 
PaymentMethod,
count(*) as Total_Customers,
 sum 
     (case when Churn = 1 then 1 else 0 end ) as Customers_Churn,
 round 
      (100.0 * sum
                  (case when Churn = 1 then 1 else 0 end ) /count(*), 2) as Churn_Rate_Percent
 from CustomerChurn_Cleaned
 group by PaymentMethod
 order by Churn_Rate_Percent desc;
 


 select 
 InternetService,
 count(*) as Total_Customer,
      sum (case when Churn = 1 then 1 else 0 end ) as Custoomer_Churn,
  round (100.0 * sum( case when Churn = 1 then 1 else 0 end ) / count(*) , 2 ) as Churn_Rate_Percent
  from CustomerChurn_Cleaned
  group by InternetService
  order by Churn_Rate_Percent desc;


  select 
 TechSupport,  
 count(*) as Total_Customer,
      sum (case when Churn = 1 then 1 else 0 end ) as Custoomer_Churn,
  round (100.0 * sum( case when Churn = 1 then 1 else 0 end ) / count(*) , 2 ) as Churn_Rate_Percent
  from CustomerChurn_Cleaned
  group by TechSupport
  order by Churn_Rate_Percent desc;


  select 
 OnlineSecurity,  
 count(*) as Total_Customer,
      sum (case when Churn = 1 then 1 else 0 end ) as Custoomer_Churn,
  round (100.0 * sum( case when Churn = 1 then 1 else 0 end ) / count(*) , 2 ) as Churn_Rate_Percent
  from CustomerChurn_Cleaned
  group by OnlineSecurity
  order by Churn_Rate_Percent desc;

  select 
 SeniorCitizen,  
 count(*) as Total_Customer,
      sum (case when Churn = 1 then 1 else 0 end ) as Custoomer_Churn,
  round (100.0 * sum( case when Churn = 1 then 1 else 0 end ) / count(*) , 2 ) as Churn_Rate_Percent
  from CustomerChurn_Cleaned
  group by SeniorCitizen
  order by Churn_Rate_Percent desc;

select 
   case 
       when tenure <= 12 then '0_12 Months'
       when tenure <= 24 then '13_24 Months'
       when tenure <= 36 then '25_26 Months'
       else '49_72 Months'
   end as Tenure_group,
count(*) as Total_Cusromers,
  sum (case when Churn=1 then 1 else 0 end ) as Churned_customers,
round (100.0 *sum 
               ( case when Churn = 1 then 1 else 0 end ) / count (*), 2 ) as Churn_Rate_Percent
from CustomerChurn_Cleaned
group by 
     case 
       when tenure <= 12 then '0_12 Months'
       when tenure <= 24 then '13_24 Months'
       when tenure <= 36 then '25_26 Months'
       else '49_72 Months'
     end
order by Churn_Rate_Percent desc;


select 
     Contract,
     InternetService,
count(*) as Total_Customer,
   sum (case when Churn = 1 then 1 else 0 end ) as Churned_customer,
ROUND (100.0 * sum (case when Churn = 1 then 1 else 0 end ) / count(*), 2 ) as Churn_Rate_Percent
from CustomerChurn_Cleaned
group by Contract,
     InternetService
order by Churn_Rate_Percent desc;


select 
    case
       when MonthlyCharges <= 30 then '$0-30'
       when MonthlyCharges <= 60  then '$31-60'
       when MonthlyCharges <= 90 then '$61-90'
     else '$91-120'
    end as Monthly_Charge_Group,
count(*) as Total_Customer,
  sum (case when Churn = 1 then 1 else 0 end) as Cusromer_Churn,
round (100.0 * sum (case when Churn = 1 then 1 else 0 end ) / count(*), 2 ) as Churn_Rate_Percent 
from CustomerChurn_Cleaned
group by 
      case
       when MonthlyCharges <= 30 then '$0-30'
       when MonthlyCharges <= 60 then '$31-60'
       when MonthlyCharges <= 90 then '$61-90'
     else '$91-120'
     end 
     
order by Churn_Rate_Percent;

select top 10 
 customerID,
 MonthlyCharges,
 Contract,
 InternetService,
 Churn
from CustomerChurn_Cleaned
order by MonthlyCharges desc;


select count (*) as Total_Customer,
 sum (case when churn = 1 then 1 else 0 end ) as Customer_Churn,
 sum (case when churn = 0 then 1 else 0 end ) as Retained_Customers,
 ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS Churn_Rate_Percent,

    ROUND(
        100.0 * SUM(CASE WHEN Churn = 0 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS Retention_Rate_Percent

from CustomerChurn_Cleaned;