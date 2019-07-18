/*SELECT * FROM GreatPublishers;
SELECT * FROM BadBookTotals;*/

SELECT GP.publisherID, GP.numReviewedPublished, COUNT(BT.bookID) AS numBad
FROM GreatPublishers GP, BadBookTotals BT, Books B
WHERE B.publisherID = GP.publisherID AND B.bookID = BT.bookID
GROUP BY GP.publisherID, GP.numReviewedPublished;

DELETE FROM Orders 
WHERE (memberID = 8844 AND bookID = 'jgzhwq') OR (memberID = 2161 AND bookID = 'rrrrrr');

/*SELECT * FROM GreatPublishers;
SELECT * FROM BadBookTotals;*/