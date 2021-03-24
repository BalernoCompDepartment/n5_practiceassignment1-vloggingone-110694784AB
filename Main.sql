/* do not change the following four lines! */
.header on
.mode column
.read emptyVlogging.sql
PRAGMA foreign_keys = ON;
/* do not change the above four lines! */

CREATE TABLE vlogger(
vloggerID int NOT NULL,
forename varchar(20) NOT NULL,
surname varchar(20) NOT NULL,
username varchar(6) NOT NULL,
expertise varchar(15) NOT NULL,

/* Adding validation to the table from the datadictionary*/
PRIMARY KEY (vloggerID),
CHECK (length (username) = 6),
CHECK (expertise IN ("Programming", "Gaming", "Baking", "Crafts", "Makeup", "Clothes"))
);
