require_relative './recursos'
class Vacuna < Recurso
	def initialize(codigo,mesCaducidad,anioCaducidad,cantidad,tipo,lote,precioCosto)
		super(codigo,mesCaducidad,anioCaducidad,cantidad,tipo,lote,precioCosto)
	end

	def mostrarDatos
		super
	end
end