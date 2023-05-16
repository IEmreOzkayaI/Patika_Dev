/*city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.*/
SELECT C.CITY,
	CN.COUNTRY
FROM CITY AS C
LEFT JOIN COUNTRY AS CN ON CN.COUNTRY_ID = C.COUNTRY_ID;

/*customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name
isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.*/
SELECT P.PAYMENT_ID,
	C.FIRST_NAME,
	C.LAST_NAME
FROM CUSTOMER AS C
RIGHT JOIN PAYMENT AS P ON P.CUSTOMER_ID = C.CUSTOMER_ID;

/*customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name
isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.
*/
SELECT R.RENTAL_ID,
	C.FIRST_NAME,
	C.LAST_NAME
FROM CUSTOMER AS C
FULL JOIN RENTAL AS R ON R.CUSTOMER_ID = C.CUSTOMER_ID;