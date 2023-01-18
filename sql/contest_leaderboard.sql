select h.hacker_id, h.name, sum(s.maxscore) as total from hackers h 
join (select challenge_id, hacker_id, max(score) as maxscore from submissions group by challenge_id, hacker_id) s on s.hacker_id = h.hacker_id 
group by h.hacker_id, h.name having sum(s.maxscore) > 0 order by total desc, h.hacker_id