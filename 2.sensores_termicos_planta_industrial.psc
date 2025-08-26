Algoritmo sensores_termicos_planta_industrial
	Definir option,contador,a,b,c,valo Como Entero
	definir sensores,sensor Como Real
	
	reiniciar <- 000
    temperatura_baja<-0
	temperatura_alta<-0
	temperaturaminima<-0
	temperaturaMaxima<-100
	Repetir
	escribir "----menu sensores____"
	Escribir "1. monitoriar sensores "
	Escribir "2. Sensores en condiciones normales (35°C - 64°C)"
	Escribir "3. Sensores en condiciones altas (65°C - 79°C)"
	Escribir "4. Sensores en condiciones bajas (21°C - 34°C)"
	Escribir 5 " opcion  reiniciar temperatura"
	Escribir 6 "salir"
	escribir "ingresa la opcion de tu preferencia"
	Leer option ;
		Segun option Hacer
			1:
				escribir "ingresa la cantidad de sensores a monitorear"
				leer sensores;
				suma_temperaturas <- 0
				
				Para contador<-1 Hasta sensores Con Paso 1 Hacer
					Repetir
						Escribir "Ingresa la temperatura del sensor ", contador, " (rango: ", temperaturaMinima, "°C a ", temperaturaMaxima, "°C):"
						Leer temperatura
						Si sensor < temperaturaMinima O sensor > temperaturaMaxima Entonces
							Escribir "ERROR: La temperatura está fuera del rango permitido. Inténtalo de nuevo."
						FinSi
					Hasta Que sensor >= temperaturaMinima Y sensor <= temperaturaMaxima;
					
					suma_temperaturas <- suma_temperaturas + temperatura
					
					Si temperatura < 20 Entonces
						temperatura_baja <- temperatura_baja + 1;
						
					FinSi
					Si temperatura > 80 Entonces
						temperatura_alta <- temperatura_alta + 1;
					FinSi
				Fin Para
				// Calcular y mostrar el promedio
				Si sensores > 0 Entonces
					Escribir "La suma total de las temperaturas es: ", suma_temperaturas, "°C"
					Fahrenheit <- (1.8 * suma_temperaturas) + 32 
					Escribir "al convertirlo a Fahrenheit nos da " ,Fahrenheit " °F"
				Sino
					Escribir "No se ingresaron sensores para monitorear"
				FinSi
				Escribir "Sensores con temperatura inferior a 20°C: ", temperatura_baja
				Escribir "Sensores con temperatura superior a 80°C: ", temperatura_alta
				
			
			2:
				Escribir "Los sensores en condiciones normales se encuentran en un rango de 35°C - 64°C."
			3:
				Escribir "Los sensores en condiciones altas se encuentran en un rango de 65°C - 79°C."
			4:  
				Escribir "Los sensores en condiciones bajas se encuentran en un rango de 21°C - 34°C."
			5:  
				escribir "sensores reiniciados ",  "| ", 0, " | ", 0," | ",0," |"
			De Otro Modo:
				escribir "¡error opcion incorrecta vuelve a intentarlo"
		Fin Segun
		
	Hasta Que option = 6
	
FinAlgoritmo
