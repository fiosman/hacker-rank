SELECT hackers.hacker_id, hackers.name from hackers 
JOIN submissions ON submissions.hacker_id = hackers.hacker_id 
JOIN challenges ON challenges.challenge_id = submissions.challenge_id 
JOIN difficulty ON challenges.difficulty_level = difficulty.difficulty_level 
WHERE submissions.score = difficulty.score 
GROUP BY hackers.name, hackers.hacker_id 
HAVING COUNT(hackers.hacker_id) > 1 
ORDER BY COUNT(hackers.hacker_id) DESC, hackers.hacker_id ASC; 
