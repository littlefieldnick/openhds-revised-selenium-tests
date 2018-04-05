INSERT INTO `user` (uuid, firstName, lastName, fullName, description, username, password, lastLoginTime, deleted) 
VALUES ('User 2', 'Test User', 'Test', 'Administrator', 'Administrator User', 'test', 'test', 0, false);

INSERT INTO `fieldworker` (uuid, extid, firstname, lastname, deleted,passwordHash) 
VALUES ('Test Fieldworker','FWTFW2', 'Test', 'Fieldworker', false, 'invalid-password-hash');

INSERT INTO `location` (uuid,extId,locationName,locationLevel_uuid,locationType,insertDate,voidDate,voidReason,voidBy_uuid,deleted,collectedBy_uuid,insertBy_uuid,status) 
VALUES ('TestLocation1','MBI000023','Test Location','hierarchy5','RUR','2018-04-04' ,NULL,NULL,NULL,false,'Test Fieldworker','User 2','A');

INSERT INTO `individual` (uuid,extId,firstName,middleName,lastName,gender,dob,mother_uuid,father_uuid,insertBy_uuid,insertDate,status,voidDate,voidReason,voidBy_uuid,deleted,collectedBy_uuid) 
VALUES ('Test Indiv 1', 'MBI000023001', 'Test', '' , 'Individual 1','M','1987-09-02','Unknown Individual','Unknown Individual','User 2', '2018-04-04', 'A', NULL,NULL,NULL,false,'Test Fieldworker');

INSERT INTO `individual` (uuid,extId,firstName,middleName,lastName,gender,dob,mother_uuid,father_uuid,insertBy_uuid,insertDate,status,voidDate,voidReason,voidBy_uuid,deleted,collectedBy_uuid) 
VALUES ('Test Indiv 2', 'MBI000023002', 'Test', '' , 'Individual 2','F','1989-02-21','Unknown Individual','Unknown Individual','User 2', '2018-04-04', 'A', NULL,NULL,NULL,false,'Test Fieldworker');

INSERT INTO `individual` (uuid,extId,firstName,middleName,lastName,gender,dob,mother_uuid,father_uuid,insertBy_uuid,insertDate,status,voidDate,voidReason,voidBy_uuid,deleted,collectedBy_uuid) 
VALUES ('Test Indiv 3', 'MBI000023003', 'Test', '' , 'Individual 3','F','1993-01-02','Unknown Individual','Unknown Individual','User 2', '2018-04-04', 'A', NULL,NULL,NULL,false,'Test Fieldworker');

INSERT INTO `round` (uuid,roundNumber,startDate,endDate,remarks) VALUES('ROUND 2' ,'2', '2018-04-04','2018-05-04', 'Test Round');

INSERT INTO `visit` (uuid,extId,visitDate,status,insertDate,collectedBy_uuid,visitLocation_uuid,deleted,roundNumber,insertBy_uuid, realVisit) 
VALUES ('TestVisit2','MBI000023001','2018-04-02','P','2018-04-04','Test Fieldworker','TestLocation1',false,2,'User 2', '0');

INSERT INTO `residency` (uuid,location_uuid,individual_uuid,startDate,startType,endDate,endType,collectedBy_uuid,deleted,status,insertDate,insertBy_uuid)
VALUES ('TestResidency1','TestLocation1','Test Indiv 3','1993-01-02','BIR',NULL,'NA','Test Fieldworker',false,'A','2014-04-04','User 2');

INSERT INTO `socialgroup` (uuid, extId, deleted, insertdate, groupName, collectedby_uuid, insertby_uuid, grouphead_uuid,groupType,status) 
VALUES ('TestSocialGroup1','MBI000002300',false, '2018-04-04','Test SG','Test Fieldworker','User 2','Test Indiv 1','FAM','P');

INSERT INTO `membership` (`UUID`, `deleted`, `insertDate`, `voidDate`, `voidReason`, `STATUS`, `statusMessage`, `bIsToA`, `endDate`, `endType`, `startDate`, `startType`, `insertBy_uuid`, `voidBy_uuid`, `collectedBy_uuid`, `individual_uuid`, `socialGroup_uuid`) 
VALUES ('MemTest1', '0', '2018-04-04', NULL, NULL, 'A', NULL, '1', NULL, NULL, '2018-04-04', NULL, NULL, NULL, 'Test Fieldworker', 'Test Indiv 1', 'TestSocialGroup1');

INSERT INTO `relationship` (`uuid`, `deleted`, `insertDate`, `voidDate`, `voidReason`, `status`, `statusMessage`, `aIsToB`, `endDate`, `endType`, `startDate`, `insertBy_uuid`, `voidBy_uuid`, `collectedBy_uuid`, `individualA_uuid`, `individualB_uuid`) 
VALUES ('TestRelationship', '0', '2018-04-04', NULL, NULL, NULL, NULL, '2', NULL, NULL, '2018-04-04', 'User 2', NULL, 'Test Fieldworker', 'Test Indiv 1', 'Test Indiv 2');

INSERT INTO `pregnancyobservation` (`uuid`, `deleted`, `insertDate`, `voidDate`, `voidReason`, `status`, `statusMessage`, `expectedDeliveryDate`, `recordedDate`, `insertBy_uuid`, `voidBy_uuid`, `collectedBy_uuid`, `mother_uuid`, `visit_uuid`) 
VALUES ('PregObsTest', '0', '2018-04-04', NULL, NULL, NULL, NULL, '2018-12-12', '2018-04-04', 'User 2', NULL, 'Test Fieldworker', 'Test Indiv 2', 'TestVisit2');

INSERT INTO `pregnancyoutcome` (`uuid`, `deleted`, `insertDate`, `voidDate`, `voidReason`, `status`, `statusMessage`, `childEverBorn`, `numberOfLiveBirths`, `outcomeDate`, `insertBy_uuid`, `voidBy_uuid`, `collectedBy_uuid`, `father_uuid`, `mother_uuid`, `visit_uuid`) 
VALUES ('PregOutcomeTest', '0', '2018-04-04', NULL, NULL, NULL, NULL, '1', '1', '2018-03-13', 'User 2', 'User 2', 'Test Fieldworker', 'Test Indiv 1', 'Test Indiv 2', 'TestVisit2');