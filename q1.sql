SELECT villa_id, name FROM Villas WHERE villa_id IN (SELECT Villa_id FROM Villa_features WHERE feature_id = 'Fea2' AND villa_id IN (SELECT villa_id FROM Villa_Features WHERE feature_id <> 'Fea6'))
/