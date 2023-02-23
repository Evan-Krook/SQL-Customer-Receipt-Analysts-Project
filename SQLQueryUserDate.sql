select a.ID as "ID of User", b.ID as "ID of Rewards Receipt" , b.Store_Name as "Store Name", c.Description as "Description of Item" , c.Original_Receipt_Item_Text as "Receipt Item Text (Description)", c.Total_Final_Price as "Final Cost of Item"
from users a 
join receipts b 
on a.ID = b.User_ID
join receipt_items c
on b.ID = c.Rewards_Receipt_ID
where c.quantity_purchased =1 and c.Total_Final_Price >= 7.13 and b.Rewards_Receipt_Status = 'Finished'
order by Total_Final_Price DESC



select a.ID as "ID of User", c.Rewards_Receipt_ID as "ID of Item Receipt" , b.Store_Name as "Store Name", c.Description as "Description of Item" , c.Total_Final_Price as "Final Cost of Item"
from users a 
join receipts b 
on a.ID = b.User_ID
join receipt_items c
on b.ID = c.Rewards_Receipt_ID
where c.Total_Final_Price >= 987.91 and b.Rewards_Receipt_Status = 'Finished' and c.quantity_Purchased = 1
order by Total_Final_Price DESC

