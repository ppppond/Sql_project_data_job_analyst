-- Top paying job skill
WITH top_paying_job AS (
    SELECT
        job_id,
        job_title,
        salary_year_avg,
        company_dim.name AS company_name
    FROM
        job_postings_fact
    LEFT JOIN company_dim ON company_dim.company_id = job_postings_fact.company_id
    WHERE
        job_title_short = 'Data Analyst' AND
        salary_year_avg IS NOT NULL
    ORDER BY salary_year_avg DESC
    LIMIT 10
)

SELECT top_paying_job.*,
    skills
FROM top_paying_job
INNER JOIN skills_job_dim ON skills_job_dim.job_id = top_paying_job.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id

-- Insights
    Python พบบ่อยที่สุด: 4 งาน หรือ 57.1%
    Excel, R, SQL และ Tableau: อย่างละ 3 งาน หรือ 42.9% สะท้อนว่าทักษะเขียนโปรแกรม การวิเคราะห์ และการนำเสนอข้อมูลปรากฏร่วมในกลุ่มนี้
    Power BI: 2 งาน หรือ 28.6% ส่วนอีก 15 skills พบอย่างละ 1 งาน
    งานที่ระบุ SQL ทั้ง 3 งานระบุ Python ด้วย เป็นคู่ทักษะที่พบร่วมกันชัดเจนในตัวอย่างนี้

-- Export JSON
[
  {
    "job_id": 209315,
    "job_title": "Data base administrator",
    "salary_year_avg": "400000.0",
    "company_name": "ЛАНИТ",
    "skills": "oracle"
  },
  {
    "job_id": 209315,
    "job_title": "Data base administrator",
    "salary_year_avg": "400000.0",
    "company_name": "ЛАНИТ",
    "skills": "kafka"
  },
  {
    "job_id": 209315,
    "job_title": "Data base administrator",
    "salary_year_avg": "400000.0",
    "company_name": "ЛАНИТ",
    "skills": "linux"
  },
  {
    "job_id": 209315,
    "job_title": "Data base administrator",
    "salary_year_avg": "400000.0",
    "company_name": "ЛАНИТ",
    "skills": "git"
  },
  {
    "job_id": 209315,
    "job_title": "Data base administrator",
    "salary_year_avg": "400000.0",
    "company_name": "ЛАНИТ",
    "skills": "svn"
  },
  {
    "job_id": 641501,
    "job_title": "Head of Infrastructure Management & Data Analytics - Financial...",
    "salary_year_avg": "375000.0",
    "company_name": "Citigroup, Inc",
    "skills": "excel"
  },
  {
    "job_id": 641501,
    "job_title": "Head of Infrastructure Management & Data Analytics - Financial...",
    "salary_year_avg": "375000.0",
    "company_name": "Citigroup, Inc",
    "skills": "word"
  },
  {
    "job_id": 1110602,
    "job_title": "HC Data Analyst , Senior",
    "salary_year_avg": "375000.0",
    "company_name": "Illuminate Mission Solutions",
    "skills": "python"
  },
  {
    "job_id": 1110602,
    "job_title": "HC Data Analyst , Senior",
    "salary_year_avg": "375000.0",
    "company_name": "Illuminate Mission Solutions",
    "skills": "r"
  },
  {
    "job_id": 1110602,
    "job_title": "HC Data Analyst , Senior",
    "salary_year_avg": "375000.0",
    "company_name": "Illuminate Mission Solutions",
    "skills": "vba"
  },
  {
    "job_id": 1110602,
    "job_title": "HC Data Analyst , Senior",
    "salary_year_avg": "375000.0",
    "company_name": "Illuminate Mission Solutions",
    "skills": "excel"
  },
  {
    "job_id": 1110602,
    "job_title": "HC Data Analyst , Senior",
    "salary_year_avg": "375000.0",
    "company_name": "Illuminate Mission Solutions",
    "skills": "tableau"
  },
  {
    "job_id": 229253,
    "job_title": "Director of Safety Data Analysis",
    "salary_year_avg": "375000.0",
    "company_name": "Torc Robotics",
    "skills": "sql"
  },
  {
    "job_id": 229253,
    "job_title": "Director of Safety Data Analysis",
    "salary_year_avg": "375000.0",
    "company_name": "Torc Robotics",
    "skills": "python"
  },
  {
    "job_id": 229253,
    "job_title": "Director of Safety Data Analysis",
    "salary_year_avg": "375000.0",
    "company_name": "Torc Robotics",
    "skills": "r"
  },
  {
    "job_id": 229253,
    "job_title": "Director of Safety Data Analysis",
    "salary_year_avg": "375000.0",
    "company_name": "Torc Robotics",
    "skills": "sas"
  },
  {
    "job_id": 229253,
    "job_title": "Director of Safety Data Analysis",
    "salary_year_avg": "375000.0",
    "company_name": "Torc Robotics",
    "skills": "matlab"
  },
  {
    "job_id": 229253,
    "job_title": "Director of Safety Data Analysis",
    "salary_year_avg": "375000.0",
    "company_name": "Torc Robotics",
    "skills": "spark"
  },
  {
    "job_id": 229253,
    "job_title": "Director of Safety Data Analysis",
    "salary_year_avg": "375000.0",
    "company_name": "Torc Robotics",
    "skills": "airflow"
  },
  {
    "job_id": 229253,
    "job_title": "Director of Safety Data Analysis",
    "salary_year_avg": "375000.0",
    "company_name": "Torc Robotics",
    "skills": "excel"
  },
  {
    "job_id": 229253,
    "job_title": "Director of Safety Data Analysis",
    "salary_year_avg": "375000.0",
    "company_name": "Torc Robotics",
    "skills": "tableau"
  },
  {
    "job_id": 229253,
    "job_title": "Director of Safety Data Analysis",
    "salary_year_avg": "375000.0",
    "company_name": "Torc Robotics",
    "skills": "power bi"
  },
  {
    "job_id": 229253,
    "job_title": "Director of Safety Data Analysis",
    "salary_year_avg": "375000.0",
    "company_name": "Torc Robotics",
    "skills": "sas"
  },
  {
    "job_id": 1059665,
    "job_title": "Data Analyst",
    "salary_year_avg": "350000.0",
    "company_name": "Anthropic",
    "skills": "sql"
  },
  {
    "job_id": 1059665,
    "job_title": "Data Analyst",
    "salary_year_avg": "350000.0",
    "company_name": "Anthropic",
    "skills": "python"
  },
  {
    "job_id": 101757,
    "job_title": "Head of Data Analytics",
    "salary_year_avg": "350000.0",
    "company_name": "Care.com",
    "skills": "sql"
  },
  {
    "job_id": 101757,
    "job_title": "Head of Data Analytics",
    "salary_year_avg": "350000.0",
    "company_name": "Care.com",
    "skills": "python"
  },
  {
    "job_id": 101757,
    "job_title": "Head of Data Analytics",
    "salary_year_avg": "350000.0",
    "company_name": "Care.com",
    "skills": "r"
  },
  {
    "job_id": 101757,
    "job_title": "Head of Data Analytics",
    "salary_year_avg": "350000.0",
    "company_name": "Care.com",
    "skills": "bigquery"
  },
  {
    "job_id": 101757,
    "job_title": "Head of Data Analytics",
    "salary_year_avg": "350000.0",
    "company_name": "Care.com",
    "skills": "snowflake"
  },
  {
    "job_id": 101757,
    "job_title": "Head of Data Analytics",
    "salary_year_avg": "350000.0",
    "company_name": "Care.com",
    "skills": "tableau"
  },
  {
    "job_id": 101757,
    "job_title": "Head of Data Analytics",
    "salary_year_avg": "350000.0",
    "company_name": "Care.com",
    "skills": "power bi"
  },
  {
    "job_id": 101757,
    "job_title": "Head of Data Analytics",
    "salary_year_avg": "350000.0",
    "company_name": "Care.com",
    "skills": "looker"
  },
  {
    "job_id": 894135,
    "job_title": "Research Scientist",
    "salary_year_avg": "285000.0",
    "company_name": "OpenAI",
    "skills": "github"
  }
]