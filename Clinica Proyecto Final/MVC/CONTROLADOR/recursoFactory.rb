require_relative '../MODELO/vacuna'
require_relative '../MODELO/pruebaCovid'
require_relative '../MODELO/medicamento'
class RecursoFactory
	def self.crearRecurso(tipo,arg)
		case tipo
		when "VACUNA"
			Vacuna.new(arg[0],arg[1],arg[2],arg[3],arg[4],arg[5],arg[6])
		when "PRUEBA COVID"
			PruebaCovid.new(arg[0],arg[1],arg[2],arg[3],arg[4],arg[5],arg[6])
		when "MEDICAMENTO"
			Medicamento.new(arg[0],arg[1],arg[2],arg[3],arg[4],arg[5],arg[6])
		end
	end
end