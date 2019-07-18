ALTER TABLE Orders
ADD CONSTRAINT positive_quantity
CHECK(quantity >= 0);

ALTER TABLE Books
ADD CONSTRAINT check_date
CHECK(lastOrderDate >= pubDate);

ALTER TABLE Members
ADD CONSTRAINT check_membership
CHECK((joinDate IS NULL AND isCurrentMember IS NULL) OR joinDate IS NOT NULL);
