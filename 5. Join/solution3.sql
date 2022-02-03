-- 오랜기간 보호한 동물

-- 나의 풀이
SELECT NAME,DATETIME FROM ANIMAL_INS  WHERE ANIMAL_ID NOT IN (SELECT ANIMAL_ID FROM ANIMAL_OUTS) 
ORDER BY DATETIME LIMIT 0,3

-- not in과 limit를 이용해서 사용
-- oracle의 경우 rownum을 사용하면 된다고 한다.




