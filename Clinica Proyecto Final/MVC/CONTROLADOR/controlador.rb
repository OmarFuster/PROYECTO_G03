require_relative './recursoFactory'
require_relative './trabajadorFactory'
require_relative '../MODELO/clinica'
require_relative '../VISTA/vistaEntrada'
require_relative '../VISTA/vistaSalida'
require_relative '../MODELO/farmacia'

class Controlador
	attr_reader :vistaEntrada, :vistaSalida, :clinica, :farmacia
	def initialize(vistaEntrada,vistaSalida,clinica,farmacia)
		@vistaEntrada = vistaEntrada
		@vistaSalida = vistaSalida
		@clinica = clinica
		@farmacia = farmacia
	end

	def registrarAreas(area)
		clinica.registrarArea(area)
	end

	def crearTrabajador(tipo)
		begin 
			case tipo
			when "MANTENIMIENTO"
				datos = vistaEntrada.mostrarFormularioMantenimiento
			when "ENFERMERIA"
				datos = vistaEntrada.mostrarFormularioEnfermeria
			when "MEDICO"
				datos = vistaEntrada.mostrarFormularioMedico
			end
			trabajador = TrabajadorFactory.crearTrabajador(tipo,datos)
			clinica.registrarTrabajador(trabajador)
		rescue ArgumentError
			puts "Error. Ingrese un número"
			system('pause')
			crearTrabajador(tipo)
		rescue StandardError => error
			puts error
			system('pause')
			crearTrabajador(tipo)
		end

	end

	def crearRecurso(tipo)
		begin
		case tipo
		when "VACUNA"
			datos = vistaEntrada.mostrarFormularioVacuna
		when "PRUEBA COVID"
			datos = vistaEntrada.mostrarFormularioPrueba
		when "MEDICAMENTO"
			datos = vistaEntrada.mostrarFormularioMedicamento
		end
		recurso = RecursoFactory.crearRecurso(tipo,datos)
		farmacia.registrarRecurso(recurso)
		rescue ArgumentError
			puts "Error. Ingrese un número"
			system('pause')
			crearRecurso(tipo)
		end
	end

	def listarTodosLosTrabajadores
		lista = clinica.listarTrabajadores
		system('cls')
		for i in lista
			datos = i.mostrarDatos
			if i.is_a? Mantenimiento
				vistaSalida.mostrarDatosTrabajadoresMantenimiento(datos)
			elsif i.is_a? Enfermeria
				vistaSalida.mostrarDatosTrabajadoresEnfermeria(datos)
			elsif i.is_a? Medico
				vistaSalida.mostrarDatosTrabajadoresMedico(datos)
			end
		end
		system('pause')
	end

	def llamarMenu
		opcionGeneral = 0
		while opcionGeneral != 4
			opcionGeneral = vistaEntrada.mostrarMenuPrincipal
			case opcionGeneral
			when 1
				opcionTrabajador = vistaEntrada.mostrarFormularioTrabajador
				procesarOpcionTrabajador(opcionTrabajador)
			when 2
				opcionRecurso = vistaEntrada.mostrarFormularioRecurso
				procesarOpcionRecurso(opcionRecurso)
			when 3
				llamarMenuReportes
			when 4
				vistaEntrada.despedida
			end

		end		

	end
	def llamarMenuReportes
		while true
		opcionReportes = vistaEntrada.mostrarMenuReportes

		case opcionReportes
			when 1
				listarTodosLosTrabajadores
			when 2
				mostrarCantidadDeTrabajadoresEnMantenimiento
			when 3
				mostrarCantidadContratoMarzoDiciembre
			when 4
				mostrarPagoMarzoDiciembre
			when 5
				mostrarSumaTotalSueldos
			when 6
				listarTodasLasAreas
			when 7
				mostrarTotalDeVacunasCovid
			when 8
				mostrarStockVacunas
			when 9
				mostrarCostoVacunaCovid
			when 10
				mostrarCantidadVacunasVencidas
			when 11
				mostrarDetalleDeLasVacunasVencidas
			when 12 
				break
			end

		end
	end

	def procesarOpcionTrabajador(seleccion)
		case seleccion
		when 1
			crearTrabajador("MANTENIMIENTO")
		when 2
			crearTrabajador("ENFERMERIA")
		when 3
			crearTrabajador("MEDICO")
		when 4
			vistaEntrada.mostrarMenuPrincipal
		end	

	end

	def procesarOpcionRecurso(seleccion)
		case seleccion
		when 1
			crearRecurso("VACUNA")
		when 2
			crearRecurso("PRUEBA COVID")
		when 3
			crearRecurso("MEDICAMENTO")
		when 4
			vistaEntrada.mostrarMenuPrincipal
		end	
	end

	def mostrarTotalDeVacunasCovid
		cantidad = farmacia.calcularCantidadVacunaCovid
		vistaSalida.mostrarCantidadVacunasCovid(cantidad)
	end

	def mostrarCantidadDeTrabajadoresEnMantenimiento
		cantidad = clinica.mostrarCantidadTrabajadoresMantenimiento
		vistaSalida.mostrarLaCantidadDeTrabajadoresEnMantenimiento(cantidad)
	end

	def listarTodasLasAreas
		lista = clinica.listarArea
		system('cls')
		for i in lista
			datos = i.mostrarDatos
			if i.is_a? Farmacia
				vistaSalida.listarAreas(datos)
			end
		end
		system('pause')
	end

	def mostrarSumaTotalSueldos
		cantidad = clinica.calcularSumaSueldoGeneral
		vistaSalida.mostrarLaSumaSueldoGeneral(cantidad)
	end

	def mostrarCantidadContratoMarzoDiciembre
		cantidad = clinica.contarTrabajadoresMarzoDiciembre
		vistaSalida.mostrarCantidadTrabajadoesDeMarzoDiciembre(cantidad.count)
	end

	def mostrarPagoMarzoDiciembre
		cantidad = clinica.calcularSueldoTrabajadoresMarzoDiciembre
		vistaSalida.mostrarPagoTotalTrabMarzoDiciembre(cantidad)
	end

	def mostrarStockVacunas
		cantidad = farmacia.calcularStockVacuna
		vistaSalida.mostrarStockVacunas(cantidad)
	end

	def mostrarCostoVacunaCovid
		costo = farmacia.calcularSumaPrecioPruebasCovid
		vistaSalida.mostrarPrecioCostoVacunaCovid(costo)
	end

	def mostrarCantidadVacunasVencidas
		vencidas = farmacia.calcularCantidadVacunasVencidas
		vistaSalida.mostrarNumeroVacunasVencidas(vencidas)
	end

	def mostrarDetalleDeLasVacunasVencidas
		detalle = farmacia.mostrarVacunasVencidas
		system('cls')
		for i in detalle
			datos = i.mostrarDatos
			if i.is_a? Vacuna
				vistaSalida.mostrarDetalleDeVacVencidas(datos)
			end
		end
		system('pause')
	end
end