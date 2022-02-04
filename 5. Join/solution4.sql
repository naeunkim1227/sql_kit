-- 보호소에서 중성화한 동물

-- 나의 풀이
SELECT A.ANIMAL_ID,A.ANIMAL_TYPE,A.NAME FROM ANIMAL_INS A JOIN ANIMAL_OUTS B ON A.ANIMAL_ID = B.ANIMAL_ID 
WHERE A.SEX_UPON_INTAKE != B.SEX_UPON_OUTCOME

-- 중성화 했을 경우 상태가 달라졌을테니 where을 이용해 결과를 도출함

 --다른 풀이
 --like를 이용하여 문자 자체를 비교함
SELECT A.ANIMAL_ID,A.ANIMAL_TYPE,A.NAME FROM ANIMAL_INS A JOIN ANIMAL_OUTS B ON A.ANIMAL_ID = B.ANIMAL_ID 
WHERE A.SEX_UPON_INTAKE LIKE 'In%' AND (B.SEX_UPON_OUTCOME LIKE 'Sp%' OR B.SEX_UPON_OUTCOME LIKE 'Ne%')


-- regexp를 사용하기도 하였다. regexp는 like보다 다양하게 검색이 가능하다고 한다
select * from test where name regexp '가|나|다|라'
가 or 나 or 다 or 라 가 포함된 name을 찾는다. 정규표현식을 사용할 수 있어 사용이 편하다고 한다.
참고 https://yurimkoo.github.io/analytics/2019/10/26/regular_expression.html