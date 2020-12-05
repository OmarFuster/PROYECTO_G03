require_relative './trabajador'
class Enfermeria < Trabajador
	def initialize(codigoTrabajador,nombreCompleto,edad,dni,fechaNacimiento,puestoTrabajo,sueldo,mesContrato,anioContrato)
		super(codigoTrabajador,nombreCompleto,edad,dni,fechaNacimiento,puestoTrabajo,sueldo,mesContrato,anioContrato)
	end

	def calcularSueldo
		super
	end

	def mostrarDatos
		super
	end
end