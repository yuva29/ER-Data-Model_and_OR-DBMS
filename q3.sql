SELECT user_id,firstname,lastname FROM Subscribers WHERE user_id IN (SELECT user_id FROM Reservation WHERE coupon_id IN (SELECT coupon_id from coupon WHERE discount_percent>10))
/