select 
  b.booking_id, 
  users.name as user_name, vehicles.name as vehicle_name, 
  b.start_date, b.end_date, b.status, b.total_cost
from bookings as b
join users on b.user_id = users.user_id
join vehicles on b.vehicle_id = vehicles.vehicle_id

