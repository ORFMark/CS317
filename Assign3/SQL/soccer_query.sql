/* FINAL OUTPUT */

SELECT participant.first_name as first, participant.last_name as last, temp.arrival, temp.snack FROM (participant
INNER JOIN roster ON roster.participant_id = participant.id
INNER JOIN (SELECT game.arrival as arrival, schedule.is_host AS snack, team.id as team_id FROM ((game
            INNER JOIN schedule on schedule.game_id = game.id)
            INNER JOIN team on team.id = schedule.team_id)
            ) AS temp ON roster.team_id = temp.team_id)
            WHERE participant.first_name = "Amber" and participant.last_name = "Marriot"
            ORDER BY participant.id DESC;
             


SELECT  participant.first_name as first, participant.last_name as last, game.arrival as arrival, schedule.is_host AS snack, 
CONCAT(COALESCE(visitor.team_name, ''), COALESCE(host.team_name, '')) as against FROM ((((((game
            INNER JOIN schedule on schedule.game_id = game.id)
            INNER JOIN team on team.id = schedule.team_id)
            INNER JOIN roster on roster.team_id = team.id)
            INNER JOIN participant on roster.participant_id = participant.id)
            LEFT JOIN (SELECT schedule.game_id, team.id, team.team_name FROM (schedule INNER JOIN team on team.id = schedule.team_id) WHERE is_host = 0)
                        as visitor ON visitor.id != team.id AND visitor.game_id = game.id AND schedule.is_host = 1)
            LEFT JOIN (SELECT schedule.game_id, team.id, team.team_name FROM (schedule INNER JOIN team on team.id = schedule.team_id) WHERE is_host = 1)
                        as host ON host.id != team.id AND host.game_id = game.id AND schedule.is_host = 0)
            WHERE participant.first_name = "Amber" and participant.last_name = "Marriot"
            ORDER BY game.arrival ASC;



SELECT CONCAT(tb1.first, ' ', tb1.last) as player, tb1.arrival, tb1.snack, tb1.against, tb2.lead_by FROM ((SELECT  participant.first_name as first, participant.last_name as last, game.arrival as arrival, schedule.is_host AS snack, CONCAT(COALESCE(visitor.team_name, ''), COALESCE(host.team_name, '')) as against FROM ((((((game
            INNER JOIN schedule on schedule.game_id = game.id)
            INNER JOIN team on team.id = schedule.team_id)
            INNER JOIN roster on roster.team_id = team.id)
            INNER JOIN participant on roster.participant_id = participant.id)
            LEFT JOIN (SELECT schedule.game_id, team.id, team.team_name FROM (schedule INNER JOIN team on team.id = schedule.team_id) WHERE is_host = 0)
                        as visitor ON visitor.id != team.id AND visitor.game_id = game.id AND schedule.is_host = 1)
            LEFT JOIN (SELECT schedule.game_id, team.id, team.team_name FROM (schedule INNER JOIN team on team.id = schedule.team_id) WHERE is_host = 1)
                        as host ON host.id != team.id AND host.game_id = game.id AND schedule.is_host = 0)
                        WHERE participant.first_name = "Amber" and participant.last_name = "Marriot"
            ORDER BY game.arrival ASC) as tb1
INNER JOIN (SELECT team.team_name, CONCAT(participant.first_name, ' ', participant.last_name) as lead_by FROM team 
            INNER JOIN participant on participant.id = team.coach_id) as tb2 ON tb1.against = tb2.team_name) 
            
ORDER BY player ASC;


/*
SELECT participant.first_name as first, participant.last_name as last, roster.team_id FROM participant 
INNER JOIN roster ON participant.id = roster.participant_id;
*/

/*
SELECT team.team_name as name, roster.participant_id FROM team
INNER JOIN roster ON team.id = roster.team_id;
*/

/*
SELECT temp.first as first, temp.last as last, team.team_name FROM team
INNER JOIN (SELECT participant.first_name as first, participant.last_name as last, roster.team_id FROM participant 
            INNER JOIN roster ON participant.id = roster.participant_id) as temp ON temp.team_id = team.id;
*/

/*
SELECT team.team_name, game.arrival AS be_there, schedule.is_host AS snack FROM ((schedule
INNER JOIN game ON schedule.game_id = game.id)
INNER JOIN team ON team.id = schedule.team_id
);
*/


/* PART 1*/ /*
SELECT participant.first_name as first, participant.last_name as last, temp.arrival, temp.snack FROM (participant
INNER JOIN roster ON roster.participant_id = participant.id
INNER JOIN (SELECT game.arrival as arrival, schedule.is_host AS snack, team.id as team_id FROM ((game
            INNER JOIN schedule on schedule.game_id = game.id)
            INNER JOIN team on team.id = schedule.team_id)
            ) AS temp ON roster.team_id = temp.team_id)
            ORDER BY participant.id DESC;
*/

/*
SELECT participant.first_name AS first, participant.last_name AS last, team.team_name FROM ((roster
INNER JOIN participant ON participant.id = roster.participant_id)
INNER JOIN team ON team.id = roster.team_id);
*/

/*
SELECT game.id, visitor.id as visitor_id, visitor.team_name as visitor, host.id as host_id, host.team_name as host FROM ((game 
INNER JOIN (SELECT schedule.game_id, team.id, team.team_name FROM (schedule INNER JOIN team on team.id = schedule.team_id) WHERE is_host = 0) as visitor ON visitor.game_id = game.id)
INNER JOIN (SELECT schedule.game_id, team.id, team.team_name FROM (schedule INNER JOIN team on team.id = schedule.team_id) WHERE is_host = 1) as host ON host.game_id = game.id);
*/

/* part 2 */ /*
SELECT  participant.first_name as first, participant.last_name as last, game.arrival as arrival, schedule.is_host AS snack, 
CONCAT(COALESCE(visitor.team_name, ''), COALESCE(host.team_name, '')) as against FROM ((((((game
            INNER JOIN schedule on schedule.game_id = game.id)
            INNER JOIN team on team.id = schedule.team_id)
            INNER JOIN roster on roster.team_id = team.id)
            INNER JOIN participant on roster.participant_id = participant.id)
            LEFT JOIN (SELECT schedule.game_id, team.id, team.team_name FROM (schedule INNER JOIN team on team.id = schedule.team_id) WHERE is_host = 0)
                        as visitor ON visitor.id != team.id AND visitor.game_id = game.id AND schedule.is_host = 1)
            LEFT JOIN (SELECT schedule.game_id, team.id, team.team_name FROM (schedule INNER JOIN team on team.id = schedule.team_id) WHERE is_host = 1)
                        as host ON host.id != team.id AND host.game_id = game.id AND schedule.is_host = 0)
            ORDER BY game.arrival ASC;  
*/




/*
SELECT team.team_name, CONCAT(participant.first_name, ' ', participant.last_name) as lead_by FROM team 
INNER JOIN participant on participant.id = team.coach_id;
*/ 

/* PART 3 */ /*
SELECT CONCAT(tb1.first, ' ', tb1.last) as player, tb1.arrival, tb1.snack, tb1.against, tb2.lead_by FROM ((SELECT  participant.first_name as first, participant.last_name as last, game.arrival as arrival, schedule.is_host AS snack, CONCAT(COALESCE(visitor.team_name, ''), COALESCE(host.team_name, '')) as against FROM ((((((game
            INNER JOIN schedule on schedule.game_id = game.id)
            INNER JOIN team on team.id = schedule.team_id)
            INNER JOIN roster on roster.team_id = team.id)
            INNER JOIN participant on roster.participant_id = participant.id)
            LEFT JOIN (SELECT schedule.game_id, team.id, team.team_name FROM (schedule INNER JOIN team on team.id = schedule.team_id) WHERE is_host = 0)
                        as visitor ON visitor.id != team.id AND visitor.game_id = game.id AND schedule.is_host = 1)
            LEFT JOIN (SELECT schedule.game_id, team.id, team.team_name FROM (schedule INNER JOIN team on team.id = schedule.team_id) WHERE is_host = 1)
                        as host ON host.id != team.id AND host.game_id = game.id AND schedule.is_host = 0)
            ORDER BY game.arrival ASC) as tb1
INNER JOIN (SELECT team.team_name, CONCAT(participant.first_name, ' ', participant.last_name) as lead_by FROM team 
            INNER JOIN participant on participant.id = team.coach_id) as tb2 ON tb1.against = tb2.team_name) 
ORDER BY player ASC;
*/ 
/*
SELECT participant.first_name as first, participant.last_name as last, temp.arrival, temp.snack FROM (participant
INNER JOIN roster ON roster.participant_id = participant.id
INNER JOIN (SELECT game.arrival as arrival, schedule.is_host AS snack, team.id as team_id FROM ((game
            INNER JOIN schedule on schedule.game_id = game.id)
            INNER JOIN team on team.id = schedule.team_id)
            ) AS temp ON roster.team_id = temp.team_id)

ORDER BY participant.id ASC;
*/