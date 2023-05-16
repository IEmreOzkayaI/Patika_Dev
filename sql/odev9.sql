/*city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.*/

SELECT CITY.CITY,
	COUNTRY.COUNTRY
FROM CITY
INNER JOIN COUNTRY ON COUNTRY.COUNTRY_ID = CITY.COUNTRY_ID;

/*city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.*/
SELECT PAYMENT.PAYMENT_ID,
	CUSTOMER.FIRST_NAME,
	CUSTOMER.LAST_NAME
FROM CUSTOMER
INNER JOIN PAYMENT ON CUSTOMER.CUSTOMER_ID = CUSTOMER.CUSTOMER_ID;

/*city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.*/
SELECT RENTAL.RENTAL_ID,
	CUSTOMER.FIRST_NAME,
	CUSTOMER.LAST_NAME
FROM CUSTOMER
INNER JOIN RENTAL ON RENTAL.CUSTOMER_ID = CUSTOMER.CUSTOMER_ID;