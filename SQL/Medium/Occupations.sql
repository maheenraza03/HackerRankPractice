
/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/ SELECT MAX(CASE WHEN Occupation = 'Doctor' THEN Name ELSE NULL END) Doctor, MAX(CASE WHEN Occupation = 'Professor' THEN Name ELSE NULL END) Professor, MAX(CASE WHEN Occupation = 'Singer' THEN Name ELSE NULL END) Singer, MAX(CASE WHEN Occupation = 'Actor' THEN Name ELSE NULL END) Actor FROM (SELECT Name, Occupation, ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) row_num FROM OCCUPATIONS) t GROUP BY row_num;


