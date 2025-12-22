select 
  b.booking_id, 
  users.name as user_name, vehicles.name as vehicle_name, 
  b.start_date, b.end_date, b.status, b.total_cost
from bookings as b
join users on b.user_id = users.user_id
join vehicles on b.vehicle_id = vehicles.vehicle_id



select * from vehicles
where not exists 
  ( select 1 from bookings where bookings.vehicle_id = vehicles.vehicle_id )


select * from vehicles 
where status = 'available'
and type = 'bike'


select vehicles.name as vehicle_name, 
count( bookings.booking_id ) as total_bookings
 from bookings
join vehicles 
on bookings.vehicle_id = vehicles.vehicle_id
group by vehicles.vehicle_id, vehicles.name
having count (bookings.booking_id) > 2