INSERT INTO Books(bookID, authorID, bookName, publisherID, pubDate, price, category, lastOrderDate, totalOrdered)
VALUES('cdfyls',6454,'Foe With A Home',92392,'1692-12-14',9302.65,'F','2017-01-12',20);
/*want error*/
INSERT INTO Orders(memberID, bookID, orderDate, quantity)
VALUES(8570,'kkome', '2016-06-14',9);
/*want error*/
INSERT INTO Reviews(reviewerID, bookID, reviewDate, reviewStars)
VALUES(73264,'ydopmx', '2005-04-11',4);
/*want error*/

UPDATE Orders
SET quantity = -1;
UPDATE Orders
SET quantity = 100;

UPDATE Books
SET lastOrderDate ='11/10/2010', pubDate ='11/10/2017';
UPDATE Books
SET lastOrderDate ='11/10/2018', pubDate ='11/10/2017';

UPDATE Members
SET joinDate = NULL, isCurrentMember = TRUE;
UPDATE Members
SET joinDate = NULL, isCurrentMember = NULL; 
