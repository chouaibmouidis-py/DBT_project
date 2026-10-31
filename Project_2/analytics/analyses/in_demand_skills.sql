WITH job_postings AS (
    SELECT job_id
    FROM {{ ref('stg_job_postings') }}
    {% set selected_job_title = var('job_title', none) %}
    {% if selected_job_title %}
    WHERE search_term = '{{ selected_job_title | replace("'", "''") }}'
    {% endif %} 
),

bridge AS (
    SELECT *
    FROM {{ ref('bridge_job_skills') }}
),

skills AS (
    SELECT *
    FROM {{ ref('dim_skill')}}
)

SELECT 
    display_name,
    category,
    COUNT(DISTINCT job_id) AS demand_compt,
    ROUND(COUNT(DISTINCT job_id) / (SELECT COUNT(DISTINCT job_id) FROM job_postings) * 100) AS demand_percentage

FROM bridge
INNER JOIN skills USING (skill_id)
INNER JOIN job_postings USING (job_id)
GROUP BY display_name, category
ORDER BY demand_compt DESC