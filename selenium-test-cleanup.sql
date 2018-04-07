USE `openhds`;

DELETE x FROM pregnancyoutcome_outcome x INNER JOIN pregnancyoutcome y on x.pregnancyoutcome_uuid = y.uuid;
DELETE FROM `pregnancyoutcome` WHERE collectedBy_uuid = 'Test Fieldworker' ;
DELETE FROM `pregnancyobservation` WHERE collectedBy_uuid = 'Test Fieldworker';
DELETE FROM `relationship` WHERE uuid = 'TestRelationship';
DELETE FROM  `membership` WHERE collectedBy_uuid = 'Test Fieldworker';
DELETE FROM `residency` WHERE collectedBy_uuid = 'Test Fieldworker';
DELETE FROM `socialgroup` WHERE collectedBy_uuid = 'Test Fieldworker';
DELETE FROM `pregnancyoutcome` WHERE collectedBy_uuid = 'Test Fieldworker';
DELETE FROM `individual` WHERE collectedBy_uuid = 'Test Fieldworker';
DELETE FROM `visit` WHERE uuid = 'TestVisit2';
DELETE FROM `round` WHERE uuid = 'ROUND 2';
DELETE FROM `location` WHERE uuid = 'TestLocation1';
DELETE FROM `fieldworker` WHERE uuid = 'Test Fieldworker';
DELETE FROM `user` WHERE uuid = 'User 2';

