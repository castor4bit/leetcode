# Write your MySQL query statement below
SELECT
  d00.id,
  d01.revenue as 'Jan_Revenue',
  d02.revenue as 'Feb_Revenue',
  d03.revenue as 'Mar_Revenue',
  d04.revenue as 'Apr_Revenue',
  d05.revenue as 'May_Revenue',
  d06.revenue as 'Jun_Revenue',
  d07.revenue as 'Jul_Revenue',
  d08.revenue as 'Aug_Revenue',
  d09.revenue as 'Sep_Revenue',
  d10.revenue as 'Oct_Revenue',
  d11.revenue as 'Nov_Revenue',
  d12.revenue as 'Dec_Revenue'
FROM (SELECT DISTINCT id FROM Department) d00
LEFT JOIN Department d01 ON d01.id = d00.id AND d01.month = 'Jan'
LEFT JOIN Department d02 ON d02.id = d00.id AND d02.month = 'Feb'
LEFT JOIN Department d03 ON d03.id = d00.id AND d03.month = 'Mar'
LEFT JOIN Department d04 ON d04.id = d00.id AND d04.month = 'Apr'
LEFT JOIN Department d05 ON d05.id = d00.id AND d05.month = 'May'
LEFT JOIN Department d06 ON d06.id = d00.id AND d06.month = 'Jun'
LEFT JOIN Department d07 ON d07.id = d00.id AND d07.month = 'Jul'
LEFT JOIN Department d08 ON d08.id = d00.id AND d08.month = 'Aug'
LEFT JOIN Department d09 ON d09.id = d00.id AND d09.month = 'Sep'
LEFT JOIN Department d10 ON d10.id = d00.id AND d10.month = 'Oct'
LEFT JOIN Department d11 ON d11.id = d00.id AND d11.month = 'Nov'
LEFT JOIN Department d12 ON d12.id = d00.id AND d12.month = 'Dec'
ORDER BY id
