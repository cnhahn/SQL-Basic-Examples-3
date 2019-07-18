CREATE VIEW GreatPublishers AS
SELECT B.publisherID, COUNT(B.bookID) AS numReviewedPublished
FROM Books B, Reviews R
WHERE B.bookID = R.bookID
GROUP BY B.publisherID
HAVING COUNT(B.publisherID) >= 2 AND EVERY(R.reviewStars >= 3);

CREATE VIEW BadBookTotals AS
SELECT b.bookID, b.totalOrdered, SUM(o.quantity) AS badQuantitySum
FROM Books b, Orders o
WHERE b.bookID = o.bookID
GROUP BY b.bookID
HAVING SUM(o.quantity) <> b.totalOrdered;

/*check useing these commands should have more then 1 result
SELECT * FROM GreatPublishers
SELECT * FROM Books*/