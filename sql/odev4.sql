/*film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.*/
SELECT DISTINCT REPLACEMENT_COST
FROM FILM;

/*film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.*/
SELECT COUNT(DISTINCT REPLACEMENT_COST)
FROM FILM;

/*film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?*/
SELECT COUNT(TITLE)
FROM FILM
WHERE TITLE LIKE 'T%'
				AND RATING = 'G';

/*country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?*/
SELECT COUNT(COUNTRY)
FROM COUNTRY AS C
WHERE LENGTH(C.COUNTRY) = 5;

/*city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?*/
SELECT COUNT(C.CITY)
FROM CITY AS C
WHERE CITY ILIKE '%R';