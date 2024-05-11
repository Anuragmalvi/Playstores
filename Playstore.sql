create database Playstore;
use playstore;
select * from playstore;

-- 		 1)  What are the top 10 categories with the highest average ratings?
					select category, avg(rating) from playstore group by category order by category desc limit 10;
                    
                    
-- Observation: This query helps identify which app categories generally receive higher ratings from users.

-- Insight: Developers can focus on these categories for potential success, as higher ratings often indicate user satisfaction.
--                     

-- 		 2) How many apps are updated in each year?
					select substring(last_updated, -4) as Year, count(* ) as No_of_update from playstore group by year order by year;
                    
--   Observation: This query provides a yearly breakdown of app updates.

-- Insight: Developers can use this information to understand trends in app updates over time and plan their own update schedules accordingly.
                    
-- 		3)What are the top 10 apps with the highest number of installs among paid apps?
					select distinct app, installs , type from playstore where type='paid' order by installs desc;
                    
--  Observation: This query identifies the most popular paid apps based on the number of installations.

-- Insight: It can help developers understand the market demand for paid apps and potentially identify successful monetization strategies.
                    
--		 -- 4)How many apps are available in each category?
					select count(app), category from playstore group by category;
                    
-- Observation: This query gives an overview of the distribution of apps across different categories.
        
-- Insight: Developers can use this information to understand the competition within each category and make informed decisions about which categories to target.

--         5) Find the Apps which are for the Teen and having the Installs more than 10000 . 
					select * from playstore where content_rating='Teen' and  Installs>='10,000';
                    
  -- Observation: This query filters apps based on content rating and installation numbers.
  
-- Insight: It helps identify popular apps among teenage users with a significant number of installations, potentially revealing trends in teen app preferences.

         -- 6) Which category have the highest avg size of the Apps 
					select category, concat(avg(size), ' ','MB') as Avg_size from playstore group by category order by Avg_size desc;
                    
--  Observation: This query calculates the average size of apps in each category.

-- Insight: Developers can use this information to understand which categories tend to have larger apps and optimize their app sizes accordingly.

		-- 7) How many apps in each category having the rating greater than the avg rating of all the apps.
        
					select count(*) as No_of_Apps, category from playstore  where rating>(select avg(rating) from playstore) group by category;
                    
--  Observation: This query counts the apps in each category with ratings higher than the overall average rating.

-- Insight: It provides insight into which categories tend to have higher-rated apps, allowing developers to focus on quality within those categories.

        -- 8) Which genres have the highest number on installs
					select distinct(genres), installs from playstore order by installs desc;
                    
-- Observation: This query identifies the genres with the highest number of installations.
--                     
-- Insight: Developers can use this information to understand which genres are currently popular among users and potentially explore developing apps in those genres.

-- 		9) Which apps have the android version greater than 3.3 and been last updated after 2017
					select app, substring(android_ver,1,3) as Android_ver, last_updated from playstore
                    where 'Android_ver'>'3.3'
                    and substring(last_updated,-4)>'2017';
                    
--  Observation: This query filters apps based on Android version and last update date.
--                     
-- Insight: It helps identify apps that are up-to-date with recent Android versions, which is important for compatibility and security reasons.

	-- 	10) What is the distribution of app sizes?
					select size, count(*) as No_of_apps  from playstore group by size;
                    
--  Observation: This query provides the distribution of app sizes.
                   
-- Insight: Developers can use this information to understand the typical size range of apps and optimize their app sizes based on user preferences and storage limitations.

                    