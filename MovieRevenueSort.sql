/*Query to sort the 200 top movies by gross*/
SELECT TOP 200
	Series_Title,
	Genre,
	Gross	
FROM [dbo].[imdb_top_1000]
ORDER BY Gross DESC
