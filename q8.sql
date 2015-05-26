CREATE VIEW Villa_Review_Likes AS SELECT villa_id,Review.user_id,Review.review_id, user_likes from Review,(SELECT count(user_id) as user_likes, review_id from review_likes group by review_id)likes WHERE likes.review_id = Review.review_id;
SELECT Subscribers.user_id, firstname,lastname,num_reviews_with_max_likes FROM Subscribers,(SELECT num_reviews_with_max_likes, user_id FROM (SELECT COUNT(villa_review_likes.villa_id) AS num_reviews_with_max_likes, user_id FROM villa_review_likes, (SELECT MAX(user_likes) AS max_like, villa_id FROM villa_review_likes GROUP BY villa_id)max_likes WHERE max_likes.villa_id = villa_review_likes.villa_id AND user_likes = max_like GROUP BY user_id ORDER BY COUNT(villa_review_likes.villa_id) DESC) WHERE rownum<=1)famous_reviewer WHERE Subscribers.user_id = famous_reviewer.user_id;
DROP VIEW Villa_Review_Likes
/