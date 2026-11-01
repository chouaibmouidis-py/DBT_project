WITH job_postings AS (
    SELECT
        *,
        ROW_NUMBER() OVER (
            PARTITION BY job_id
            ORDER BY search_date DESC, searched_at DESC
        ) AS row_number
    FROM {{ ref('stg_job_postings') }}
)

SELECT
    job_id,
    job_title,
    search_term,
    company_name,
    job_location,
    source_platform,
    job_schedule_type,
    job_work_from_home,
    search_date,
    salary_min,
    salary_max,
    salary_avg,
    salary_period,
    salary_currency,
    has_health_insurance,
    has_dental_insurance,
    has_paid_time_off,
    has_no_degree_mentioned
FROM job_postings
WHERE row_number = 1
