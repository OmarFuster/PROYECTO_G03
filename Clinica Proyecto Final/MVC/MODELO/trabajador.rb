class Trabajador
	attr_reader :codigoTrabajador, :nombreCompleto, :edad, :dni, :fechaNacimiento, :puestoTrabajo, :sueldo, :mesContrato, :anioContrato
	def initialize(codigoTrabajador,nombreCompleto,edad,dni,fechaNacimiento,puestoTrabajo,sueldo,mesContrato,anioContrato)
		
		@codigoTrabajador = codigoTrabajador
		@nombreCompleto = nombreCompleto
		@edad = edad
		@dni = dni
		@fechaNacimiento = fechaNacimiento
		@puestoTrabajo = puestoTrabajo
		@sueldo = sueldo
		@mesContrato = mesContrato
		@anioContrato = anioContrato

	end

	def calcularSueldo
		sueldo
	end

	def mostrarDatos
		[codigoTrabajador,nombreCompleto,edad,dni,fechaNacimiento,puestoTrabajo,calcularSueldo,mesContrato,anioContrato]
	end
end
