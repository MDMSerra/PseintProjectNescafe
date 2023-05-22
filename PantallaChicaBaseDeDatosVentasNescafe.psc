/////terminal de ventas por vendedor en distintas zonas para la marca nescafe.
/////17.05.2023 
///// © Maria del mar Serra
//// tipografia inspirada de http://www.network-science.de/ascii/
Algoritmo ejercicio_extra8
	Definir matrizFinal, logo,caratulaVendedores, caratulaVentas, caratulaRendimiento Como Caracter
	Definir matrizDatos, width Como Real
	width = 180
	Dimension matrizFinal[12,8], matrizDatos[11,7], logo[9], caratulaVendedores[5], caratulaVentas[9],caratulaRendimiento[8]

	banerLogo(logo)
	banerBaseDeDatosVendedores(caratulaVendedores)
	banerVentasPorZona(caratulaVentas)
	banerRendimientoPorVentas(caratulaRendimiento)
	
	caratulaPresentacion(logo,width)
	inicializarMatrizCeros(matrizDatos)
	generarDatosAleatorios(matrizDatos)
	menuVisualizacionDatos(matrizFinal,matrizDatos,logo, caratulaVendedores, caratulaVentas, caratulaRendimiento,width)
FinAlgoritmo

SubProceso menuVisualizacionDatos(matrizFinal,matrizDatos,logo, caratulaVendedores, caratulaVentas,caratulaRendimiento,width)
	Definir seleccion Como Caracter
	Definir bandera Como Logico
	bandera = FALSO
	
	Hacer
		Borrar Pantalla
		imprimirImagen(width," ",caratulaVendedores,5,2,1)
		centrar(width," ", "SLECCIONE UNA OPCION")
		centrar(width," ", "1 - Buscar datos de vendedores")
		centrar(width," ", "2 - Total de Ventas Zona Centro")
		centrar(width," ", "3 - Total de Ventas Zona Norte")
		centrar(width," ", "4 - Total de Ventas Zona Este")
		centrar(width," ", "5 - Total de Ventas Zona Sur")
		centrar(width," ", "6 - Total de Ventas Zona Oeste")
		centrar(width," ", "7 - Total de Ventas en Todas las Zonas")
		centrar(width," ", "8 - Total de Ventas de Vendedor")
		centrar(width," ", "S - Salir ")
		Leer seleccion
		seleccion = Minusculas(seleccion)
		Borrar Pantalla
		Segun seleccion
			"1":
				pedirNombreVendedores(matrizFinal,caratulaVendedores,width)
				titulosFilasColumnasPrincipales(matrizFinal)
				armarTablaFinal(matrizFinal, matrizDatos)
				bandera = VERDADERO 
			"2":
				Si bandera Entonces
					imprimirTablaVentasPorZonas(seleccion,caratulaVentas,matrizFinal,width)
					esperarRespuestaUsuario(width)
				SiNo
					imprimirImagen(width," ",caratulaVendedores,5,2,1)
					centrar(width," ", "DEBE SELECCIONAR LOS VENDEDORES PRIMERO")
					esperarRespuestaUsuario(width)
				FinSi
			"3":
				Si bandera Entonces
					imprimirTablaVentasPorZonas(seleccion,caratulaVentas,matrizFinal,width)
					esperarRespuestaUsuario(width)
				SiNo
					imprimirImagen(width," ",caratulaVendedores,5,2,1)
					centrar(width," ", "DEBE SELECCIONAR LOS VENDEDORES PRIMERO")
					esperarRespuestaUsuario(width)
				FinSi
			"4":
				Si bandera Entonces
					imprimirTablaVentasPorZonas(seleccion,caratulaVentas,matrizFinal,width)
					esperarRespuestaUsuario(width)
				SiNo
					imprimirImagen(width," ",caratulaVendedores,5,2,1)
					centrar(width," ", "DEBE SELECCIONAR LOS VENDEDORES PRIMERO")
					esperarRespuestaUsuario(width)
				FinSi
			"5":
				Si bandera Entonces
					imprimirTablaVentasPorZonas(seleccion,caratulaVentas,matrizFinal,width)
					esperarRespuestaUsuario(width)
				SiNo
					imprimirImagen(width," ",caratulaVendedores,5,2,1)
					centrar(width," ", "DEBE SELECCIONAR LOS VENDEDORES PRIMERO")
					esperarRespuestaUsuario(width)
				FinSi
			"6":
				Si bandera Entonces
					imprimirTablaVentasPorZonas(seleccion,caratulaVentas,matrizFinal,width)
					esperarRespuestaUsuario(width)
				SiNo
					imprimirImagen(width," ",caratulaVendedores,5,2,1)
					centrar(width," ", "DEBE SELECCIONAR LOS VENDEDORES PRIMERO")
					esperarRespuestaUsuario(width)
				FinSi
			"7":
				Si bandera Entonces
					imprimirTablaVentas(matrizFinal,12,8,caratulaVentas,width)
					esperarRespuestaUsuario(width)
				SiNo
					imprimirImagen(width," ",caratulaVendedores,5,2,1)
					centrar(width," ", "DEBE SELECCIONAR LOS VENDEDORES PRIMERO")
					esperarRespuestaUsuario(width)
				FinSi
			"8":
				Si bandera Entonces
					Hacer						
						Borrar Pantalla
						imprimirImagen(width," ",caratulaVendedores,5,2,1)
						moverAlcentro(80)
						Escribir "SLECCIONE UN VENDEDOR"
						moverAlcentro(73)
						Escribir "1 - Rendimiento en Ventas de " matrizFinal[1,0]
						moverAlcentro(73)
						Escribir "2 - Rendimiento en Ventas de " matrizFinal[2,0]
						moverAlcentro(73)
						Escribir "3 - Rendimiento en Ventas de " matrizFinal[3,0]
						moverAlcentro(73)
						Escribir "4 - Rendimiento en Ventas de " matrizFinal[4,0]
						moverAlcentro(73)
						Escribir "5 - Rendimiento en Ventas de Todos los Vendedores"
						moverAlcentro(77)
						Escribir "M - Volver al menu anterior"
						Leer seleccion
						seleccion = Minusculas(seleccion)
						Borrar Pantalla
						Segun seleccion
							"1":
								imprimirTablaRendimientoPorVendedor(seleccion,matrizFinal,12,8, caratulaRendimiento,width)
								esperarRespuestaUsuario(width)
							"2":
								imprimirTablaRendimientoPorVendedor(seleccion,matrizFinal,12,8, caratulaRendimiento,width)
								esperarRespuestaUsuario(width)
							"3":
								imprimirTablaRendimientoPorVendedor(seleccion,matrizFinal,12,8, caratulaRendimiento,width)
								esperarRespuestaUsuario(width)
							"4":
								imprimirTablaRendimientoPorVendedor(seleccion,matrizFinal,12,8, caratulaRendimiento,width)
								esperarRespuestaUsuario(width)
							"5":
								imprimirTablaRendimiento(matrizFinal,12,8,caratulaRendimiento,width)
								esperarRespuestaUsuario(width)
						FinSegun
					Mientras Que (seleccion <> "menu" Y seleccion <> "m")
				SiNo
					imprimirImagen(width," ",caratulaVendedores,5,2,1)
					centrar(width," ", "DEBE SELECCIONAR LOS VENDEDORES PRIMERO")
					esperarRespuestaUsuario(width)
				FinSi
			"s","salir":
				imprimirImagen(width," ",logo,9,15,15)
				Esperar 1500 Milisegundos
				centrar(width," ", "FIN DEL PROGRAMA")
		FinSegun
	Mientras Que seleccion <> "salir" Y seleccion <> "s" 
FinSubProceso

SubProceso esperarRespuestaUsuario(ancho)
	centrar(ancho," ", "<<<<PRESIONE UNA TECLA>>>>")
	Esperar Tecla
FinSubProceso

SubProceso imprimirRenglon(ancho,columna)
	Definir i Como Entero
	Para i = 0 hasta columna * (ancho)
		Escribir Sin Saltar "_"	
	FinPara
FinSubProceso

SubProceso moverAlcentro(cantidadAMover)
	Definir i Como Entero
	Para i = 1 Hasta cantidadAMover Hacer
		Escribir Sin Saltar" "
	FinPara
FinSubProceso

SubProceso renglonSuperior(espacioAMover,ancho,columna)
	moverAlcentro(espacioAMover)
	imprimirRenglon(ancho,columna)
	Escribir ""
FinSubProceso

SubProceso inicioRenglonIntermedio(espacioAMover)
	moverAlcentro(espacioAMover)
	Escribir Sin Saltar "/ "
FinSubProceso

SubProceso finRenglonIntermedio()
	Escribir "\"
FinSubProceso

SubProceso renglonInferior(espacioAMover,ancho,columna)
	moverAlcentro(espacioAMover)
	Escribir Sin Saltar "\"
	imprimirRenglon(ancho,columna)
    Escribir "/"
FinSubProceso

SubProceso imprimirTablaRendimientoPorVendedor(seleccion,matrizFinal,fila,columna, caratulaRendimiento,width)
	Definir i,j, ancho Como Entero	
	ancho = maximaCantidadDigitos(matrizFinal)
	imprimirImagen(width," ",caratulaRendimiento,8,2,1)
	
	renglonSuperior(14,ancho,columna-1)
	inicioRenglonIntermedio(13)
	centrarSinSaltar(ancho," ","rendimiento\Ventas")
	Para j = 1 Hasta columna-3 Hacer
		centrarSinSaltar(ancho," ",matrizFinal[0,j])
	FinPara
	centrarSinSaltar(ancho," ","Total Rendimiento")
	finRenglonIntermedio()
	renglonInferior(13,ancho,columna-1)
	
	inicioRenglonIntermedio(13)
	Para j = 0 Hasta columna-2 Hacer
		centrarSinSaltar(ancho," ",matrizFinal[7,j])
	FinPara
	finRenglonIntermedio()
	renglonInferior(13,ancho,columna-1)
	
	inicioRenglonIntermedio(13)
	Para j = 0 Hasta columna-2 Hacer
		centrarSinSaltar(ancho," ",matrizFinal[ConvertirANumero(seleccion)+7,j])
	FinPara
	finRenglonIntermedio()
	renglonInferior(13,ancho,columna-1)
	
	Escribir ""
FinSubProceso

SubProceso imprimirTablaRendimiento(matrizFinal,fila,columna,caratulaRendimiento,width)
	Definir i,j, ancho Como Entero	
	ancho = maximaCantidadDigitos(matrizFinal)
	imprimirImagen(width," ",caratulaRendimiento,8,2,1)
	renglonSuperior(14,ancho,columna-1)
	inicioRenglonIntermedio(13)
	centrarSinSaltar(ancho," ","rendimiento\Ventas")
	Para j = 1 Hasta columna-3 Hacer
		centrarSinSaltar(ancho," ",matrizFinal[0,j])
	FinPara
	centrarSinSaltar(ancho," ","Total Rendimiento")
	finRenglonIntermedio()
	renglonInferior(13,ancho,columna-1)
	para i = 7 Hasta fila-1 Hacer
		inicioRenglonIntermedio(13)
		Para j = 0 Hasta columna-2 Hacer			
			centrarSinSaltar(ancho," ",matrizFinal[i,j])
		FinPara
		finRenglonIntermedio()
		renglonInferior(13,ancho,columna-1)
	FinPara
	Escribir ""
FinSubProceso

SubProceso imprimirTablaVentasPorZonas(seleccion,caratulaVentas,matrizFinal,width)
	Definir i,j,ancho Como Entero
	ancho = maximaCantidadDigitos(matrizFinal)
	imprimirImagen(width," ",caratulaVentas,8,2,1)
	renglonSuperior(69,ancho,2)
	para i = 0 Hasta 6 Hacer
		inicioRenglonIntermedio(68)
		centrarSinSaltar(ancho," ",matrizFinal[i,0])
		centrarSinSaltar(ancho," ",matrizFinal[i,ConvertirANumero(seleccion)-1])
		finRenglonIntermedio()
		renglonInferior(68,ancho,2)
	FinPara
	Escribir ""
FinSubProceso

SubProceso imprimirTablaVentas(matrizFinal,fila,columna,caratulaVentas,width)
	Definir i,j, ancho Como Entero
	ancho = maximaCantidadDigitos(matrizFinal)
	imprimirImagen(width," ",caratulaVentas,8,2,1)
	renglonSuperior(6,ancho,columna)
	para i = 0 Hasta 6 Hacer
		inicioRenglonIntermedio(5)
		Para j = 0 Hasta columna-1 Hacer			
			centrarSinSaltar(ancho," ",matrizFinal[i,j])
		FinPara
		finRenglonIntermedio()
		renglonInferior(5,ancho,columna)
	FinPara
	Escribir ""
FinSubProceso

Funcion longitudMax = maximaCantidadDigitos(matriz)
	Definir longitudMax, longitudElemento Como Entero
	Definir i Como Caracter
	longitudMax = 0
	Para cada i en matriz Hacer
		longitudElemento = Longitud(i)
		si longitudElemento > longitudMax Entonces
			longitudMax = longitudElemento
		FinSi
	FinPara
FinFuncion

SubProceso armarTablaFinal(matrizFinal, matrizDatos)
	Definir i,j Como Entero
	para i = 1 Hasta 11 Hacer
		Para j = 1 Hasta 7 Hacer			
			matrizFinal[i,j] = ConvertirATexto(matrizDatos[i-1,j-1])
		FinPara
	FinPara
FinSubProceso

Funcion retorno = recotarDecimales(matrizDatos,i,j)
	Definir retorno, parteDecimal  Como Real
	Definir parteEntera, enteroAux Como Entero
	parteEntera = trunc(matrizDatos[i,j])
	parteDecimal = matrizDatos[i,j] - parteEntera
	enteroAux = trunc(parteDecimal*1000)
	parteDecimal = enteroAux/1000
	retorno = parteEntera + parteDecimal
FinSubProceso

SubProceso generarDatosAleatorios(matrizDatos)
	Definir i,j Como Entero
	para i = 0 Hasta 10 Hacer
		Para j = 0 Hasta 6 Hacer			
			Si i < 4 Y j < 5 Entonces
				matrizDatos[i,j] = Aleatorio(20,100)
				matrizDatos[4,5] = matrizDatos[4,5] + matrizDatos[i,j]
				matrizDatos[4,j] = (matrizDatos[4,j] + matrizDatos[i,j])
				matrizDatos[i,5] = (matrizDatos[i,5] + matrizDatos[i,j]) 
			SiNo
				Si i == 6 Y j < 5 Entonces
					matrizDatos[i,j] = Aleatorio(70,100)
				FinSi
			FinSi
		FinPara
	FinPara
	matrizDatos[6,5] = matrizDatos[6,0] + matrizDatos[6,1] + matrizDatos[6,2] + matrizDatos[6,3] + matrizDatos[6,4] 
	para i = 0 Hasta 10 Hacer
		Para j = 0 Hasta 6 Hacer			
			Si i < 4 Y j < 5 Entonces
				matrizDatos[i,6] = (matrizDatos[i,5] * 100 / matrizDatos[4,5])
				matrizDatos[i,6] = recotarDecimales(matrizDatos,i,6)
				matrizDatos[5,j] = (matrizDatos[4,j] * 100 / matrizDatos[4,5])
				matrizDatos[5,j] = recotarDecimales(matrizDatos,5,j) 
			SiNo
				Si i > 6 Y j < 6 Entonces
					matrizDatos[i,j] = matrizDatos[i-7,j] * 100 / matrizDatos[6,j] 
					matrizDatos[i,j] = recotarDecimales(matrizDatos,i,j)
				FinSi
			FinSi
		FinPara
	FinPara
	matrizDatos[4,6] = matrizDatos[0,6] + matrizDatos[1,6] + matrizDatos[2,6] + matrizDatos[3,6]
	matrizDatos[5,5] = matrizDatos[5,0] + matrizDatos[5,1] + matrizDatos[5,2] + matrizDatos[5,3] + matrizDatos[5,4]
FinSubProceso

SubProceso inicializarMatrizCeros(matrizDatos)
	Definir i,j Como Entero
	para i = 0 Hasta 10 Hacer
		Para j = 0 Hasta 6 Hacer			
			matrizDatos[i,j] = 0
		FinPara
	FinPara
FinSubProceso

SubProceso pedirNombreVendedores(matrizFinal,caratulaVendedores,width)
	Definir i Como Entero
	Definir nombre Como Caracter
	Borrar Pantalla
	imprimirImagen(width," ",caratulaVendedores,5,2,1)
	Escribir "Ingrese nombre de 4 vendedores para obtener informacion de ventas"
	Para i = 1 Hasta 4 Hacer
		Escribir Sin Saltar "Ingrese el nombre del " i " vendedor"
		Hacer
			Leer nombre
			Si Longitud(nombre) > 10 Entonces
				imprimir "ERROR: el nombre debe tener menos de 10 caracteres"
			FinSi
		Mientras Que Longitud(nombre) > 10
		matrizFinal[i,0] = nombre
	FinPara
	Para i = 1 Hasta 3 Hacer
		Escribir ""
	FinPara
	centrar(width," ", "<<<<PRESIONE UNA TECLA>>>>")
	Esperar Tecla
	Borrar Pantalla
FinSubProceso

SubProceso centrar (ancho,caracterRelleno,elementoACentrar)
	Definir i, espaciosLaterales Como entero
	Definir rellenoIzq, rellenoDer Como Caracter
	rellenoIzq = ""
	rellenoDer = ""
	espaciosLaterales = redon((ancho - Longitud(elementoACentrar))/2)
	Para i = 1 Hasta espaciosLaterales Hacer
		rellenoIzq = rellenoIzq + caracterRelleno
		rellenoDer = rellenoDer + caracterRelleno
	FinPara
	elementoACentrar = rellenoIzq + elementoACentrar + rellenoDer
	Escribir elementoACentrar
FinSubProceso

SubProceso centrarSinSaltar(ancho,caracterRelleno,elementoACentrar)
	Definir i, espaciosLaterales Como entero
	Definir rellenoIzq, rellenoDer Como Caracter
	rellenoIzq = ""
	rellenoDer = ""
	espaciosLaterales = ancho - Longitud(elementoACentrar)
	Si espaciosLaterales == 1 Entonces
		rellenoDer = caracterRelleno
	FinSi
	Si espaciosLaterales > 1 Entonces
		Si espaciosLaterales % 2 == 0 Entonces
			espaciosLaterales = (ancho - Longitud(elementoACentrar))/2
			Para i = 1 Hasta espaciosLaterales Hacer
				rellenoIzq = rellenoIzq + caracterRelleno
				rellenoDer = rellenoDer + caracterRelleno
			FinPara
		SiNo
			Si espaciosLaterales % 2 == 1 Entonces
				espaciosLaterales = redon((ancho - Longitud(elementoACentrar))/2)
				Para i = 1 Hasta espaciosLaterales Hacer
					rellenoIzq = rellenoIzq + caracterRelleno
				FinPara
				Para i = 1 Hasta espaciosLaterales - 1 Hacer
					rellenoDer = rellenoDer + caracterRelleno
				FinPara
			FinSi
		FinSi
	FinSi
	elementoACentrar = rellenoIzq + elementoACentrar + rellenoDer
	Escribir Sin Saltar elementoACentrar
FinSubProceso

SubProceso imprimirImagen(ancho,caracterRelleno,imagen,dimensionImagen,espacioArriba,espacioAbajo)
	Definir i Como Entero
	Para i = 1 Hasta espacioArriba Hacer
		Escribir ""
	FinPara
	Para i = 0 Hasta dimensionImagen-1 Hacer
		centrar(ancho,caracterRelleno,imagen[i])
	FinPara
	Para i = 0 Hasta espacioAbajo Hacer
		Escribir ""
	FinPara
FinSubProceso

SubProceso caratulaPresentacion(logo,width)
	Escribir "<<<<MAXIMIZAR TERMINAL Y PRESIONAR UNA TECLA>>>>"
	Esperar Tecla
	Borrar Pantalla
	banerLogo(logo)
	imprimirImagen(width," ",logo,9,15,15)
	Esperar 1500 Milisegundos
	centrarSinSaltar(width," ", "<<<<PRESIONE UNA TECLA>>>>")
	Esperar Tecla
	Borrar Pantalla
FinSubProceso

SubProceso titulosFilasColumnasPrincipales(matrizFinal)
	matrizFinal[0,1]  = "Zona Centro"
	matrizFinal[0,2]  = "Zona Norte"
	matrizFinal[0,3]  = "Zona Este"
	matrizFinal[0,4]  = "Zona Sur"
	matrizFinal[0,5]  = "Zona Oeste"
	matrizFinal[0,6]  = "Total Vendedor"
	matrizFinal[0,7]  = "Total Ventas [%]"
	matrizFinal[0,0]  = "Ventas\Zona"
	matrizFinal[5,0]  = "Total Ventas"
	matrizFinal[6,0]  = "Total Zona [%]"
	matrizFinal[7,0]  = "Ventas Esperadas"
	matrizFinal[8,0]  = "Rendimiento[%] " + matrizFinal[1,0]
	matrizFinal[9,0]  = "Rendimiento[%] " + matrizFinal[2,0]
	matrizFinal[10,0] = "Rendimiento[%] " + matrizFinal[3,0]
	matrizFinal[11,0] = "Rendimiento[%] " + matrizFinal[4,0]
FinSubProceso

SubProceso banerRendimientoPorVentas(caratulaRendimiento)
	caratulaRendimiento[0] = " _____                _ _           _            _              _       __      __            _          _                                  ______                 "
	caratulaRendimiento[1] = "|  __ \              | (_)         (_)          | |            | |      \ \    / /           | |        | |                                |___  /                 "
	caratulaRendimiento[2] = "| |__) |___ _ __   __| |_ _ __ ___  _  ___ _ __ | |_ ___     __| | ___   \ \  / /__ _ __   __| | ___  __| | ___  _ __   _ __   ___  _ __      / / ___  _ __   __ _ "
	caratulaRendimiento[3] = "|  _  // _ \ ´_ \ / _` | | ´_ ` _ \| |/ _ \ ´  \| __/ _ \   / _` |/ _ \   \ \/ / _ \ ´_ \ / _` |/ _ \/ _` |/ _ \| ´__| | ´_ \ / _ \| ´__|    / / / _ \| ´_ \ / _` |"
	caratulaRendimiento[4] = "| | \ \  __/ | | | (_| | | | | | | | |  __/ | | | || (_) | | (_| |  __/    \  /  __/ | | | (_| |  __/ (_| | (_) | |    | |_) | (_) | |      / /_| (_) | | | | (_| |"
	caratulaRendimiento[5] = "|_|  \_\___|_| |_|\__,_|_|_| |_| |_|_|\___|_| |_|\__\___/   \__,_|\___|     \/ \___|_| |_|\__,_|\___|\__,_|\___/|_|    | .__/ \___/|_|     /_____\___/|_| |_|\__,_|"
	caratulaRendimiento[6] = "                                                                                                                       | |                                         "
	caratulaRendimiento[7] = "                                                                                                                       |_|                                         "
FinSubProceso

SubProceso banerVentasPorZona(caratulaVentas)
	caratulaVentas[0] = "__      __        _                  _       __      __            _          _                                 ______                 "
	caratulaVentas[1] = "\ \    / /       | |                | |      \ \    / /           | |        | |                               |___  /                 "
	caratulaVentas[2] = " \ \  / /__ _ __ | |_ __ _ ___    __| | ___   \ \  / /__ _ __   __| | ___  __| | ___  _ __   _ __   ___  _ __     / / ___  _ __   __ _ "
	caratulaVentas[3] = "  \ \/ / _ \ ´_ \| __/ _` / __|  / _` |/ _ \   \ \/ / _ \ ´_ \ / _` |/ _ \/ _` |/ _ \| ´__| | ´_ \ / _ \| ´__|   / / / _ \| ´_ \ / _` |"
	caratulaVentas[4] = "   \  /  __/ | | | || (_| \__ \ | (_| |  __/    \  /  __/ | | | (_| |  __/ (_| | (_) | |    | |_) | (_) | |     / /_| (_) | | | | (_| |"
	caratulaVentas[5] = "    \/ \___|_| |_|\__\__,_|___/  \__,_|\___|     \/ \___|_| |_|\__,_|\___|\__,_|\___/|_|    | .__/ \___/|_|    /_____\___/|_| |_|\__,_|"
	caratulaVentas[6] = "                                                                                            | |                                        "
	caratulaVentas[7] = "                                                                                            |_|                                        "
FinSubProceso

SubProceso banerBaseDeDatosVendedores(caratulaVendedores)
	caratulaVendedores[0] = " ____                       _        ____        _                  _       __     __             _          _                     "
	caratulaVendedores[1] = "| __ )  __ _ ___  ___    __| | ___  |  _ \  __ _| |_ ___  ___    __| | ___  \ \   / /__ _ __   __| | ___  __| | ___  _ __ ___  ___ "
	caratulaVendedores[2] = "|  _ \ / _` / __|/ _ \  / _` |/ _ \ | | | |/ _` | __/ _ \/ __|  / _` |/ _ \  \ \ / / _ \  _ \ / _` |/ _ \/ _` |/ _ \|  __/ _ \/ __|" 
	caratulaVendedores[3] = "| |_) | (_| \__ \  __/ | (_| |  __/ | |_| | (_| | || (_) \__ \ | (_| |  __/   \ V /  __/ | | | (_| |  __/ (_| | (_) | | |  __/\__ \"
	caratulaVendedores[4] = "|____/ \__,_|___/\___|  \__,_|\___| |____/ \__,_|\__\___/|___/  \__,_|\___|    \_/ \___|_| |_|\__,_|\___|\__,_|\___/|_|  \___||___/"
FinSubProceso

SubProceso banerLogo(logo)
	logo[0] = " ______     ______________________________________________________________   _________"
	logo[1] = "|      \   |    _________________________________________________________/  /________/"
	logo[2] = "|       \  |   |                                                                      "
	logo[3] = "|        \ |   |     ________    _______     _______      ___      _______   _______  "
	logo[4] = "|   |\    \|   |    |    ____|  /   ____|   /   ____|    /   \    |    ___| |    ___| "
	logo[5] = "|   | \        |    |   |____  |   (___    /   /        / __  \   |   |___  |   |___  "
	logo[6] = "|   |  \       |    |    ____|  \___   \  (   (        / /__\  \  |    ___| |    ___| "
	logo[7] = "|   |   \      |    |   |____    ___)   |  \   \____  |  ____   | |   |     |   |___  "
	logo[8] = "|___|    \_____|    |________|  |______/    \_______| |_|    |__| |___|     |_______| "
FinSubProceso