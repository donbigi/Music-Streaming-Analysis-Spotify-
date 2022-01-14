-- Creating tables in the server to store the datasets
CREATE TABLE public."StreamingHistory0"
(
    "endTime" timestamp without time zone,
    "artistName" character varying,
    "trackName" character varying,
    "msPlayed" integer
);

ALTER TABLE IF EXISTS public."StreamingHistory0"
    OWNER to postgres;
	
	
CREATE TABLE public."StreamingHistory1"
(
    "endTime" timestamp without time zone,
    "artistName" character varying,
    "trackName" character varying,
    "msPlayed" integer
);

ALTER TABLE IF EXISTS public."StreamingHistory0"
    OWNER to postgres;
	
	
CREATE TABLE public."StreamingHistory2"
(
    "endTime" timestamp without time zone,
    "artistName" character varying,
    "trackName" character varying,
    "msPlayed" integer
);

ALTER TABLE IF EXISTS public."StreamingHistory0"
    OWNER to postgres;

-- Uploading the dataset to the server
COPY public."StreamingHistory0" FROM '/Users/Cos-Ibe/GitHub/my_spotify_data/MyData/StreamingHistory0.json' DELIMITER ',' CSV HEADER;
COPY public."StreamingHistory1" FROM '/Users/Cos-Ibe/GitHub/my_spotify_data/MyData/StreamingHistory1.csv' DELIMITER ',' CSV HEADER;
COPY public."StreamingHistory2" FROM '/Users/Cos-Ibe/GitHub/my_spotify_data/MyData/StreamingHistory2.csv' DELIMITER ',' CSV HEADER;

-- Verifying if dataset was uploaded correctly
SELECT COUNT(*)
FROM public."StreamingHistory0";

SELECT COUNT(*)
FROM public."StreamingHistory1";

SELECT COUNT(*)
FROM public."StreamingHistory2";

-- Joining the 3 dataset
CREATE TABLE history AS (
SELECT *
FROM public."StreamingHistory0"
UNION
SELECT *
FROM public."StreamingHistory1"
UNION
SELECT *
FROM public."StreamingHistory2");


-- Verifying table was joined successfully
SELECT COUNT(*)
FROM history

-- Dropping tables that are no longer in use
DROP TABLE public."StreamingHistory0";
DROP TABLE public."StreamingHistory1";
DROP TABLE public."StreamingHistory2";

-- “msPlayed” is in mili-seconds and needs to be converted to minutes
ALTER TABLE public.history
ADD COLUMN minutes_played double precision;

UPDATE public.history
SET minutes_played = CAST("msPlayed" AS FLOAT)/60000;

-- dropping the "msPlayed" column since it is no longer needed

ALTER TABLE public.history
DROP COLUMN "msPlayed";



-- Adding column day and time

ALTER TABLE IF EXISTS public.history
ADD COLUMN "date" date;
ALTER TABLE IF EXISTS public.history
ADD COLUMN "time" time without time zone;

UPDATE public.history
SET "date" = date("endTime");
UPDATE public.history
SET "time" = CAST("endTime" AS TIME);

-- Verifying Changes
SELECT *
FROM public.history;

-- Checking number of total and unique artist I streamed

SELECT COUNT(DISTINCT("artistName")) AS unique_artist,
		COUNT("artistName") AS total_artist
FROM public.history;


-- Checking number of total and  unique song I streamed

SELECT COUNT(DISTINCT("trackName")) AS unique_song,
		COUNT("trackName") AS total_song
FROM public.history;











