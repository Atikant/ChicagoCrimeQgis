---creating police patrolling buffer of 2kms.

create or replace Table Chicago_police_buffer as
select ogc_fid as id , ST_Buffer(ST_Transform(ps_geom,3857),2000) as police_buffer from police_stations;
select * from Chicago_police_buffer;



---creating park buffer of 200 m.

create or replace Table Chicago_park_buffer as
select ogc_fid as id , ST_Buffer(ST_Transform(park_geom,3857),200) as park_buffer from chicago_parks;
select * from Chicago_police_buffer;




---creating a view for crimes happenening in parks
create view max_case_park as 
(select p.id ,p.park_buffer,count(*)from chicago_crime_children c,Chicago_park_buffer p
 where st_contains(st_transform(p.park_buffer,4326),c.crimes_geom) group by p.id,p.park_buffer order by count desc limit 1); 


---creating a view for max crimes happenening near policestations
create view max_case_police_station as 
(select p.id ,p.police_buffer,count(*)from chicago_crime_children c,Chicago_police_buffer p 
where st_contains(st_transform(p.police_buffer,4326),c.crimes_geom) group by p.id,p.police_buffer order by count desc limit 1); 


--- creating grid

With PolygonQuery AS (
    SELECT CG.ogc_fid, CG.grid_geom, COUNT(*) as crimes_per_grid FROM chicago_crime_children CC, chicago_grid  CG 
    WHERE ST_CONTAINS(CG.grid_geom, CC.crimes_geom) GROUP BY CG.ogc_fid)
	UPDATE chicago_grid SET crimes_per_grid = PolygonQuery.crimes_per_grid
FROM PolygonQuery
WHERE chicago_grid.ogc_fid = PolygonQuery.ogc_fid;

CREATE OR REPLACE VIEW
CrimesPerGridView AS
 SELECT ogc_fid, grid_geom, crimes_per_grid from chicago_grid;