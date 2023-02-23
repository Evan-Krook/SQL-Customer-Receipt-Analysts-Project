Select distinct (case when month(Date_scanned) = '1' then 'January'
					when month(Date_scanned) = '2' then 'Feburary'
					when month(Date_scanned) = '3' then 'March'
					when month(Date_scanned) = '4' then 'April'
					when month(Date_scanned) = '5' then 'May'
					when month(Date_scanned) = '6' then 'June'
					when month(Date_scanned) = '7' then 'July'
					when month(Date_scanned) = '8' then 'August'
					when month(Date_scanned) = '9' then 'September'
					when month(Date_scanned) = '10' then 'October'
					when month(Date_scanned) = '11' then 'November'
                      when month(Date_Scanned) = '12' then 'December' end) as Month,  count(month(Date_scanned)) as 'Total Users Scanned'
from receipts
where Rewards_Receipt_Status = 'Finished'
group by month(Date_Scanned)
order by 'Total Users Scanned' DESC

