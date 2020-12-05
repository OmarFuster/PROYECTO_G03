class Recurso
	attr_reader :codigo, :mesCaducidad, :anioCaducidad, :cantidad, :tipo, :lote, :precioCosto
	def initialize(codigo,mesCaducidad,anioCaducidad,cantidad,tipo,lote,precioCosto)
		@codigo = codigo
		@mesCaducidad = mesCaducidad
		@anioCaducidad = anioCaducidad
		@cantidad = cantidad
		@tipo = tipo	
		@lote = lote
		@precioCosto = precioCosto
	end

	def mostrarDatos
		[codigo,mesCaducidad,anioCaducidad,cantidad,tipo,lote,precioCosto]
	end
end