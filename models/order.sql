select
o."ID" as orderid
, c."ID" as customerid
, sum(p."AMOUNT") as totalpayment
FROM RAW.JAFFLE_SHOP.ORDERS o 
JOIN RAW.JAFFLE_SHOP.CUSTOMERS c
 ON o."USER_ID" = c."ID"
JOIN RAW.STRIPE.PAYMENT p
ON o."ID" = p."orderID"
group by 2,1