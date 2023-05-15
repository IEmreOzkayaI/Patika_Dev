/*country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.*/
SELECT *
FROM COUNTRY AS C
WHERE C.COUNTRY LIKE 'A%a';

/*country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.*/
SELECT *
FROM COUNTRY AS C
WHERE LENGTH(C.COUNTRY) >= 6
				AND C.COUNTRY LIKE '%n';

/*film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.*/
SELECT *
FROM FILM
WHERE TITLE ILIKE '%t%t%t%t%';

/*film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.*/
SELECT *
FROM FILM
WHERE TITLE LIKE 'C%'
				AND FILM.LENGTH > 90
				AND RENTAL_RATE = 2.99;