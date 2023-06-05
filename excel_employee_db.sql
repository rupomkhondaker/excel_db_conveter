CREATE TABLE sbl_employee

SELECT 
`SL` AS sl_no,
`INDEX_TYPE` AS index_type,
`EMP_INDEX` AS user_login,
`EMP_INDEX` AS index_no,
`NAME` AS display_name,
`NAME` AS first_name,
`GENDER` AS gender,
`MOBILE` AS `mobile_number`,

CONCAT (e.`EMP_INDEX`,'@sonalibank.com.bd') AS `email`,
CONCAT (e.`EMP_INDEX`,'@',SUBSTRING(e.`DATE_OF_BIRTH`,1,4)) AS `password`,

STR_TO_DATE(e.`DATE_OF_BIRTH`,'%Y%m%d') AS date_of_birth,
SUBSTRING(`PRESENT_DESIG`,1,4) AS `desig_code`,
SUBSTRING(`PRESENT_DESIG`,8) AS `sp_designation`,

SUBSTRING(`PRESENT_POSTING`,1,5) AS `br_code`,
SUBSTRING(`PRESENT_POSTING`,9) AS `br_name`, 

SUBSTRING(`FUNC_DESIG`,1,3) AS `func_code`,
SUBSTRING(`FUNC_DESIG`,7) AS `func_name`

FROM employee e;
