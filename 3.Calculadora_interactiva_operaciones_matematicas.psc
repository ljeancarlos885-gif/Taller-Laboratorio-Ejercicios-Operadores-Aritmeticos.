Algoritmo Calculadora_interactiva_operaciones_matematicas
	definir option como entero
	Definir num1,num2,resultadosuma,resultadoresta,resultadomultiplicacion,resultadodivision como real 
	
	Repetir
		
		escribir"*********************"
		escribir"* menu interactivo  *"  
		escribir"*********************"
		escribir  "  "    " 1  sumar "
		escribir  "  "    " 2  restar "
		escribir  "  "    " 3 multiplicar "
		escribir  "  "    " 4 dividir "
		escribir  "  "    " 5 salir "
		
		Escribir "ingrese la opcion de tu preferencia"
		leer option
		Si option >= 1 Y option <= 4 Entonces
		escribir " escribe un numero"
		leer num1;
		si num1 <= 0 Entonces
			Escribir "¡ error numero incorrecto vuelve a intentarlo! "	
		SiNo
			
			Escribir " escribe un segundo numero "
			leer num2;
			si num2 <= 0 Entonces
				Escribir "¡ error numero incorrecto vuelve a intentarlo! "	
			SiNo
				
		
	
		Segun option Hacer
			
			1:  
				
				resultadosuma <- num1 + num2;
				Escribir " resultado de la suma es ", resultadosuma
				si resultadosuma  mod 2 = 0 Entonces
					Escribir "el numero del resultado de la suma es un numero par"
				sino
					Escribir "el numero del resultado de la suma no es numero par"
				FinSi
				
			2: 
				
				resultadoresta <- num1 - num2;
			    Escribir " resultado de la resta es ", resultadoresta
				si resultadoresta  mod 2 = 0 Entonces
					Escribir "el numero del resultado de la resta es un numero par"
				sino
					Escribir "el numero del resultado de la resta no es numero par"
				FinSi
				
			3:	
				resultadomultiplicacion <- num1 * num2;
			    Escribir " resultado de la multiplicacion es ", resultadomultiplicacion
				si resultadoresta  mod 2 = 0 Entonces
					Escribir "el numero del resultado de la multiplicacion es un numero par"
				sino
					Escribir "el numero del resultado de la multiplicacion no es numero par"
				FinSi
				
            4:
				resultadodivision <- num1 / num2;
			    Escribir " resultado de la division es ", resultadodivision
				si resultadoresta  mod 2 = 0 Entonces
					Escribir "el numero del resultado de la division es un numero par"
				sino
					Escribir "el numero del resultado de la division no es numero par"
				FinSi
				
			5: //salir
				
			De Otro Modo:
				escribir "¡error! item invalido vuelve a intentarlo"
				
				FinSegun
			FinSi
		FinSi
	FinSi
	
	Hasta Que option = 5
FinAlgoritmo
