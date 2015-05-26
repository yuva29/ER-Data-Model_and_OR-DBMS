CREATE VIEW Owner_Villa_Count AS SELECT owner_id, COUNT(villa_id) AS num_villas_owned from villa_Owners group by owner_id;
CREATE VIEW Villa_Reservation_Aug82014 AS SELECT owner_id, COUNT(reserved_villa) AS reserved_cnt FROM (SELECT owner_id, Villa_Owners.villa_id AS reserved_villa FROM Villa_Owners, (SELECT villa_id FROM reservation WHERE start_date<=TO_DATE('08-15-2014','MM-DD-YYYY') AND end_date>=TO_DATE('08-15-2014','MM-DD-YYYY'))Reserved_Villas WHERE Reserved_Villas.villa_id = Villa_Owners.villa_id) GROUP BY owner_id;
CREATE VIEW Reservations_Aug82014 AS SELECT owner_villa_count.owner_id, owner_villa_count.num_villas_owned, NVL(villa_reservation_aug82014.reserved_cnt,0) AS reserved_cnt from owner_villa_count left outer join villa_reservation_aug82014 ON owner_villa_count.owner_id = villa_reservation_aug82014.owner_id;
SELECT owner_id, firstname, lastname, vacancy_ratio FROM Subscribers, (SELECT owner_id,((num_villas_owned-reserved_cnt)/num_villas_owned) AS vacancy_ratio FROM Reservations_Aug82014)Vac_Ratio WHERE Subscribers.user_id = Vac_Ratio.owner_id;
DROP VIEW Reservations_Aug82014;
DROP VIEW Villa_Reservation_Aug82014;
DROP VIEW Owner_Villa_Count
/