use company;
show tables;
select*from movies where ReleaseDate=2024;
select Title,Genre from movies;
select distinct Genre from movies;
select*from customers where city='chennai';
select*from Bookings where SeatsBooked>3;
select*from Payments where status='Pending';
select*from movies where ReleaseDate between'2023-01-01'and'2024-01-01';
select*from shows where TicketPrice between 200 and 400;
 select*from customers where Name like'c%';
 select*from movies order by ReleaseDate ASC;
 SELECT*FROM Bookings order by BookingDate DESC;
 select customerID,SUM(SeatsBooked)as TotalSeats FROM Bookings group by CustomerId;
 select BookingID,SUM(Amount)as TotalPaid from Payments group by BookingID;
 select ShowID,COUNT(*)AS TotalBookings from Bookings GROUP BY ShowID;
 select CustomerID,COUNT(*)AS TotalBookings from Bookings group by CustomerID HAVING COUNT(*)>2;
 SELECT ShowID,SUM(SeatsBooked)as TotalSeats from Bookings group by ShowID HAVING SUM(SeatsBooked)>10;
 SELECT * from Customers LIMIT 5;
 select *from Customers LIMIT 5 OFFSET 5;
 select DISTINCT CustomerID from Bookings where ShowID IN (select ShowID from Shows where TicketPrice>400);
SELECT MovieID ,Title from movies where MovieID IN(select ShowID from Bookings group by ShowID HAVING count(*) > 10); 
select c.Name,b.BookingID,b.SeatsBooked from Customers c INNER JOIN Bookings b ON C.CustomerID=b.CustomerID;
SELECT s.ShowID,m.Title from Shows s LEFT JOIN movies m ON s.MovieID=m.Movieid;
select b.BookingID,p.Amount,p.Status from Bookings b RIGHT JOIN Payments p ON b.BookingID=p.BookingID;
select t.Name,SUM(p.Amount)AS TotalRevenue from Theatres t INNER JOIN Shows s ON t.TheatreID=s.TheatreID INNER JOIN Bookings b ON s.ShowID=b.ShowID INNER JOIN Payments p ON b.BookingID=p.BookingID GROUP BY t.Name;
select CustomerID,BookingDate,count(*)TotalShows from Bookings group by CustomerID,BookingDate HAVING count(*) >1;
  DELETE from Bookings where BookingID= 5;
  delete from payments where status ='pending' and paymentDate<'2024-01-01';
 
 
  
 
 
 
 
 
 
 
 
 
 
 

