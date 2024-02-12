-- CASE
SELECT ORD_ST
     , CASE
           WHEN ORD_AMT >= 5000 THEN 'Higher Order'
           WHEN ORD_AMT >= 3000 THEN 'Middle Order'
           ELSE 'Low Order'
    END         ORD_AMT_TP
     , COUNT(*) ORD_CNT
FROM T_ORD
GROUP BY ORD_ST
       , CASE

             WHEN ORD_AMT >= 5000 THEN 'Higher Order'
             WHEN ORD_AMT >= 3000 THEN 'Middle Order'
             ELSE 'Low Order'
    END
ORDER BY 1,2
;

-- 주문일시(ORD_DT)를 'YYYYMM' 형태로 변경하여 주문년월별 주문건수를 조회하라.
SELECT TO_CHAR(ORD_DT, 'YYYYMM'), COUNT(1)
FROM T_ORD
GROUP BY TO_CHAR(ORD_DT, 'YYYYMM')
ORDER BY 1;

-- 지불건수냐? 주문건수면 ORD_ST 보면 안되지


SELECT * FROM T_ORD WHERE CUS_ID = 'CUS_0013';



