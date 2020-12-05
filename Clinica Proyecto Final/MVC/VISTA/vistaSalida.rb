class VistaSalida
	def mostrarDatosTrabajadoresMantenimiento(datos)
				
		puts "="*70
		puts "           TRABAJADOR MANTENIMIENTO               "
		puts "="*70
		puts "CÓDIGO: #{datos[0]}"
		puts "NOMBRES: #{datos[1]}"
		puts "EDAD: #{datos[2]}"
		puts "DNI: #{datos[3]}"
		puts "FECHA NACIMIENTO: #{datos[4]}"
		puts "PUESTO TRABAJO: #{datos[5]}"
		puts "SUELDO: S/.#{datos[6]}"
		puts
		
	end

	def mostrarDatosTrabajadoresEnfermeria(datos)
		
		puts "="*70
		puts "           TRABAJADOR ENFERMERÍA              "
		puts "="*70
		puts "CÓDIGO: #{datos[0]}"
		puts "NOMBRES: #{datos[1]}"
		puts "EDAD: #{datos[2]}"
		puts "DNI: #{datos[3]}"
		puts "FECHA NACIMIENTO: #{datos[4]}"
		puts "PUESTO TRABAJO: #{datos[5]}"
		puts "SUELDO: S/.#{datos[6]}"
		puts
		
	end

	def mostrarDatosTrabajadoresMedico(datos)
		
		puts "="*70
		puts "          TRABAJADOR MÉDICO			"
		puts "="*70
		puts "CÓDIGO: #{datos[0]}"
		puts "NOMBRES: #{datos[1]}"
		puts "EDAD: #{datos[2]}"
		puts "DNI: #{datos[3]}"
		puts "FECHA NACIMIENTO: #{datos[4]}"
		puts "PUESTO TRABAJO: #{datos[5]}"
		puts "SUELDO: S/.#{datos[6]}"
		puts
	
	end

	def mostrarLaCantidadDeTrabajadoresEnMantenimiento(datos)
		system('cls')
		puts "="*70
		puts "          CANTIDAD DE TRABAJADORES EN MANTENIMIENTO             "
		puts "="*70
		puts "LA CANTIDAD DE TRABAJADORES QUE LABORAN EN MANTENIMIENTO ES: #{datos}"
		puts
		system('pause')
	end

	def mostrarLaSumaSueldoGeneral(datos)
		system('cls')
		puts "="*70
		puts "          SUMA TOTAL DE SUELDOS DE TODOS LOS TRABAJADORES           "
		puts "="*70
		puts "LA SUMA TOTAL EN LA CLÍNICA DE TODOS LOS TRABAJADORES ES: S/.#{datos}"
		puts
		system('pause')
	end

	def mostrarCantidadTrabajadoesDeMarzoDiciembre(datos)
		system('cls')
		puts "="*70
		puts "          TRABAJADORES CONTRATADOS DESDE MARZO A DICIMBRE           "
		puts "="*70
		puts "LA CANTIDAD DE TRABAJADORES CONTRATADOS EN EL PERIODO 
DE MARZO A DICIEMBRE ES: #{datos}"
		puts
		system('pause')
	end

	def mostrarPagoTotalTrabMarzoDiciembre(cantidad)
		system('cls')
		puts "="*70
		puts "            PAGO TOTAL POR LOS MESES DE MARZO HASTA DICIEMBRE           "
		puts "="*70
		puts "LA SUMA TOTAL QUE PAGÓ LA EMPRESA A LOS TRABAJADORES CONTRATADOS 
EN EL PERIODO DE MARZO A DICIMEBRE ES: S/.#{cantidad}"
		puts
		system('pause')
	end

	def mostrarStockVacunaCovid(cantidad)
		system('cls')
		puts "="*70
		puts "            STOCK DE VACUNAS PARA COVI-19           "
		puts "="*70
		puts "EL STOCK DE VACUNAS PARA EL TRATAMIENTO DEL COVID-19 ES: #{cantidad}"
		puts
		system('pause')
	end

	def listarAreas(datos)
		
		puts "="*70
		puts "			ÁREAS			"
		puts "="*70
		puts "CODIGO: #{datos[0]}"
		puts
		
	end

	def mostrarCantidadVacunasCovid(datos)
		system('cls')
		puts "="*70
		puts "         	 ÁREA FARMACIA            "
		puts "="*70
		puts "LA CANTIDAD DE VACUNA COVID ES: #{datos}"
		puts
		system('pause')
	end

	def mostrarStockVacunas(cantidad)
		system('cls')
		puts "="*70
		puts "         	 ÁREA FARMACIA            "
		puts "="*70
		puts "LA CANTIDAD DE VACUNAS QUE SE REGISTRAN ACTUALMENTE ES: #{cantidad}"
		puts
		system('pause')
	end

	def mostrarPrecioCostoVacunaCovid(costo)
		system('cls')
		puts "="*70
		puts "         	 ÁREA FARMACIA            "
		puts "="*70
		puts "EL COSTO POR LOTE DE VACUNA COVID ES: S/.#{costo}"
		puts
		system('pause')
	end

	def mostrarNumeroVacunasVencidas(vencidas)
		system('cls')
		puts "="*70
		puts "         	 ÁREA FARMACIA            "
		puts "="*70
		puts "LA CANTIDAD DE VACUNAS VENCIDAS EN GENERAL ES: #{vencidas}"
		puts
		system('pause')
	end

	def mostrarDetalleDeVacVencidas(datos)
		
		puts "="*70
		puts "          ÁREA FARMACIA			"
		puts " DETALLE DE LAS VACUNAS VENCIDAS POR LOTE "
		puts "="*70
		puts "CÓDIGO: #{datos[0]}"
		puts "MES CADUCIDAD: #{datos[1]}"
		puts "AÑO CADUCIDAD: #{datos[2]}"
		puts "CANTIDAD: #{datos[3]}"
		puts "TIPO: #{datos[4]}"
		puts "LOTE: #{datos[5]}"
		puts "COSTO: S/.#{datos[6]}"
		puts
		
	end

	


=begin
	def mostrarFormularioVacuna(datos)
		puts "VACUNA"
		puts "CÓDIGO: #{datos[0]}"
		puts "MES DE CADUCIDAD: #{datos[1]}"
		puts "AÑO DE CADUCIDAD: #{datos[2]}"
		puts "CANTIDAD: #{datos[3]}"
		puts "TIPO DE VACUNA: #{datos[4]}"
		puts "LOTE: #{datos[5]}"
		puts "PRECIO DE LOTE: #{datos[6]}"
	end

	def mostrarFormularioPrueba(datos)
		puts "VACUNA"
		puts "CÓDIGO: #{datos[0]}"
		puts "MES DE CADUCIDAD: #{datos[1]}"
		puts "AÑO DE CADUCIDAD: #{datos[2]}"
		puts "CANTIDAD: #{datos[3]}"
		puts "TIPO DE VACUNA: #{datos[4]}"
		puts "LOTE: #{datos[5]}"
		puts "PRECIO DE LOTE: #{datos[6]}"
	end

	def mostrarFormularioMedicamento(datos)
		puts "VACUNA"
		puts "CÓDIGO: #{datos[0]}"
		puts "MES DE CADUCIDAD: #{datos[1]}"
		puts "AÑO DE CADUCIDAD: #{datos[2]}"
		puts "CANTIDAD: #{datos[3]}"
		puts "TIPO DE VACUNA: #{datos[4]}"
		puts "LOTE: #{datos[5]}"
		puts "PRECIO DE LOTE: #{datos[6]}"	
	end
=end

end