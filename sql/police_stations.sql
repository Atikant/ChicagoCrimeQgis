DROP TABLE IF EXISTS "police_stations" CASCADE;
DELETE FROM geometry_columns WHERE f_table_name = 'police_stations';

CREATE TABLE "police_stations" ( "ogc_fid" SERIAL, CONSTRAINT "police_stations_pk" PRIMARY KEY ("ogc_fid") );


ALTER TABLE "police_stations" ADD COLUMN "objectid" NUMERIC(10,0);
ALTER TABLE "police_stations" ADD COLUMN "name" VARCHAR(60);
ALTER TABLE "police_stations" ADD COLUMN "description" VARCHAR(60);
ALTER TABLE "police_stations" ADD COLUMN "address" VARCHAR(39);
ALTER TABLE "police_stations" ADD COLUMN "dist" VARCHAR(8);
ALTER TABLE "police_stations" ADD COLUMN "ps_geom" geometry;

CREATE INDEX "police_stations_ps_geom_geom_idx" ON "police_stations" USING GIST ("ps_geom");

INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D00005059865800E3314160F7E4412A463C41', 1, '6TH', '006', '7808 S HALSTED ST', '6');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D0000D0F7532343F3314100341132FADD3C41', 2, '1ST', '001', '1718 S STATE ST', '1');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D0000505986185DA831410044FA79BB363D41', 3, '14TH', '014', '2150 N CALIFORNIA AVE', '14');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D0000A03C2C4005C3314120D9CEA76AA63D41', 4, '24TH', '024', '6464 N CLARK ST', '24');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D0000C09F1ADB4FD23141C088D2828E6D3C41', 5, '7TH', '007', '1400 W 63RD ST', '7');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D0000A03C2C84B6DF3141401136E048BF3C41', 6, '9TH', '009', '3120 S HALSTED ST', '9');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D00006086386697D9314160006F257A5C3D41', 7, '19TH', '019', '850 W ADDISON ST', '19');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D0000A057CA42D660314120CB10C346313D41', 8, '25TH', '025', '5555 W GRAND AVE', '25');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D000070567D4A7D0F324180B96B259DF13B41', 9, '5TH', '005', '727 E 111TH ST', '5');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D0000A09BC4905B343241801D3857AC073C41', 10, '4TH', '004', '2255 E 103RD ST', '4');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D000030431C47C29D314140696F3451DA3C41', 11, '10TH', '010', '3315 W OGDEN AVE', '10');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D0000408B6C37475D31414008ACB840FB3C41', 12, '15TH', '015', '5701 W MADISON ST', '15');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D000040AD690EC1F1314120A0892C5C8C3C41', 13, '2ND', '002', '5101 S WENTWORTH AVE', '2');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D000000341162740B3241A025E4DFC25B3C41', 14, '3RD', '003', '7040 S COTTAGE GROVE AVE', '3');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D0000200681193CE23141604DF32A571D3D41', 15, '18TH', '018', '1158 N LARRABEE ST', '18');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D00008004C55FBAAC314160F7E4417A8A3D41', 16, '20TH', '020', '5400 N LINCOLN AVE', '20');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D0000E068008F2ED43141E02406FD12E43C41', 17, '12TH', '012', '1412 S BLUE ISLAND AVE', '12');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D0000A0F831F69BA03141E000DEB257F23C41', 18, '11TH', '011', '3151 W HARRISON ST', '11');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D000040C6DCA5365F3141E061A146CC813D41', 19, '16TH', '016', '5151 N MILWAUKEE AVE', '16');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D000010F9A0170CF83141A0BDC1ABFAB53C41', 20, 'CPD HQ', 'HQ', '3510 S MICHIGAN AVE', NULL);
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D000060984C557E87314180711B2D5B763D41', 21, '17TH', '017', '4650 N PULASKI RD', '17');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D000030CD3B8A87C93141E0A3703D4CF03B41', 22, '22ND', '022', '1900 W MONTERREY AVE', '22');
INSERT INTO "police_stations" ("ps_geom" , "objectid", "name", "description", "address", "dist") VALUES ('01010000206B0D0000908EE4F20D9E31414050FCE8326C3C41', 23, '8TH', '008', '3420 W 63RD ST', '8');
