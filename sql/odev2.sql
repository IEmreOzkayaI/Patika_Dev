/*film tablosunda bulunan tüm sütunlardaki verileri replacement cost değeri 12.99 dan büyük eşit ve 16.99 küçük olma koşuluyla sıralayınız ( BETWEEN - AND yapısını kullanınız.)
*/
SELECT *
FROM FILM
WHERE FILM.REPLACEMENT_COST >= 12.99
				AND FILM.REPLACEMENT_COST <= 16.99;


SELECT *
FROM FILM
WHERE FILM.REPLACEMENT_COST BETWEEN 12.99 AND 16.99 ;

/*.actor tablosunda bulunan first_name ve last_name sütunlardaki verileri first_name 'Penelope' veya 'Nick' veya 'Ed' değerleri olması koşuluyla sıralayınız. ( IN operatörünü kullanınız.)
*/
SELECT A.FIRST_NAME,
	A.LAST_NAME
FROM ACTOR AS A
WHERE FIRST_NAME IN ('Penelope','Nick','Ed');

/*film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99, 2.99, 4.99 VE replacement_cost 12.99, 15.99, 28.99 olma koşullarıyla sıralayınız. ( IN operatörünü kullanınız.)*/
SELECT *
FROM FILM
WHERE RENTAL_RATE IN (0.99,2.99,4.99)
				AND REPLACEMENT_COST IN (2.99,15.99,28.99);