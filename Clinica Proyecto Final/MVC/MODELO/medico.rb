require_relative './trabajador'
class Medico < Trabajador
	attr_reader :especialidad
	def initialize(codigoTrabajador,nombreCompleto,edad,dni,fechaNacimiento,puestoTrabajo,sueldo,mesContrato,anioContrato,especialidad)
		
		super(codigoTrabajador,nombreCompleto,edad,dni,fechaNacimiento,puestoTrabajo,sueldo,mesContrato,anioContrato)
		@especialidad = especialidad
	end

	def calcularSueldo
		super
	end

	def mostrarDatos
		super + [especialidad]
	end
end