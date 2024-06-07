WITH OrderedQueue AS (
    SELECT
        person_id,
        person_name,
        weight,
        turn
    FROM Queue
    ORDER BY turn
),
CumulativeWeight AS (
    SELECT
        person_id,
        person_name,
        weight,
        turn,
        SUM(weight) OVER (ORDER BY turn) AS cum_weight
    FROM OrderedQueue
)
SELECT
    person_name
FROM CumulativeWeight
WHERE cum_weight <= 1000
ORDER BY turn DESC
LIMIT 1;
