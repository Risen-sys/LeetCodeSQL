SELECT  Scores1.score
    ,(SELECT  
      COUNT(distinct score)
      FROM scores s2
      WHERE Scores2.score >= Scores1.score) AS "rank score"
FROM scores s1
ORDER BY Scores1.score desc