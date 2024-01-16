(
    SELECT
        name AS results
    FROM
        movieRating
        INNER JOIN users USING(user_id)
    GROUP BY
        user_id
    ORDER BY
        COUNT(movie_id) DESC,
        name ASC
    LIMIT
        1
)
UNION
ALL (
    SELECT
        title
    FROM
        movieRating
        INNER JOIN movies USING(movie_id)
    WHERE
        EXTRACT(
            YEAR_MONTH
            FROM
                created_at
        ) = 202002
    GROUP BY
        movie_id
    ORDER BY
        AVG(rating) DESC,
        title ASC
    LIMIT
        1
);