-- 동명동물 수 찾기

-- 내 풀이

SELECT NAME,COUNT(*) AS COUNT FROM ANIMAL_INS  GROUP BY NAME HAVING COUNT(*)  >= 2 ORDER BY NAME;

--오답이었음..


-- 정답 결과가 나오려면 다음과 같이 작성해야 나온다..알 수 없음...그래도 정확성을 위해서 COUNT(NAME) 으로 하는게 좋은 거 같긴하다.
SELECT NAME,COUNT(NAME) FROM ANIMAL_INS  GROUP BY NAME HAVING COUNT(NAME)  >= 2 ORDER BY NAME;

-- WHERE NAME IS NOT NULL도 넣어주기!


-- 다른 풀이 : WITH절을 사용하기
WITH TEMP AS (SELECT NAEE,COUNT(NAME) AS COUNT FROM ANIMAL_INS 
    WHERE 1 = 1 
    AND NAME IS NOT NULL
    GROUP BY NAME
    ORDER BY NAME
)
SELECT * FROM TEMP WHERE COUNT > 1
