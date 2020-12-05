require_relative './trabajador'
class Mantenimiento < Trabajador
	attr_reader :tipo
	def initialize(codigoTrabajador,nombreCompleto,edad,dni,fechaNacimiento,puestoTrabajo,sueldo,mesContrato,anioContrato,tipo)
		
		super(codigoTrabajador,nombreCompleto,edad,dni,fechaNacimiento,puestoTrabajo,sueldo,mesContrato,anioContrato)
		@tipo = tipo
	end

	def calcularSueldo
		super
	end

	def mostrarDatos
		super + [tipo]
	end

end