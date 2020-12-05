class VistaEntrada

	def mostrarMenuPrincipal
		system('cls')
		puts "MENÚ PRINCIPAL"
		puts "1. Registrar Trabajador"
		puts "2. Registrar Recurso"
		puts "3. Reportes"
		puts "4. Salir del Programa"
		seleccion = gets.chomp.to_i
		return seleccion
	end
	def despedida
		puts "Hasta luego. Que tenga buen día."
		system('pause')
	end
	def mostrarMenuReportes
		system('cls')
		puts "MENU REPORTES"
		puts "1. Listrar trabajadores"
		puts "2. Cantidad de trabajadores de mantenimiento"
		puts "3. Cantidad de trabajadores Marzo - Diciembre"
		puts "4. Sueldos mensuales Trabajadores Marzo - Diciembre"
		puts "5. Mostrar totalidad de Sueldos"
		puts "6. Listar todas las áreas"
		puts "7. Mostrar total de vacunas COVID"
		puts "8. Mostrar total de vacunas"
		puts "9. Mostrar costo vacuna covid por lote"
		puts "10. Mostrar cantidad de vacunas vencidas"
		puts "11. Mostrar detalle de vacunas vencidas"
		puts "12. Salir al menu principal"
		seleccion = gets.chomp.to_i
		return seleccion
	end
	def mostrarFormularioTrabajador
		system('cls')
		puts "Elija la opción deseada"
		puts "1. Registrar Mantenimiento"
		puts "2. Registrar Enfermeria"
		puts "3. Registrar MÉDICO"
		puts "4. Volver Al Menu Principal"
		seleccion = gets.chomp.to_i
		return seleccion
	end

	def mostrarFormularioRecurso
			system('cls')
			puts "Elija la opción deseada"
			puts "1. Registrar Vacuna"
			puts "2. Registrar PruebaCovid"
			puts "3. Registrar Medicamento"
			puts "4. Volver Al Menu Principal"
			seleccion = gets.chomp.to_i
			return seleccion
	end

	def mostrarFormularioMantenimiento()
		system('cls')
		puts "TRABAJADOR MANTENIMIETO"
		puts "Codigo"
		codigo = gets.chomp
		puts "Nombres"
		nombres = gets.chomp
		puts "Edad"
		edad = Integer(gets.chomp)
		puts "DNI"
		dni = gets.chomp
		puts "Fecha de nacimiento - ejemplo 20/10/1950"
		fechaNacimiento = gets.chomp
		puts "Puesto de trabajo"
		puesto = gets.chomp
		puts "Sueldo"
		sueldo = Integer(gets.chomp)
		puts "Mes inicio de contrato - ejemplo ENERO"
		mesInicio = gets.chomp
		puts "Año inicio de contrato - ejemplo 1998"
		anioInicio = Integer(gets.chomp)
		puts "Carrera"
		tipo = gets.chomp
		puts "Usuario Registrado"
		system('pause')
		return [codigo,nombres,edad,dni,fechaNacimiento,puesto,sueldo,mesInicio,anioInicio,tipo]
	end

	def mostrarFormularioEnfermeria()
		system('cls')
		puts "TRABAJADOR ENFERMERIA"
		puts "Codigo"
		codigo = gets.chomp
		puts "Nombres"
		nombres = gets.chomp
		puts "Edad"
		edad = Integer(gets.chomp)
		puts "DNI"
		dni = gets.chomp
		puts "Fecha de nacimiento - ejemplo 20/10/1950"
		fechaNacimiento = gets.chomp
		puts "Puesto de trabajo"
		puesto = gets.chomp
		puts "Sueldo"
		sueldo = Integer(gets.chomp)
		puts "Mes inicio de contrato - ejemplo ENERO"
		mesInicio = gets.chomp
		puts "Año inicio de contrato - ejemplo 1998"
		anioInicio = Integer(gets.chomp)
		puts "Usuario Registrado"
		system('pause')
		return [codigo,nombres,edad,dni,fechaNacimiento,puesto,sueldo,mesInicio,anioInicio]
	end

	def mostrarFormularioMedico()
		system('cls')
		puts "TRABAJADOR MEDICO"
		puts "Codigo"
		codigo = gets.chomp
		puts "Nombres"
		nombres = gets.chomp
		puts "Edad"
		edad = Integer(gets.chomp)
		if edad < 25
			raise StandardError.new "ERROR. La edad debe ser superior a 25 años"
		end
		puts "DNI"
		dni = gets.chomp
		puts "Fecha de nacimiento - ejemplo 20/10/1950"
		fechaNacimiento = gets.chomp
		puts "Puesto de trabajo"
		puesto = gets.chomp
		puts "Sueldo"
		sueldo = Integer(gets.chomp)
		puts "Mes inicio de contrato - ejemplo ENERO"
		mesInicio = gets.chomp
		puts "Año inicio de contrato - ejemplo 1998"
		anioInicio = Integer(gets.chomp)
		puts "Carrera"
		especialidad = gets.chomp
		puts "Usuario Registrado"
		system('pause')
		return [codigo,nombres,edad,dni,fechaNacimiento,puesto,sueldo,mesInicio,anioInicio,especialidad]
	end

	def mostrarFormularioVacuna()
		system('cls')
		puts "RECURSO VACUNA"
		puts "Codigo"
		codigo = gets.chomp
		puts "MES DE CADUCIDAD"
		mesCaducidad = Integer(gets.chomp)
		puts "AÑO DE CADUCIDAD"
		anioCaducidad = Integer(gets.chomp)
		puts "CANTIDAD"
		cantidad = Integer(gets.chomp)
		puts "TIPO"
		tipo = gets.chomp
		puts "LOTE"
		lote = Integer(gets.chomp)
		puts "PRECIO COSTO"
		precioCosto = Integer(gets.chomp)
		puts "RECURSO REGISTADO"
		system('pause')
		return [codigo,mesCaducidad,anioCaducidad,cantidad,tipo,lote,precioCosto]
	end

	def mostrarFormularioPrueba()
		system('cls')
		puts "RECURSO PRUEBA"
		puts "Codigo"
		codigo = gets.chomp
		puts "MES DE CADUCIDAD"
		mesCaducidad = Integer(gets.chomp)
		puts "AÑO DE CADUCIDAD"
		anioCaducidad = Integer(gets.chomp)
		puts "CANTIDAD"
		cantidad = Integer(gets.chomp)
		puts "TIPO"
		tipo = gets.chomp
		puts "LOTE"
		lote = Integer(gets.chomp)
		puts "PRECIO COSTO"
		precioCosto = Integer(gets.chomp)
		puts "RECURSO REGISTADO"
		system('pause')
		return [codigo,mesCaducidad,anioCaducidad,cantidad,tipo,lote,precioCosto]
	end

	def mostrarFormularioMedicamento()
			system('cls')
		puts "RECURSO MEDICAMENTO"
		puts "Codigo"
		codigo = gets.chomp
		puts "MES DE CADUCIDAD"
		mesCaducidad = Integer(gets.chomp)
		puts "AÑO DE CADUCIDAD"
		anioCaducidad = Integer(gets.chomp)
		puts "CANTIDAD"
		cantidad = Integer(gets.chomp)
		puts "TIPO"
		tipo = gets.chomp
		puts "LOTE"
		lote = Integer(gets.chomp)
		puts "PRECIO COSTO"
		precioCosto = Integer(gets.chomp)
		puts "RECURSO REGISTADO"
		system('pause')
		return [codigo,mesCaducidad,anioCaducidad,cantidad,tipo,lote,precioCosto]
	end
end