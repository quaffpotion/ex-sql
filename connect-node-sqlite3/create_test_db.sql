PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE department
(
 DepartmentID INT Primary key,
 DepartmentName VARCHAR(20)
);
INSERT INTO "department" VALUES(31,'Sales');
INSERT INTO "department" VALUES(33,'Engineering');
INSERT INTO "department" VALUES(34,'Clerical');
INSERT INTO "department" VALUES(35,'Marketing');
CREATE TABLE employee
(
 LastName VARCHAR(20),
 DepartmentID INT references department(DepartmentID)
, ManagerID INT);
INSERT INTO "employee" VALUES('Rafferty',31,NULL);
INSERT INTO "employee" VALUES('Jones',33,5);
INSERT INTO "employee" VALUES('Heisenberg',33,1);
INSERT INTO "employee" VALUES('Robinson',34,NULL);
INSERT INTO "employee" VALUES('Smith',34,3);
INSERT INTO "employee" VALUES('Williams',NULL,NULL);
COMMIT;
