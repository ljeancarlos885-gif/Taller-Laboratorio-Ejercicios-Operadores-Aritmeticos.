Algoritmo calculadora_de_conversiones
	definir option Como Entero
	Definir kilometro,converkm,pulgada,converpul,libra,converlib,litros,coverlib Como Real
	Repetir
		
	escribir "///////////\\\\\\\\\\\\\"
	escribir "|**** calculadora *****|"
	escribir "|**** conversiones ****|"
	escribir "///////////\\\\\\\\\\\\\"
	escribir "1 opcion de kilometros a millas"
	escribir "2 opcion de pulgadas a centimetros"
	escribir "3 opcion de libras a kilogramos "
	escribir "4 opcion de litros a galones"
	escribir "5 salir"
	escribir "elije la opcion de preferencia"
	leer option;
	Segun option Hacer
	        1:
				escribir "ingresa la cantidad de kilometros a convertir a millas"
				Leer kilometro;
				si kilometro <= 0 Entonces
					escribir "valor no valido"
				SiNo
					
				
				converkm <- kilometro / 1.60934;
				
				escribir " la conversion de ",kilometro " kilogramos a millas es ",converkm " mi"
			FinSi
		    2:
				escribir "ingresa la cantidad de pulgadas a convertir a centimetros"
				Leer pulgada;
				si pulgada <= 0 Entonces
					escribir "valor no valido"
				SiNo
				converpul <- pulgada * 2.54;
				
				escribir " la conversion de ",pulgada " pulgadas  a centimetros es ",converpul " cm"
				finsi
		    3:
				escribir "ingresa la cantidad de libras a convertir a kilogramos"
				Leer libra;
				si libra <= 0 Entonces
					escribir "valor no valido"
				SiNo
				converlib <- libra * 2.205
				
				escribir " la conversion de ",libra " libras a kilogramos es ",converlib " kg"
			FinSi
			
			4:
				escribir " ingresa el volumen del recipiete = litros a covertir a galones "
				Leer litros;
				si litros <= 0 Entonces
					escribir "valor no valido"
				SiNo
				converlit <- litros /   4.546
				
				escribir " la conversion de litros a galones es ",converlit " gal"
			FinSi
			
			5: // salir
			
		De Otro Modo:
		   escribir "opcion no validad vuelve a intentarlo"
	  	   
   Fin Segun

Hasta Que option = 5

FinAlgoritmo
