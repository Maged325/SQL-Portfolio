-- --------------------------------------------------------------------
-- 1. How many olympics games have been held?
    SELECT COUNT( DISTINCT games) AS total_olympic_games
    FROM olympics_history;
-- --------------------------------------------------------------------
-- 2. List down all Olympics games held so far.
	SELECT DISTINCT year, season, city
    FROM olympics_history 
    ORDER BY year;
	-- (Data issue at 1956-"Summer"-"Stockholm")
-- ------------------------------------------------------------------------------
-- 3. Mention the total no of nations who participated in each olympics game?
SELECT games,COUNT(DISTINCT nr.region) FROM olympics_history AS oh
	JOIN olympics_history_noc_regions AS nr ON nr.noc=oh.noc
	GROUP BY games
	ORDER BY games;
-- -----------------------------------------------------------------------------------
-- 4. Which year saw the highest and lowest no of countries participating in olympics?
     SELECT 
    (SELECT CONCAT(games, ' - ', total_countries) 
     FROM (
         SELECT oh.games, COUNT(DISTINCT nr.region) AS total_countries
         FROM olympics_history oh
         JOIN olympics_history_noc_regions nr ON nr.noc = oh.noc
         GROUP BY oh.games
         ORDER BY total_countries ASC
         LIMIT 1
     ) lowest) AS Lowest_Countries,

    (SELECT CONCAT(games, ' - ', total_countries) 
     FROM (
         SELECT oh.games, COUNT(DISTINCT nr.region) AS total_countries
         FROM olympics_history oh
         JOIN olympics_history_noc_regions nr ON nr.noc = oh.noc
         GROUP BY oh.games
         ORDER BY total_countries DESC
         LIMIT 1
     ) highest) AS Highest_Countries;	 
-- ----------------------------------------------------------------------------------
-- 5. Which nation has participated in all of the olympic games
     SELECT nr.region AS country, COUNT(DISTINCT oh.games) AS total_participated_games
FROM olympics_history oh
JOIN olympics_history_noc_regions nr ON nr.noc = oh.noc
GROUP BY nr.region
HAVING COUNT(DISTINCT oh.games) = (
    SELECT COUNT(DISTINCT games)
    FROM olympics_history)
ORDER BY country;
-- ----------------------------------------------------------------------------
-- 6. Identify the sport which was played in all summer olympics.
SELECT sport, COUNT(DISTINCT games) AS no_of_games
FROM olympics_history
WHERE season = 'Summer'
GROUP BY sport
HAVING COUNT(DISTINCT games) = (
    SELECT COUNT(DISTINCT games)
    FROM olympics_history
    WHERE season = 'Summer')
ORDER BY sport;
-- -------------------------------------------------------------------------
-- 7. Which Sports were just played only once in the olympics.
SELECT sport, COUNT(DISTINCT games) AS no_of_games, MAX(games) AS games
FROM olympics_history
GROUP BY sport
HAVING COUNT(DISTINCT games) = 1
ORDER BY sport;
-- ------------------------------------------------------------------------
-- 8. Fetch the total no of sports played in each olympic games.
SELECT games, COUNT(DISTINCT sport) AS no_of_sports
FROM olympics_history
GROUP BY games
ORDER BY no_of_sports DESC;
-- -------------------------------------------------------------------------
-- 9. Fetch oldest athletes to win a gold medal
SELECT *
FROM (
    SELECT name, sex, age, team, games, city, sport, event, medal,
           RANK() OVER (ORDER BY age::int DESC) AS rnk
    FROM olympics_history
    WHERE medal = 'Gold' AND age != 'NA') ranked
WHERE ranked.rnk = 1;
-- --------------------------------------------------------------------
-- 10. Find the Ratio of male and female athletes participated in all olympic games.
SELECT CONCAT('1 : ', ROUND(MAX(cnt) / MIN(cnt)::decimal, 2)) AS ratio
FROM (
    SELECT sex, COUNT(1) AS cnt
    FROM olympics_history
    GROUP BY sex) t;
-- --------------------------------------------------------------------
-- 11. Top 5 athletes who have won the most gold medals.
SELECT name, team, COUNT(1) AS total_gold_medals
FROM olympics_history
WHERE medal = 'Gold'
GROUP BY name, team
ORDER BY total_gold_medals DESC
LIMIT 5;
-- --------------------------------------------------------------------
-- 12. Top 5 athletes who have won the most medals (gold/silver/bronze).
SELECT name,team, COUNT(1) AS total_medals
FROM olympics_history
WHERE medal IN ('Gold', 'Silver', 'Bronze')
GROUP BY name, team
ORDER BY total_medals DESC
LIMIT 5;
-- ------------------------------------------------------------------------------------
-- 13. Top 5 most successful countries in olympics. Success is defined by no of medals won.
SELECT nr.region, COUNT(1) AS total_medals
FROM olympics_history oh
JOIN olympics_history_noc_regions nr ON nr.noc = oh.noc
WHERE medal <> 'NA'
GROUP BY nr.region
ORDER BY total_medals DESC
LIMIT 5;
-- -----------------------------------------------------------------------------
-- 14. List down total gold, silver and broze medals won by each country.
 SELECT nr.region AS country,
       SUM(CASE WHEN medal = 'Gold' THEN 1 ELSE 0 END) AS gold,
       SUM(CASE WHEN medal = 'Silver' THEN 1 ELSE 0 END) AS silver,
       SUM(CASE WHEN medal = 'Bronze' THEN 1 ELSE 0 END) AS bronze
FROM olympics_history oh
JOIN olympics_history_noc_regions nr ON nr.noc = oh.noc
WHERE medal IN ('Gold', 'Silver', 'Bronze')
GROUP BY nr.region
ORDER BY gold DESC, silver DESC, bronze DESC;
-- ------------------------------------------------------------------------------------------------
-- 15. List down total gold, silver and broze medals won by each country corresponding to each olympic games.
SELECT 
    LEFT(games, POSITION(' - ' IN games) - 1) AS games,
    RIGHT(games, LENGTH(games) - POSITION(' - ' IN games) - 2) AS country,
    SUM(CASE WHEN medal = 'Gold' THEN 1 ELSE 0 END) AS gold,
    SUM(CASE WHEN medal = 'Silver' THEN 1 ELSE 0 END) AS silver,
    SUM(CASE WHEN medal = 'Bronze' THEN 1 ELSE 0 END) AS bronze
FROM (
    SELECT CONCAT(games, ' - ', nr.region) AS games, medal
    FROM olympics_history oh
    JOIN olympics_history_noc_regions nr ON nr.noc = oh.noc
    WHERE medal IN ('Gold', 'Silver', 'Bronze')
) subquery
GROUP BY games
ORDER BY games, gold DESC, silver DESC, bronze DESC;
-- ------------------------------------------------------------------------------
