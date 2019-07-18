BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;

UPDATE Members
SET memberName = NM.memberName, renewalDate = NM.renewalDate, isCurrentMember = TRUE
FROM NewMemberships NM
WHERE Members.memberID = NM.memberID;

/*WHERE NM.memberID IN (SELECT memberID FROM Members);*/


INSERT INTO Members(memberID, memberName, joinDate, renewalDate, isCurrentMember)
SELECT NM.memberID, NM.memberName, CURRENT_DATE, NM.renewalDate, TRUE
FROM NewMemberships NM
WHERE NM.memberID NOT IN (SELECT memberID FROM Members);

COMMIT;