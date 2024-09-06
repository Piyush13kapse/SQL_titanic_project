create database titanic_project;
use titanic_project;
select * from titanic;


-- 1. Show the first 10 rows of the dataset.
select * from titanic
limit 10;



 -- 2. Find the number of passengers who survived.
select count(*)
as surviveddd from titanic 
where survived=1;



 -- 3. Find the average age of all passengers.
 select avg(Age) from titanic ;
 
 
 
 
 -- 4. Find the number of passengers in each class.
 select  Pclass, count(*) as class
FROM titanic 
group by  Pclass
order by Pclass asc;



 
 -- 5. Find the first 10 rows of the dataset sorted by passenger class in descending order.
 select * from titanic 
 order by Pclass desc
 limit 10;
 
 
 
 
 
 -- 6. Find the number of passengers in each class sorted by class in ascending order.
  select  Pclass, count(*) as class
FROM titanic 
group by  Pclass
order by Pclass asc;
 
 
 
 
 -- 7. Find the average fare paid by passengers in each class.
 select Pclass,avg(Fare) from titanic
 group by Pclass
 order by Pclass asc;





 -- 8. Find the name of the passenger with the highest fare.
 select Name, Fare from titanic 
 order by Fare desc
 limit 1;
 
 
 
 
 
 
 -- . select max(Fare) from titanic
 
 select Fare from titanic 
 order by Fare desc
 limit 1;
 
 
 
  -- 9. Find the name of the passenger who had the highest age among the survivors.
  
  select Name , Age  from titanic 
where survived=1
order by Age desc
limit 1;


   -- 10. Find the number of passengers who paid more than the average fare.
  select count(*) from titanic 
  where Fare >(select avg(Fare) from titanic )  ; 
   
   
   
   -- 11. Find the name of the passenger who had the most parents or children on board.

select Name , Sibsp from titanic 
order by Sibsp desc;
   
   
 -- 12. Find the number of male and female passengers who survived,  and order the results by sex in ascending order:
select Sex , count(Survived) from titanic 
where Survived = 1
group by Sex
order by Sex desc;



-- 13. Find the name, age, and fare of the oldest passenger who survived.

select Name , Age, Fare from titanic 
order by Age desc
limit 1;




 -- 14. Find the name and age of the youngest female passenger who survived in third class.
 
 
 SELECT Name, Age , Sex FROM titanic 
WHERE Sex= 'female'AND Survived = 1 AND Pclass = 3
ORDER BY age ASC;

 
 
 -- 15. Find Number of male and female passengers
 
 select Sex ,count(*)as total  from titanic 
 group by Sex 
 order by total desc;
 
 
 
--  Select all passengers who traveled in a cabin that was not shared by other passengers.


SELECT * FROM titanic 
WHERE cabin in 
 (select  Cabin from  titanic
  group by  cabin
having count(*) = 1
);


-- 




 