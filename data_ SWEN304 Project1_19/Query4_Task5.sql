SELECT RobberID, Nickname, Earnings FROM ( SELECT RobberId, SUM(Share) AS Earnings FROM Accomplices GROUP BY RobberId) AS TotalEarningForEachRobber NATURAL JOIN Robbers WHERE Earnings>30000 ORDER BY Earnings DESC;