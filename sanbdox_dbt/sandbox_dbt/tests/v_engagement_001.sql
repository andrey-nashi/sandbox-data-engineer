SELECT *
FROM {{ ref('v_engagement') }}
WHERE engagement_date > current_date