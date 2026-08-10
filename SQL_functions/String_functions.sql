use zomatodb

-- SQL Functions:

--String Functions

--1) ASCII
SELECT name, ASCII(name) as ASCII_of_name
FROM zomato 

--2)CHAR
SELECT CHAR(65) as codeTochar

--3)CHARINDEX
SELECT CHARINDEX('t','truptijadhav') as Char_index

--4)CONCAT
SELECT CONCAT(name , ' - ', rest_type) as resturant_type
FROM zomato

--5)CONCAT with + 
SELECT name+' - '+rest_type as resturant_type
FROM zomato

--6)CONCAT_ws
SELECT CONCAT_WS(' - ', name, rest_type)
FROM zomato

--7)DATALENTH
SELECT name, DATALENGTH(name) as lenofname
FROM zomato

--lEN()
SELECT name, LEN(name) as lenofname
FROM zomato

--8)DIFFRENCE
SELECT DIFFERENCE('marry', 'mairee');

--9)FORMAT
SELECT FORMAT(12112003, '##-##-####')

--10)LEFT
SELECT LEFT('SQL Tutorial', 3) AS ExtractString;

--11)LEN
SELECT LEN('W3Schools.com');

--12)LOWER
SELECT LOWER(name) AS LowercaseResturantName
FROM zomato;

--13)LTRIM
SELECT LTRIM('     SQL Tutorial') AS LeftTrimmedString;

--14)NCHAR
SELECT NCHAR(65) AS NumberCodeToUnicode;

--15)PATINDEX
SELECT PATINDEX('%schools%', 'W3Schools.com');

--16)QUOTENAME
SELECT QUOTENAME('abcdef');

--17)REPLACE
SELECT REPLACE('SQL Tutorial', 'T', 'M');

--18)REPLICATE
SELECT REPLICATE('SQL Tutorial', 5);

--19)REVERSE
SELECT REVERSE('SQL Tutorial');

--20)RIGHT
SELECT RIGHT('SQL Tutorial', 3) AS ExtractString;

--21)RTRIM
SELECT RTRIM('SQL Tutorial     ') AS RightTrimmedString;

--22)SOUNDEX
SELECT SOUNDEX('Juice'), SOUNDEX('Jucy');

--23)SPACE
SELECT SPACE(10);

--24)STR
SELECT STR(185);

--25)STUFF
SELECT STUFF('SQL Tutorial', 1, 3, 'HTML');

--26)SUBSTRING
SELECT SUBSTRING('SQL Tutorial', 1, 3) AS ExtractString;

--27)TRANSLATE
SELECT TRANSLATE('Monday', 'Monday', 'Sunday');

--28)TRIM
SELECT TRIM('     SQL Tutorial!     ') AS TrimmedString;

--29)UNICODE
SELECT UNICODE('Atlanta');

--30)UPPER
SELECT UPPER('SQL Tutorial is FUN!');



select * from zomato 
