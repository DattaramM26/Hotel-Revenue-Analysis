--the first step is to create a new database named project
-- second sstep to import the data from excel which has tables
--now we use union to collect all the tables together

-- getting these three tables under one name hotels 

with hotels as(     
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'] 
)
-- to check hotel revenue by year now we dont have revenue column so we calculatedd by using stays * daily rate
--then we group by arrival date ti check year wise total revenue


--now we need to validate the 2020 table 

select * from hotels
left join dbo.market_segment$ 
on hotels.market_segment=market_segment$.market_segment
left join dbo.meal_cost$ 
on meal_cost$.meal=hotels.meal





