/* PART 1 */
SELECT class_schedule.class as class, class_schedule.section as sec,  
  class_schedule.days as days, class_schedule.start as start_time, class_schedule.end as end_time, 
  classes.name as name FROM class_schedule
  INNER JOIN classes on class_schedule.class = classes.class;
  
/* Part 2 */
SELECT class_schedule.days as days, class_schedule.start as start, class_schedule.end as end, 
  COUNT(class_schedule.class) as num FROM class_schedule
  GROUP BY class_schedule.start, class_schedule.end
  ORDER BY days, start;

/* Part 3 */
SELECT class_schedule.class as class, class_schedule.section as sec,  
  class_schedule.days as days, class_schedule.start as start_time, class_schedule.end as end_time, 
   meeting.num as num FROM ((class_schedule
  INNER JOIN classes on class_schedule.class = classes.class)
  INNER JOIN (SELECT class_schedule.days as days, class_schedule.start as start, class_schedule.end as end, 
        COUNT(class_schedule.class) as num FROM class_schedule
        GROUP BY class_schedule.start, class_schedule.end
        ORDER BY days, start) as meeting on meeting.days = class_schedule.days 
        AND meeting.start = class_schedule.start) 
        ORDER BY class_schedule.days ASC, class_schedule.START ASC;
        
/* Part 4 */
SELECT class_schedule.class as class, class_schedule.section as sec,  
  class_schedule.days as days, class_schedule.start as start_time, class_schedule.end as end_time, 
   meeting.num as num FROM ((class_schedule
  INNER JOIN classes on class_schedule.class = classes.class)
  INNER JOIN (SELECT class_schedule.days as days, class_schedule.start as start, class_schedule.end as end, 
        COUNT(class_schedule.class) as num FROM class_schedule
        GROUP BY class_schedule.start, class_schedule.end
        ORDER BY days, start) as meeting on meeting.days = class_schedule.days 
        AND meeting.start = class_schedule.start) WHERE num > 1
        ORDER BY class_schedule.days ASC, class_schedule.START ASC;
        
/* Part 5 */
SELECT class_schedule.class as class, class_schedule.section as sec,  
  class_schedule.days as days, class_schedule.start as start_time, class_schedule.end as end_time, 
  meeting.num as num, classes.name as name FROM ((class_schedule
  INNER JOIN classes on class_schedule.class = classes.class)
  INNER JOIN (SELECT class_schedule.days as days, class_schedule.start as start, class_schedule.end as end, 
        COUNT(class_schedule.class) as num FROM class_schedule
        GROUP BY class_schedule.start, class_schedule.end
        ORDER BY days, start) as meeting on meeting.days = class_schedule.days 
        AND meeting.start = class_schedule.start) WHERE num > 1
        ORDER BY class_schedule.days ASC, class_schedule.START ASC;
        
/* Part 6 */
SELECT CONCAT(class_schedule.class, "-", class_schedule.section) as course, class_schedule.days as days,
 class_schedule.start as start_time, class_schedule.end as end_time,  classes.name as name FROM ((class_schedule
  INNER JOIN classes on class_schedule.class = classes.class)
  INNER JOIN (SELECT class_schedule.days as days, class_schedule.start as start, class_schedule.end as end, 
        COUNT(class_schedule.class) as num FROM class_schedule
        GROUP BY class_schedule.start, class_schedule.end
        ORDER BY days, start) as meeting on meeting.days = class_schedule.days 
        AND meeting.start = class_schedule.start) WHERE num > 1
        ORDER BY class_schedule.days ASC, class_schedule.START ASC;