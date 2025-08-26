Algoritmo calculadora_geometricainteractiva
	Definir option1,option2,radio_cilindro,volumen_cilindro,radio_cono,altura_cono,altura_cilindro Como real
	definir  Btriangulo,Atriangulo,radio_circulo,area_circulo,volumen_cono,numeropi como real
	definir base_rectangulo,altura_rectangulo,area_rectangulo,radio_esfera,volumen_esfera  como real
	definir continuar como cadena
	numeropi <- 3.1416;
	Repetir
		escribir "---------menu calculadora geometrica---------"
		escribir "elige una opcion"
		escribir 1 " opcion calcular area o volumem";
		escribir 2 " salir ";
		leer option1
		si option1 <1 Entonces
			Escribir "!error¡ opcion invalida vuelve a intentarlo "
		SiNo
			si option1 = 2  Entonces
				Escribir  "saliendo........."
			sino
				Escribir "!error¡ opcion invalida vuelve a intentarlo "
		si option1 = 1 Entonces
		Repetir
			escribir "-----submenu------"
			Escribir   "---area---"
			escribir "elige  la figura "
			Escribir 1 " triangulo "
			Escribir 2 " rectangulo"
			Escribir 3 " circulo  "
			Escribir "-----volumem------"
			Escribir 4 " esfera  "
			Escribir 5 " cilindro"
			escribir 6 " cono "
			Escribir 7 " volver al menu  pricipal"
			escribir "escribe tu opcion de preferecia"
			Leer  option2
			
			Segun option2 Hacer
				1:
					escribir "A= (base*altura)/2";
					Escribir "ingresa la base del triangulo"
					leer Btriangulo;
					Escribir "escribe la altura del triangulo "
					Leer  Atriangulo
					areatriangulo<-(Btriangulo*Atriangulo)/2
					Escribir "el area del triangulo es" "|" areatriangulo ;
				2:
					escribir "A= base*altura";
					Escribir "ingresa la base del rectangulo"
					leer base_rectangulo;
					Escribir "escribe la altura del rectangulo "
					Leer  altura_rectangulo
					area_rectangulo <- base_rectangulo * altura_rectangulo
					Escribir "el area del rectangulo  es " "| " area_rectangulo;
				3: escribir "A=TT*r²"
					Escribir "ingresa el radio del circulo"
					Leer radio_circulo;
					area_circulo <- numeropi * radio_circulo^2;
					escribir   "el area del circulo  es " "| " area_circulo ;
					
				4:  escribir "V = (4/3)TTr³";
					Escribir "ingresa el radio de la esfera"
					leer radio_esfera;
					volumen_esfera <- (radio_esfera^3 * 4)*(numeropi) /3
					Escribir "el volumen es" "| " volumen_esfera;
					
				5:  escribir " V = TTr²h";
					Escribir "ingresa el radio del cilindro"
					leer radio_cilindro;
					Escribir "ingresa la altura del cilindro"
					Leer altura_cilindro;
					volumen_cilindro <- (radio_cilindro^2*altura_cilindro)*numeropi;
					Escribir "el volumen es" "| " volumen_cilindro;
					
				6:  escribir "V = (1/3)TTr²h";
					Escribir "ingresa el radio del cono"
					leer radio_cono;
					Escribir "ingrese la altura del cono"
					leer altura_cono
					volumen_cono <- (radio_cono^2*altura_cono)*(numeropi)/3
					Escribir "el volumen es" "| " volumen_cono; 
				7:  //menu principal
				De Otro Modo:
					
					escribir "error comando no valido vuelve a intentarlo"	
		    FinSegun
			Escribir ""
			Escribir "desea continuar  escribe (continuar)  sino escribe la opcion 7 retroceder "
			Leer continuar
			si continuar = continuar Entonces
				escribir" llendo al submenu..."
			SiNo
				si option2 = 7 Entonces
					Escribir llendo  menu principal
				
				FinSi
			FinSi
		
		Hasta Que option2 = 7
	FinSi
FinSi
FinSi

	Hasta Que option1 = 2		
	
	
	
FinAlgoritmo
