#1. Retrieve all successful bookings:
Create View ola_Successful_Bookings As
SELECT * FROM ola.bookings
WHERE Booking_Status = 'Success';
#2. Find the average ride distance for each vehicle type:
Create View ola_ride_distance_for_each_vehicle As
SELECT Vehicle_Type, AVG(Ride_Distance)
as avg_distance FROM ola.bookings
GROUP BY Vehicle_Type;
#3. Get the total number of cancelled rides by customers:
Create View ola_cancelled_rides_by_customers As
SELECT COUNT(*) FROM ola.bookings
WHERE Booking_Status = 'cancelled by Customer';
#4. List the top 5 customers who booked the highest number of rides:
Create View ola_Top_5_Customers As
SELECT Customer_ID, COUNT(Booking_ID) as total_rides
FROM ola.bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;
#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Create View ola_Rides_cancelled_by_Drivers_P_C_Issues As
SELECT COUNT(*) FROM ola.bookings
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';
#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Create View ola_Max_Min_Driver_Rating As
SELECT MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM ola.bookings 
WHERE Vehicle_Type = 'Prime Sedan';
#7. Retrieve all rides where payment was made using UPI:
create view ola_upi_bookings as
select * from ola.bookings
where Payment_Method='UPI' ;
#8. Find the average customer rating per vehicle type:
create view ola_AVG_Cust_Rating as
select Vehicle_Type , avg(Customer_Rating)
as avg_customer_rating from ola.bookings
group by Vehicle_Type;
#9. Calculate the total booking value of rides completed successfully:
create view ola_total_successful_ride_value as
select sum(Booking_Value) as tot_booking_value
from ola.bookings
where Booking_Status='Success';
#10. List all incomplete rides along with the reason:
create view ola_Incomplete_Rides_Reason as
select Booking_ID,Incomplete_Rides_Reason 
from ola.bookings
where Incomplete_Rides='Yes';


#1. Retrieve all successful bookings:
Select * From ola_Successful_Bookings;
#2. Find the average ride distance for each vehicle type:
Select * from ola_ride_distance_for_each_vehicle;
#3. Get the total number of cancelled rides by customers:
Select * from ola_cancelled_rides_by_customers;
#4. List the top 5 customers who booked the highest number of rides:
Select * from ola_Top_5_Customers;
#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Select * from ola_Rides_cancelled_by_Drivers_P_C_Issues;
#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Select * from ola_Max_Min_Driver_Rating;
#7. Retrieve all rides where payment was made using UPI:
Select * from ola_upi_bookings;
#8. Find the average customer rating per vehicle type:
Select * from ola_AVG_Cust_Rating;
#9. Calculate the total booking value of rides completed successfully:
Select * from ola_total_successful_ride_value;
#10. List all incomplete rides along with the reason:
Select * from ola_Incomplete_Rides_Reason;