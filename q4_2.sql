SELECT Subscribers.user_id, firstname, lastname, deposit FROM Subscribers,(SELECT deposit, user_id FROM Reservation WHERE TO_CHAR(end_date, 'YYYY') = 2013 ORDER BY deposit DESC, user_id)highest_deposits WHERE rownum<=3 AND Subscribers.user_id = highest_deposits.user_id
/