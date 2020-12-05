require_relative '../MODELO/mantenimiento'
require_relative '../MODELO/enfermeria'
require_relative '../MODELO/medico'
class TrabajadorFactory
	def self.crearTrabajador(tipo,arg)
		case tipo
		when "MANTENIMIENTO"
			Mantenimiento.new(arg[0],arg[1],arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9])
		when "ENFERMERIA"
			Enfermeria.new(arg[0],arg[1],arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8])
		when "MEDICO"
			Medico.new(arg[0],arg[1],arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9])
		end
		
	end
end