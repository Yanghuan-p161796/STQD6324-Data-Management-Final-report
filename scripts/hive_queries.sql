
-- Netflix Content Analysis
-- Hive queries used in Apache Zeppelin
-- Raw records: 8809
-- Cleaned records: 8789

SELECT COUNT(*) AS raw_record_count
FROM netflix_titles;

SELECT COUNT(*) AS cleaned_record_count
FROM netflix_cleaned;

-- 01 Content type distribution
SELECT
    type AS content_type,
    COUNT(*) AS total_count
FROM netflix_cleaned
GROUP BY type
ORDER BY total_count DESC;

-- 02 Top 10 countries
SELECT
    country,
    COUNT(*) AS total_count
FROM netflix_cleaned
WHERE country IS NOT NULL
  AND country != ''
GROUP BY country
ORDER BY total_count DESC
LIMIT 10;

-- 03 Rating distribution
SELECT
    rating,
    COUNT(*) AS total_count
FROM netflix_cleaned
WHERE rating IS NOT NULL
  AND rating != ''
GROUP BY rating
ORDER BY total_count DESC;

-- 04 Release year trend
SELECT
    release_year,
    COUNT(*) AS total_count
FROM netflix_cleaned
WHERE release_year BETWEEN 2000 AND 2021
GROUP BY release_year
ORDER BY release_year;

-- 05 Top 10 genres
SELECT
    genre_name,
    COUNT(*) AS total_count
FROM (
    SELECT
        explode(split(listed_in, ', ')) AS genre_name
    FROM netflix_cleaned
    WHERE listed_in IS NOT NULL
      AND listed_in != ''
) genre_table
GROUP BY genre_name
ORDER BY total_count DESC
LIMIT 10;

-- 06 Movie duration group
SELECT
    CASE
        WHEN CAST(regexp_extract(duration, '[0-9]+', 0) AS INT) < 60
            THEN 'Less than 60 min'
        WHEN CAST(regexp_extract(duration, '[0-9]+', 0) AS INT) BETWEEN 60 AND 90
            THEN '60-90 min'
        WHEN CAST(regexp_extract(duration, '[0-9]+', 0) AS INT) BETWEEN 91 AND 120
            THEN '91-120 min'
        ELSE 'More than 120 min'
    END AS duration_group,
    COUNT(*) AS total_count
FROM netflix_cleaned
WHERE type = 'Movie'
  AND duration IS NOT NULL
  AND duration != ''
GROUP BY
    CASE
        WHEN CAST(regexp_extract(duration, '[0-9]+', 0) AS INT) < 60
            THEN 'Less than 60 min'
        WHEN CAST(regexp_extract(duration, '[0-9]+', 0) AS INT) BETWEEN 60 AND 90
            THEN '60-90 min'
        WHEN CAST(regexp_extract(duration, '[0-9]+', 0) AS INT) BETWEEN 91 AND 120
            THEN '91-120 min'
        ELSE 'More than 120 min'
    END
ORDER BY total_count DESC;
