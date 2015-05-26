SELECT no_of_villas_owned, user_id, firstname, lastname FROM Subscribers, (SELECT COUNT(villa_id) AS no_of_villas_owned, owner_id FROM villa_Owners GROUP BY owner_id)owner_villa_cnt WHERE subscribers.user_id = owner_villa_cnt.owner_id ORDER BY no_of_villas_owned DESC
/