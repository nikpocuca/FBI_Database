SELECT SUM(jan_unfounded_murder),SUM(jan_actual_murder),SUM(jan_cleared_murder),COUNT(jan_unfounded_murder)
FROM fbi_reta 
WHERE state='34' AND YEAR='12'
--by state.  where state is 34. (ie. OHIO need to either rename this, or write a parser in R, or python, or maybe cpp for speed idk.).  


-- With column names 
SELECT SUM(jan_unfounded_murder) AS Unfounded ,SUM(jan_actual_murder) AS Actual ,SUM(jan_cleared_murder) AS Solved,COUNT(jan_unfounded_murder) AS TotalMurder
FROM fbi_reta 
WHERE state='34' AND YEAR='12'
-- by state



