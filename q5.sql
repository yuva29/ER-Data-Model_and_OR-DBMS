SELECT AVG(TRUNC((start_date-dob)/365)) AS avg_age FROM Subscribers, (SELECT user_id,start_date FROM Reservation WHERE (TO_CHAR(start_date,'MM')>=09 AND TO_CHAR(start_date,'MM')<=12) AND TO_CHAR(start_date,'YYYY')=2013)temp_users WHERE Subscribers.user_id = temp_users.user_id
/