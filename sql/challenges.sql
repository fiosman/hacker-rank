SELECT hackers.hacker_id, hackers.name, COUNT(challenges.challenge_id) as num_challenges FROM hackers 
JOIN challenges ON hackers.hacker_id = challenges.hacker_id 
GROUP BY hackers.hacker_id, hackers.name 
HAVING num_challenges = (SELECT count(challenge_id) AS max_count FROM challenges 
GROUP BY hacker_id ORDER BY max_count DESC LIMIT 1) 
OR num_challenges IN (SELECT t.cnt FROM (SELECT count(challenge_id) AS cnt FROM challenges 
GROUP BY hacker_id) t GROUP BY t.cnt HAVING COUNT(t.cnt) = 1) 
ORDER BY num_challenges DESC, hackers.hacker_id ASC;