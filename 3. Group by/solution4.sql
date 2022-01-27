-- 입양 시각 구하기

With recursive time as
(select 0 as hour union all select hour + 1 from time where hour < 23)


SELECT hour, COUNT(DATETIME) FROM time  left join animal_outs on hour = HOUR(DATETIME) group by hour;


--COUNT가 0인 값까지 나와야 하므로 WITH recursive로 임시 테이블 자체를 생성해줘야한다. 그리고 LEFT JOIN을 사용해 원래의 ANIMAL_OUTS 테이블을 사용해줘야한다.


-- WITH RECURSIVE문 재귀함수
-- 메모리에 가상의 테이블을 저장한다. 재귀 쿼리를 이용하여 실제로 테이블을 생성하거나 데이터 삽입을 하지 않아도 가상 테이블을 생성할 수 있다.
-- 문법 WITH RECURSIVE 테이블명a AS (
    SELECT 초기값 AS 컬럼별명1
    UNION ALL
    SELECT 컬럼별명1 계산식 FROM 테이블명a WHERE) 