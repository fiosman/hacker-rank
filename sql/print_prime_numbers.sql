with recursive prime as(
    select 2 as val
    union all
    select val+1 from prime where val<=1000), 
res as(
    select * from prime a 
    where not exists 
   (select * from prime b where a.val%b.val = 0 and a.val != b.val))
select group_concat(val separator '&') as b from res;