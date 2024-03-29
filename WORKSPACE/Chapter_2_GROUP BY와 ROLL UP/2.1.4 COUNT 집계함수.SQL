-- #1
SELECT
    COUNT(COL1) CNT_COL1
    , COUNT(COL2) CNT_COL2
    , COUNT(COL3) CNT_COL3
FROM (
    SELECT 'A' COL1, NULL COL2, 'C' COL3 FROM DUAL
    UNION ALL
    SELECT 'B' COL1, NULL COL2, NULL COL3 FROM DUAL
) T1


-- #2
SELECT COUNT(COL1) CNT_COL1, COUNT(*) CNT_ALL, COUNT(1)
FROM(
    SELECT NULL COL1 FROM DUAL
    UNION ALL
    SELECT NULL COL1 FROM DUAL
    ) T1;

-- COUNT(컬럼)은 NULL 안센다. COUNT(*)은 NULL포함
