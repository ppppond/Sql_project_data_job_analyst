-- focus all job 'Data Analyst'
SELECT skills,
    COUNT(skills_job_dim.job_id) AS demand_skills
FROM job_postings_fact
INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE job_postings_fact.job_title_short = 'Data Analyst'
GROUP BY skills
ORDER BY demand_skills DESC
LIMIT 5

-- focus job work from home
SELECT skills,
    COUNT(skills_job_dim.job_id) AS demand_skills
FROM job_postings_fact
INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE job_postings_fact.job_title_short = 'Data Analyst'
    AND job_postings_fact.job_work_from_home = true
GROUP BY skills
ORDER BY demand_skills DESC
LIMIT 5