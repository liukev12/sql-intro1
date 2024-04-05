-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

--select sum(bats) from players where first_name = "Barry" and last_name = "Bonds"
--select id from players where first_name = "Barry" and last_name = "Bonds" => 1678
select sum(stats.hits) 
from stats inner join players 
on players.id = stats.player_id 
where players.first_name = "Barry" and players.last_name = "Bonds"