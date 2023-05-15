/*film tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız.*/
SELECT TITLE,
	DESCRIPTION
FROM FILM;

/*film tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60 dan büyük VE 75 ten küçük olma koşullarıyla sıralayınız.*/
SELECT *
FROM FILM
WHERE FILM.LENGTH > 60
		AND FILM.LENGTH < 75;

/*film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 olma koşullarıyla sıralayınız.*/
SELECT *
FROM FILM
WHERE RENTAL_RATE = 0.99
		AND (REPLACEMENT_COST = 12.99
					OR REPLACEMENT_COST = 28.99);

/*customer tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir?*/
SELECT LAST_NAME
FROM CUSTOMER
WHERE FIRST_NAME = 'Mary';

/*film tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP aynı zamanda rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız.*/
SELECT *
FROM FILM
WHERE NOT (FILM.LENGTH > 50
			AND (RENTAL_RATE = 2.99
					OR RENTAL_RATE = 4.99));
