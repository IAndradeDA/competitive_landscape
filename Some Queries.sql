SELECT * FROM comp_analysis.courses;


SELECT *
FROM comp_analysis.comments
WHERE comp_analysis.comments.comment LIKE "%data%" or comp_analysis.comments.comment LIKE "%Data%";
-- Average scores when student are employed on Data after the course
SELECT school, COUNT(*), AVG(overall_score), AVG(overall), AVG(curriculum), AVG(job_support)
FROM comp_analysis.comments
WHERE (comments.job_title LIKE "%Data%" or comments.job_title LIKE "%data") and comments.is_alumni = 1
GROUP BY school;

SELECT school, COUNT(*), AVG(overall_score), AVG(overall), AVG(curriculum), AVG(job_support)
FROM comp_analysis.comments
WHERE (comments.job_title LIKE "%Data%" or comments.job_title LIKE "%data")
GROUP BY school;

-- Overall >= 4
SELECT school, COUNT(overall_score)
FROM comp_analysis.comments
WHERE (comments.job_title LIKE "%Data%" or comments.job_title LIKE "%data") AND (comments.host_program_name LIKE "%DAta%" or comments.host_program_name LIKE "%dAta%") AND (comments.overall_score >= 4)
GROUP BY school;

SELECT school, COUNT(overall_score)
FROM comp_analysis.comments
WHERE (comments.job_title LIKE "%Data%" or comments.job_title LIKE "%data") AND (comments.host_program_name LIKE "%DAta%" or comments.host_program_name LIKE "%dAta%")
GROUP BY school;

-- Overall < 4
SELECT school, COUNT(overall_score)
FROM comp_analysis.comments
WHERE (comments.job_title LIKE "%Data%" or comments.job_title LIKE "%data") AND (comments.host_program_name LIKE "%DAta%" or comments.host_program_name LIKE "%dAta%") AND (comments.overall_score < 4)
GROUP BY school;

SELECT school, COUNT(overall_score)
FROM comp_analysis.comments
WHERE (comments.host_program_name LIKE "%DAta%" or comments.host_program_name LIKE "%dAta%") AND (comments.overall_score < 4)
GROUP BY school;


-- How many < 4
SELECT school, overall_score
FROM comp_analysis.comments
WHERE (comments.job_title LIKE "%Data%" or comments.job_title LIKE "%data") AND (comments.overall_score < 4);


