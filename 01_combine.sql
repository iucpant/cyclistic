DROP TABLE IF EXISTS `2022_tripdata.combined_data`;

-- combining all the 12 months data tables into a single table containing data from Jan 2022 to Dec 2022.
CREATE TABLE `2022_tripdata.combined_data` AS
SELECT * FROM `2022_01`
  UNION ALL
  SELECT * FROM `2022_02`
  UNION ALL
  SELECT * FROM `2022_03`
  UNION ALL
  SELECT * FROM `2022_04`
  UNION ALL
  SELECT * FROM `2022_05`
  UNION ALL
  SELECT * FROM `2022_06`
  UNION ALL
  SELECT * FROM `2022_07`
  UNION ALL
  SELECT * FROM `2022_08`
  UNION ALL
  SELECT * FROM `2022_09`
  UNION ALL
  SELECT * FROM `2022_10`
  UNION ALL
  SELECT * FROM `2022_11`
  UNION ALL
  SELECT * FROM `2022_12`;

-- checking no of rows which are 5667717
SELECT COUNT(*)
FROM `2022_tripdata.combined_data`;
