-- Normalization

/*
Priznaki nenormalizovannix BD
	+ tablitsa soderjit informatsiyu pro bolle odnoy sushnosti
	+ V tablitse ili v BD yest povtorayayushiyisya stolbsi
	+ Stolbsi soderjat povtoryayushiyisya informatsii
*/
/* 1NF - pervaya normalnya forma
1NF qlasit chto v tablitse na peresechenii stolbtsov i strok
informasiya doljna bit atomarnoy(nedelimoy)

Ne atomarnaya informatsiya
-------------------------------------
|        Fullname		|     Age	|
-------------------------------------
| Zamanov Nadir Rasim	|	   44	|
-------------------------------------

atomarnaya informatsiya
---------------------------------------------
|  Firstname | LastName | Patronymic | Age	|
---------------------------------------------
|    Nadir 	 | Zamanov  |   Rasim	 |  44	|
---------------------------------------------

V tablitse doljni otsustvovat 
povtoryayushiyisya stolbtsi i informasii
*/

/* 
2NF - vtoraya normalnaya forma
2NF podrazumivayet chto pervaya normalnaya forma soblyudena i
te stolbtsi kotoriye ne yavlyayutsa klyuchom doljni zavisit ot
pervichnoqo klyucha
Tablitsa ne doljna opisivat bolee odnoqo obyekta
*/

/* 
3NF - tretya nomalnaya forma
3NF podrazumivayet chto pervaya i vtoraya normalnaye formi soblyudena i
te stolbtsi kotoriye ne yavlyayutsa klyuchom doljni zavisit
tolko i tolka ot pervichnoqo klyucha.

						Product
-----------------------------------------------------------
| Id	|	Product Name	| Count	| Price | Total Price |
-----------------------------------------------------------
| 1		|	Cola			|  5	|	3	|	   15	  |
-----------------------------------------------------------

					Product
---------------------------------------------
| Id	|	Product Name	| Count	| Price |
---------------------------------------------
| 1		|	Cola			|  5	|	3	|
---------------------------------------------
*/