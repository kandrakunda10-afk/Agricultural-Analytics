1.total revenue
select sum(totalamount) as totalrevenue from sales

2.crop-wise-production
select c.cropname,sum(p.yieldproduced) as totalproduction from [dbo].[Production]p
inner join [dbo].[crops] c on p.[ProductionID] =c.[cropeid]
group by c.cropname;

3.top farmer by production
select top 1 f.farmername,sum(p.yieldproduced) as production from [dbo].[Production] p
inner join [dbo].[farmers] f 
on p.farmerid =f.farmeridc
group by f.farmername
order by production desc;

4.crop_wise revenue
select c.cropname,sum(s.totalamount) as revenue from sales s
inner join [dbo].[Production] p on s.[ProductionID] =p.[ProductionID]
inner join crops c on p.[cropid] = c.[cropeid]
group by c.cropname;

5.district_wise_land acres
select [district],sum([landacres]) as totalacres from [dbo].[farmers]
group by [district]

