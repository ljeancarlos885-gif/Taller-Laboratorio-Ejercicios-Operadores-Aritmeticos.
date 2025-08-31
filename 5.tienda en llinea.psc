Algoritmo Gestión_de_carrito_de_ompras
	
	Definir clave_ingreso,clave Como Entero
	Definir entrar Como Caracter
	Definir option,option1 Como Entero
	
	Definir nombrep, nombrep1, nombrep2, nombrep3 Como Caracter
	Definir preciop, preciop1, preciop2, preciop3,total_compra,total_iva,iva,descuento Como Real
	Definir cantidadp, cantidadp1, cantidadp2, cantidadp3 Como Entero
	Definir agregar Como Entero
	
	
	total_compra <- 0
	total_iva <- 0
    clave_ingreso <- 4044
	Repetir
		escribir "eres cliente? o usuario "
		leer entrar;
		
		Si entrar = "usuario" Entonces
            
            Repetir
                Escribir "Escribe tu clave de ingreso:"
                Leer clave
                Si clave <> clave_ingreso Entonces
                    Escribir "Error: clave incorrecta. Intentalo de nuevo."
                FinSi
            Hasta Que clave = clave_ingreso
			Escribir "Clave correcta. ¡Ingresando al modo administrador!"

			
			
	Escribir "|******************|"
	Escribir "|*****gestionar******|"
	Escribir "|****inventario******|"
	Escribir "|******************|"
	Escribir " 1.|  carrito de   | "
	Escribir "   |   compras     | "
	Escribir " 2.|   guardar y   | "
	Escribir "   |    salir      | "
	Escribir "ingresa una opcion"
	Leer option
	
	Segun option Hacer
		1:
			
			Escribir "escribe el nombre del producto 1: "
			Leer nombrep
			Escribir "escribe el precio del producto 1: "
			Leer preciop;
			Escribir "escribe cantidad de productos disponibles en el  stock"
			Leer cantidadp;
			
			Escribir "escribe el nombre del producto 2: "
			Leer nombrep1;
			Escribir "escribe el precio del producto 2: "
			Leer preciop1;
			Escribir "escribe cantidad de productos disponibles en el  stock"
			Leer cantidadp1;
			
			Escribir "escribe el nombre del producto 3: "
			Leer nombrep2;
			Escribir "escribe el precio del producto 3: "
			Leer preciop2;
			Escribir "escribe cantidad de productos disponibles en el  stock"
			Leer cantidadp2;
		    
			Escribir "escribe el nombre del producto 4: "
			Leer nombrep3;
			Escribir "escribe el precio del producto 4: "
			Leer preciop3;
			Escribir "escribe cantidad de productos disponibles en el  stock"
			Leer cantidadp3;
			Escribir ""
			Escribir "prodoctos guargados ¡exitosamente!"
		2: 
			escribir "saliendo del modo administrador..."
		De Otro Modo:
			escribir "opcion incorecta"
			
	FinSegun


	
SiNo si entrar = "cliente" Entonces
		
		Si cantidadp = 0 Y cantidadp1 = 0 Y cantidadp2 = 0 Y cantidadp3 = 0 Entonces
			Escribir "Lo sentimos, el inventario aún no ha sido cargado por el administrador."
		SiNo
	repetir	
	Escribir "|******************|"
	Escribir "|****inventario****|"
	Escribir "|******************|"
	Escribir "|******************|"
	Escribir "1. ", nombrep, " | ", preciop, "$ | ", cantidadp, " unidades disponibles."
	Escribir "2. ", nombrep1, " | ", preciop1, "$ | ", cantidadp1, " unidades disponibles."
	Escribir "3. ", nombrep2, " | ", preciop2, "$ | ", cantidadp2, " unidades disponibles."
	Escribir "4. ", nombrep3, " | ", preciop3, "$ | ", cantidadp3, " unidades disponibles."
    Escribir "5. " "ver carrito y pagar"
	Escribir "6. " "salir"
	Escribir "escribre tu opcion de preferencia"
	Leer option1;
	
	Segun option1 Hacer
		1: 
			Escribir " cuantas " nombrep " deseas agregar al carrito"
			Leer agregar;
			Si agregar <= cantidadp Entonces
				cantidadp <- cantidadp - agregar
				total_compra <- total_compra + (agregar * preciop) ;
				
				Escribir "Se agregaron ", agregar, " ", nombrep, ". Quedan ", cantidadp, " en stock."
			SiNo
				Escribir "Error: No hay suficiente stock para la cantidad solicitada."
			FinSi
		2: 
			Escribir " cuantas " nombrep1 " deseas agregar al carrito"
			Leer agregar;
			Si agregar <= cantidadp1 Entonces
				cantidadp1 <- cantidadp1 - agregar
				total_compra <- total_compra + (agregar * preciop1)
				Escribir "Se agregaron ", agregar1, " ", nombrep1, ". Quedan ", cantidadp1, " en stock."
			SiNo
				Escribir "Error: No hay suficiente stock para la cantidad solicitada."
				
			FinSi
		3: 
			Escribir " cuantas " nombrep2 " deseas agregar al carrito"
			Leer agregar;
			Si agregar <= cantidadp2 Entonces
				cantidadp2 <- cantidadp2 - agregar
				total_compra <- total_compra + (agregar * preciop2)
				Escribir "Se agregaron ", agregar2, " ", nombrep2, ". Quedan ", cantidadp2, " en stock."
			SiNo
				Escribir "Error: No hay suficiente stock para la cantidad solicitada."
			FinSi
		4:
			Escribir " cuantas " nombrep3 " deseas agregar al carrito"
			Leer agregar;
			Si agregar <= cantidadp3 Entonces
				cantidadp3 <- cantidadp3- agregar
				total_compra <- total_compra + (agregar * preciop3)
				Escribir "Se agregaron ", agregar3, " ", nombrep3, ". Quedan ", cantidadp3, " en stock."
			SiNo
				Escribir "Error: No hay suficiente stock para la cantidad solicitada."
			FinSi
		
		5:
			iva <- total_compra * 0.16
			total_iva <- total_compra + iva
			Escribir "??*** Factura de compra ***"
			Escribir "El total de tu compra es: ",  "$ " total_compra, " mas iva "  "$ " total_iva
			Escribir "Selecciona un método de pago:"
			Escribir "1. Efectivo (10% de descuento)"
			Escribir "2. Tarjeta (5% de descuento)"
			Escribir "3. Transferencia (sin descuento)"
			Leer metodo_pago
			
			Segun metodo_pago Hacer
				1: 
					
					
					descuento <- total_compra * 0.10
					total_compra <- total_compra - descuento +  iva
					Escribir " Pagando con efectivo. Descuento aplicado: ", "$ " descuento ;
					Escribir "Total a pagar: ", total_compra, "$"
				2:
					
					descuento <- total_compra * 0.05
					total_compra <- total_compra - descuento + iva
					Escribir " Pagando con tarjeta. Descuento aplicado: ", "$ " descuento ;
					Escribir "Total a pagar: ", "$ " total_compra;
				3:
					
					Escribir "Pagando con transferencia. No se aplican descuentos."
					total_compra <-  total_compra + iva
					Escribir "Total a pagar: ", "$" total_compra;
				De Otro Modo:
					Escribir "Método de pago incorrecto."
			FinSegun
			Escribir "¡Gracias por tu compra!"
		6:
			Escribir "Saliendo del programa..."
			
		De Otro Modo:
			Escribir "Opción incorrecta, por favor intenta de nuevo."

	FinSegun
Hasta Que option1 =  6
	


FinSi
FinSi
FinSi
Hasta Que option = 2
FinAlgoritmo
