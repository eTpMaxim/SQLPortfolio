/*Query to count instances of genres across the list*/
Select Genre,
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
GROUP BY Genre
