/*film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?*/
SELECT COUNT(FILM_ID)
FROM FILM
WHERE LENGTH >
				(SELECT AVG(LENGTH)
									FROM FILM);

/*film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?*/
SELECT COUNT(FILM_ID)
FROM FILM
WHERE RENTAL_RATE =
					(SELECT MAX(RENTAL_RATE)
									FROM FILM);

/*film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.*/
SELECT *
FROM FILM
WHERE RENTAL_RATE =
					(SELECT MIN(RENTAL_RATE)
									FROM FILM
									WHERE REPLACEMENT_COST =
														  (SELECT MIN(REPLACEMENT_COST)
																		FROM FILM));

/*payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.*/
SELECT *
FROM CUSTOMER
WHERE CUSTOMER_ID IN
					(SELECT CUSTOMER_ID
									FROM PAYMENT
									GROUP BY CUSTOMER_ID
									ORDER BY COUNT(PAYMENT_ID) DESC);