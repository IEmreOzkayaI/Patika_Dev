/*film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?*/
SELECT AVG(RENTAL_RATE)
FROM FILM;

/*film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?*/
SELECT COUNT(FILM_ID)
FROM FILM
WHERE TITLE LIKE 'C%';

/*film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?*/
SELECT LENGTH
FROM FILM
WHERE RENTAL_RATE = 0.99
ORDER BY LENGTH DESC
LIMIT 1;

/*film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?*/
SELECT COUNT(DISTINCT REPLACEMENT_COST)
FROM FILM
WHERE LENGTH > 150;