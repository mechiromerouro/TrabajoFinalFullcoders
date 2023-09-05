Algoritmo compra_de_productos
	
	//  Esta es una aplicación de compras online
	
	//  Donde podrá ver el catálogo de productos, nombre y precio de cada uno 
	
	//  Ademas podra llevar a cabo la compra del producto 
	
	//  y se mostrará una lista de compras, donde queda registrada cada compra realizada
	
	
	
	//Catálogo de productos
	
	
	//para el catálogo de productos vamos a tener en cuenta el nombre y el precio de cada uno de los productos
	
	//comenzamos con los nombres, se puede asignar una cierta cantidad 
	//en este caso, son 10 productos
	
	Definir nombre_del_producto Como caracter
	
	Dimension nombre_del_producto[10]
	
	nombre_del_producto[1] <- 'Remera 1 '
	nombre_del_producto[2] <- 'Remera 2 '
	nombre_del_producto[3] <- 'Short 1 '
	nombre_del_producto[4] <- 'Short 2 '
	nombre_del_producto[5] <- 'Pantalon 1 '
	nombre_del_producto[6] <- 'Pantalon 2 '
	nombre_del_producto[7] <- 'Zapatillas 1 '
	nombre_del_producto[8] <- 'Zapatillas 2 '
	nombre_del_producto[9] <- 'Vestido 1 '
	nombre_del_producto[10] <- 'Vestido 2 '
	
	//luego se asigna el precio de cada producto
	
	Definir precio_del_producto Como Real
	
	Dimension  precio_del_producto[10]
	precio_del_producto[1] <- 7540
	precio_del_producto[2] <- 6000
	precio_del_producto[3] <- 2386
	precio_del_producto[4] <- 10939
	precio_del_producto[5] <- 6392
	precio_del_producto[6] <- 5321
	precio_del_producto[7] <- 7839
	precio_del_producto[8] <- 9320
	precio_del_producto[9] <- 3858
	precio_del_producto[10] <- 12349
	
	
	
	//Compra
	
	// estas son las variables inicializadas que se utiliza luego en la sección de compras
	total_a_pagar <- 0
	cantidad_de_producto <- 1
	
	Dimension carrito[10] //en este caso, se podra realizar un total de 10 compras
	
	//Mis compras
	
	//Se define algunas variables que son necesarias en la parte de mis compras
	
	Definir generar_compra como Cadena
	
	Definir bandera como logico //en este caso es necesario definirlo como booleano
	
	Dimension mis_compras[20]  //se puede cambiar la dimension, en este caso, se podrá realizar 20 compras
	
	Escribir "BIENVENIDO/A"
	Escribir ""
	Escribir "SELECCIONE LA OPCION QUE LE GUSTARIA REALIZAR"
	Escribir ""
	
	Repetir
		Escribir "1.Catálogo de productos" //si el vendedor elige esta opcion lo mandara al catalogo de productos
		Escribir "2.Comprar un producto" //en este caso, seria la compra un producto
		Escribir "3.Mis compras" //se muestra un listado con las compras realizadas por el comprador
		Escribir "4.Salir" // y por ultimo, se encuentra la opción Salir de todo
		Escribir ""
		
		Leer opcion_menu
		Segun opcion_menu Hacer
			1:
				Escribir "Elegiste la opción de mostrar el catálogo de productos"
				Escribir ""
				Escribir "Esta es la lista de productos con sus respectivos precios"
				Escribir ""
				
				
				Para i <- 1 hasta 10 con paso 1 Hacer
					Escribir "- ", nombre_del_producto[i], " Su precio es de  $", precio_del_producto[i]
				FinPara
				Escribir ""
				
				Escribir "¿Desea realizar otra operación?"
				
			2:
				Escribir "Elegiste la opción de compras"
				Escribir ""
				
				//en esta parte, el comprador puede realizar la compra
				//se mostrara nuevamente el catalago de productos con sus respectivos precios
				//asi podrá elegir cual producto desea comprar
				//si coloca una opcion que no corresponde le mostrara un mensaje de error
				//luego de elegir la opción, se mostrara un carrito de compras con sus respectivos productos y un total a pagar
				//se le pregunta al comprador si desea comprar otro producto y si es asi, se ira sumando al carrito de compras
				
				Repetir
					Escribir  "¿Qué producto desea comprar?" 
					Para i <- 1 Hasta 10
						Mostrar i, ". ", nombre_del_producto[i], " Su precio es de  $", precio_del_producto[i]
					Fin Para
					Leer producto_elegido
					
					Segun producto_elegido Hacer
						1:
							nombre <- nombre_del_producto[1]
							precio <- precio_del_producto[1]
							total_a_pagar <- total_a_pagar + precio
						2:
							nombre <- nombre_del_producto[2]
							precio <- precio_del_producto[2]
							total_a_pagar <- total_a_pagar + precio
						3:
							nombre <- nombre_del_producto[3]
							precio <- precio_del_producto[3]
							total_a_pagar <- total_a_pagar + precio
						4:
							nombre <- nombre_del_producto[4]
							precio <- precio_del_producto[4]
							total_a_pagar <- total_a_pagar + precio
						5:
							nombre <- nombre_del_producto[5]
							precio <- precio_del_producto[5]
							total_a_pagar <- total_a_pagar + precio
						6:
							nombre <- nombre_del_producto[6]
							precio <- precio_del_producto[6]
							total_a_pagar <- total_a_pagar + precio
						7:
							nombre <- nombre_del_producto[7]
							precio <- precio_del_producto[7]
							total_a_pagar <- total_a_pagar + precio
						8:
							nombre <- nombre_del_producto[8]
							precio <- precio_del_producto[8]
							total_a_pagar <- total_a_pagar + precio
						9:
							nombre <- nombre_del_producto[9]
							precio <- precio_del_producto[9]
							total_a_pagar <- total_a_pagar + precio
						10:
							nombre <- nombre_del_producto[10]
							precio <- precio_del_producto[10]
							total_a_pagar <- total_a_pagar + precio
						De Otro Modo:
							Escribir "Esta opción no corresponde"
					Fin Segun
					
					carrito[cantidad_de_producto] <- nombre
					
					cantidad_de_producto <- cantidad_de_producto + 1
					
					Escribir "CARRITO DE COMPRAS"
					
					Para i <- 1 Hasta cantidad_de_producto - 1
						Mostrar carrito[i]
					Fin Para
					
					Escribir "El total a pagar es de: $", total_a_pagar
					
					Mostrar "¿Desea comprar otro producto? (0: N0 / 1: SI)"
					Leer opcion_carrito
					Si (opcion_carrito <> 1) y (opcion_carrito <> 0) entonces
						Escribir "Esta opción no corresponde, vuelva a intentar"
						Leer opcion_carrito
					FinSi
				Hasta que opcion_carrito = 0	
				
				Para i<-1 Hasta cantidad_de_producto - 1 
					generar_compra <- Concatenar(generar_compra,carrito[i])
				Fin Para
				
				total_a_pagar <- 0
				
				Para i <- 1 Hasta 10 Hacer
					carrito[i] <- ''  
				FinPara
				
				Para i<-1 Hasta 20 Con Paso 1 Hacer
					Si (mis_compras[i] = "") y (bandera = Falso)  Entonces
						mis_compras[i] <- generar_compra
						bandera <- Verdadero
					Fin Si
					
				Fin Para
				
				generar_compra <- ''
				
				bandera <- Falso
				
				Escribir "¿Desea realizar otra operación?"
				
			3:
				Escribir "Elegiste la opción de Mis Compras"
				Escribir ""
				
				//luego en esta parte se irá agregando cada compra realizada
				
				Para i <- 1 Hasta 20
					Mostrar i, ". ", mis_compras[i]
				Fin Para
				
				Escribir ""
                
				Escribir "¿Desea realizar otra operación?"
				
			De Otro Modo:
				Escribir "Saliste de esta aplicación."
		Fin Segun
		
	Hasta Que opcion_menu = 4
	
	
FinAlgoritmo