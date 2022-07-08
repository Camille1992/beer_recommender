SELECT * FROM bootcamps.beer_profiles_and_ratings;

# 1.a. Most popular beers:
#		- review_overall > 4
#		- number of reviews at least equal or more to the average number of reviews
SELECT
	*
FROM
	beer_profiles_and_ratings
WHERE
	review_overall > 4 
    AND number_of_reviews >= (SELECT
									AVG(number_of_reviews)
								FROM
									beer_profiles_and_ratings)
ORDER BY
	review_overall ASC;

# 1.b. Which beer style is the most popular among the top 10?
WITH top_ten AS (
	SELECT
		*
	FROM
		beer_profiles_and_ratings
	WHERE
		review_overall > 4 
		AND number_of_reviews >= (SELECT
										AVG(number_of_reviews)
									FROM
										beer_profiles_and_ratings)
		)
SELECT
	style, COUNT(*) AS number_of_beers
FROM
	top_ten
GROUP BY
	style
ORDER BY
	number_of_beers DESC;
    
# 2. Most represented beer style in this dataset subset    
SELECT
	style,
    COUNT(*) AS style_occurence
FROM
	beer_profiles_and_ratings
GROUP BY
	style
ORDER BY
	style_occurence DESC;

# 3. Which beers have an overall review that is less than the average overall review in the dataset subset
# Lots of non-alcoholic and low alcohol beers in there
SELECT
	name, review_overall, style, abv
FROM
	beer_profiles_and_ratings
WHERE
	review_overall < (SELECT
							AVG(review_overall)
						FROM
							beer_profiles_and_ratings
						)
ORDER BY
	review_overall ASC;

# 4. What is the difference in average ABV between the customers with a high overall review (3.80) and low overall review (2.50)?
WITH low_review AS (
	SELECT
		AVG(abv) AS abv_low_review
	FROM
		beer_profiles_and_ratings
	WHERE
		review_overall <= 2.50
	),
high_review AS (
	SELECT
		AVG(abv) AS abv_high_review
	FROM
		beer_profiles_and_ratings
	WHERE
		review_overall >= 3.80
	)
SELECT
	ROUND((abv_high_review - abv_low_review), 2) AS average_abv_difference
FROM
	high_review
JOIN
	low_review;
    

# 5. Breweries with the most beers: ratings and most common style of the top 10
SELECT
	brewery,
    COUNT(*) AS number_of_beers,
    ROUND(AVG(review_overall), 2) AS average_overall_review
FROM
	beer_profiles_and_ratings
GROUP BY
	brewery
ORDER BY
	number_of_beers DESC
LIMIT 
	10;

# 6. Percentage of beers in the dataset subset having a description
WITH with_d AS (
	SELECT
		COUNT(*) AS beers_with_description
	FROM
		beer_profiles_and_ratings
	WHERE
		description <> 'Notes:'
	)
SELECT
	ROUND((beers_with_description / COUNT(*))*100, 2) AS percentage_of_beers_with_description
FROM
	beer_profiles_and_ratings
JOIN
	with_d;
