require_relative './vacuna'
require_relative './pruebaCovid'
require_relative './medicamento'
require_relative './recursos'
class Farmacia 
	attr_reader :codigoFarmacia, :arregloRecursos
	def initialize(codigoFarmacia)
		@codigoFarmacia = codigoFarmacia
		@arregloRecursos = []
	end

	def registrarRecurso(recurso)
		arregloRecursos.push(recurso)
	end

	def calcularCantidadVacunaCovid
		suma = 0
		for i in arregloRecursos
			if (i.is_a? Vacuna) && i.tipo == "covid19"
				suma+= i.cantidad				
			end
		end
		return suma
	end

	def calcularStockVacuna
		suma = 0
		for i in arregloRecursos
			if (i.is_a? Vacuna)
				suma+= i.cantidad
			end
		end
		return suma
	end

	def calcularSumaPrecioPruebasCovid
		suma = 0
		for i in arregloRecursos
			if (i.is_a? PruebaCovid)
				suma+= i.precioCosto
			end
		end
		return suma
	end

	def calcularCantidadVacunasVencidas
		suma = 0
		for i in arregloRecursos
			if (i.is_a? Vacuna) && i.anioCaducidad  < 2020
				suma += i.cantidad				
			end
		end
		return suma
	end

	def mostrarVacunasVencidas
		arreglo = []
		for i in arregloRecursos
			if (i.is_a? Vacuna) && i.anioCaducidad  < 2020
				arreglo.push(i)		
			end
		end
		return arreglo
	end

	def mostrarDatos
		[codigoFarmacia]
	end
end