require_relative './trabajador'
require_relative './mantenimiento'
require_relative './enfermeria'
require_relative './medico'
require_relative './farmacia'
require_relative './vacuna'
require_relative './pruebacovid'
require_relative './medicamento'
require_relative './recursos'
class Clinica
	attr_reader :nombre, :arregloTrabajadores, :arregloAreas
	def initialize(nombre)
		@nombre = nombre
		@arregloTrabajadores = []
		@arregloAreas = []
	end

	def registrarTrabajador(trabajador)
		arregloTrabajadores.push(trabajador)
	end

	def registrarArea(area)
		arregloAreas.push(area)	
	end

	def listarTrabajadores
		 arregloTrabajadores
	end

	def listarArea
		arregloAreas
	end

	def mostrarCantidadTrabajadoresMantenimiento
		arreglo = []
		for i in arregloTrabajadores
			if i.is_a? Mantenimiento
				arreglo.push(i)
			end
		end
		return arreglo.count
	end

	def calcularSumaSueldoGeneral
		suma = 0
		for i in arregloTrabajadores
			suma += i.calcularSueldo
		end
		return suma
	end
	
	def contarTrabajadoresMarzoDiciembre
		arreglo = []
		for i in arregloTrabajadores
			case i.mesContrato.upcase
			when "MARZO"
				arreglo.push(i)
			when "ABRIL"
				arreglo.push(i)
			when "MAYO"
				arreglo.push(i)
			when "JUNIO"
				arreglo.push(i)
		    when "JULIO"
		    	arreglo.push(i)
			when "AGOSTO"
				arreglo.push(i)
			when "SEPTIEMBRE"
				arreglo.push(i)
			when "OCTUBRE"
				arreglo.push(i)
			when "NOVIEMBRE"
				arreglo.push(i)
			when "DICIEMBRE"
				arreglo.push(i)										
			end
		end
		return arreglo
	end

	def calcularSueldoTrabajadoresMarzoDiciembre
		arreglo = contarTrabajadoresMarzoDiciembre
		suma = 0
		for i in arreglo
			suma+= i.calcularSueldo
		end
		return suma*10 #meses desde marzo hasta diciembre
	end

	def mostrarTotalVacunasCovid
		suma = 0
		for i in arregloAreas
			suma += i.calcularCantidadVacunaCovid
		end
		return suma
	end

	def mostrarStockDeVacunas
		suma = 0
		for i in arregloAreas
			suma += i.calcularStockVacuna
		end
		return suma
	end

	def mostrarCostoPruebasCovid
		suma = 0
		for i in arregloAreas
			suma+= i.calcularSumaPrecioPruebasCovid
		end
		return suma
	end

	def mostrarCantidadVacunasVencidas
		suma = 0
		for i in arregloAreas
			suma+= i.calcularCantidadVacunasVencidas
		end
		return suma
	end

	def mostrarDetalleDeVacunasVencidas
		arreglo = []
		for i in arregloAreas
			 arreglo+=i.mostrarVacunasVencidas
		end
		return arreglo
	end

end