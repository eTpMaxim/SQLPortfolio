/*Query to count total instances of genres across the list*/

Select --Gives the total amount of each genre count in the subquery below
	SUM(action_count) AS total_action_count,
	SUM(adv_count) AS total_adv_count,
	SUM(drama_count) AS total_drama_count,
	SUM(crime_count) AS total_crime_count,
	SUM(bio_count) AS total_bio_count,
	SUM(hist_count) AS total_hist_count,
	SUM(scifi_count) AS total_scifi_count,
	SUM(romance_count) AS total_romance_count,
	SUM(western_count) AS total_western_count,
	SUM(fantasy_count) AS total_fantasy_count,
	SUM(mystery_count) AS total_mystery_count,
	SUM(comedy_count) AS total_comedy_count,
	SUM(thrill_count) AS total_thrill_count,
	SUM(war_count) AS total_war_count,
	SUM(family_count) AS total_family_count,
	SUM(music_count) AS total_music_count,
	SUM(horror_count) AS total_horror_count,
	SUM(sport_count) AS total_sport_count,
	SUM(noir_count) AS total_noir_count
FROM (
	SELECT --Subquery to count how many times each combination of genres is listed
	SUM(CASE WHEN Genre LIKE '%Action%' then 1 else 0 END) AS action_count,
	SUM(CASE WHEN Genre LIKE '%Adventure%' then 1 else 0 END) AS adv_count,
	SUM(CASE WHEN Genre LIKE '%Drama%' then 1 else 0 END) AS drama_count,
	SUM(CASE WHEN Genre LIKE '%Crime%' then 1 else 0 END) AS crime_count,
	SUM(CASE WHEN Genre LIKE '%Biography%' then 1 else 0 END) AS bio_count,
	SUM(CASE WHEN Genre LIKE '%History%' then 1 else 0 END) AS hist_count,
	SUM(CASE WHEN Genre LIKE '%Sci-Fi%' then 1 else 0 END) AS scifi_count,
	SUM(CASE WHEN Genre LIKE '%Romance%' then 1 else 0 END) AS romance_count,
	SUM(CASE WHEN Genre LIKE '%Western%' then 1 else 0 END) AS western_count,
	SUM(CASE WHEN Genre LIKE '%Fantasy%' then 1 else 0 END) AS fantasy_count,
	SUM(CASE WHEN Genre LIKE '%Mystery%' then 1 else 0 END) AS mystery_count,
	SUM(CASE WHEN Genre LIKE '%Comedy%' then 1 else 0 END) AS comedy_count,
	SUM(CASE WHEN Genre LIKE '%Thriller%' then 1 else 0 END) AS thrill_count,
	SUM(CASE WHEN Genre LIKE '%War%' then 1 else 0 END) AS war_count,
	SUM(CASE WHEN Genre LIKE '%Family%' then 1 else 0 END) AS family_count,
	SUM(CASE WHEN Genre LIKE '%Music%' then 1 else 0 END) AS music_count,
	SUM(CASE WHEN Genre LIKE '%Horror%' then 1 else 0 END) AS horror_count,
	SUM(CASE WHEN Genre LIKE '%Sport%' then 1 else 0 END) AS sport_count,
	SUM(CASE WHEN Genre LIKE '%Film-Noir%' then 1 else 0 END) AS noir_count
FROM [dbo].[imdb_top_1000]
) AS genre_count

