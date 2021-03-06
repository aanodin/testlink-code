-- TestLink Open Source Project - http://testlink.sourceforge.net/
-- This script is distributed under the GNU General Public License 2 or later.
--
-- SQL script - Postgres   
-- 
--
INSERT INTO /*prefix*/rights (id,description) VALUES (47,'testcase_freeze');

--  Rights for Administrator (admin role)
INSERT INTO /*prefix*/role_rights (role_id,right_id) VALUES (8,47);

ALTER TABLE /*prefix*/cfield_testprojects ADD COLUMN "monitorable" INT2 NOT NULL default '0';

ALTER TABLE /*prefix*/users ALTER COLUMN "login" VARCHAR(100);
ALTER TABLE /*prefix*/users ALTER COLUMN "first" VARCHAR(50);
ALTER TABLE /*prefix*/users ALTER COLUMN "last" VARCHAR(50);
