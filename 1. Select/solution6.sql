-- 문제: 최대 N값 구하기 


-- 내가 작성한 풀이 : limit와 서브쿼리를 활용하여 작성하였음.
SELECT name from animal_ins where datetime = (select datetime from animal_ins order by datetime asc limit 0,1);


-- 다른 사람의 풀이 참조 

-- 1. min 사용하기 
SELECT NAME from ANIMAL_INS where DATETIME = (select min(DATETIME) from ANIMAL_INS)
-- 1개 데이터만 출력하므로 min을 사용하는 것도 좋은 방법 같다.


-- 2. selfjoin 사용하기
SELECT A.NAME FROM ANIMAL_INS A,(SELECT MIN(DATETIME) TIME FROM ANIMAL_INS) B WHERE  A.DATETIME = B.TIME



-- * oracle의 경우, rownum 을 사용함

SELECT  A.NAME
 FROM ( SELECT NAME, DATETIME
          FROM ANIMAL_INS
        ORDER BY DATETIME
      ) A
WHERE ROWNUM = 1
