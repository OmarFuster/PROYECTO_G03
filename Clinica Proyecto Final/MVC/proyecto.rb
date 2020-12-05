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
		return arreglo
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
			case i.mesContrato
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
		[codigoTrabajador,nombreCompleto,edad,dni,fechaNacimiento,puestoTrabajo,calcularSueldo]
	end
end

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
		super
	end

end

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
		super
	end
end

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
end

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
		datos = "\nCODIGO: #{codigo}"
		datos+= "\nMES CADUCIDAD: #{mesCaducidad}"
		datos+= "\nAÑO CADUCIDAD: #{anioCaducidad}"
		datos+= "\nCANTIDAD: #{cantidad}"
		datos+= "\nTIPO: #{tipo}"
		datos+= "\nCOSTOLOTE: #{precioCosto}"
	end
end

class Vacuna < Recurso
	def initialize(codigo,mesCaducidad,anioCaducidad,cantidad,tipo,lote,precioCosto)
		super(codigo,mesCaducidad,anioCaducidad,cantidad,tipo,lote,precioCosto)
	end

	def mostrarDatos
		super
	end
end

class PruebaCovid < Recurso
	def initialize(codigo,mesCaducidad,anioCaducidad,cantidad,tipo,lote,precioCosto)
		super(codigo,mesCaducidad,anioCaducidad,cantidad,tipo,lote,precioCosto)
	end

	def mostrarDatos
		super
	end
end

class Medicamento < Recurso
	def initialize(codigo,mesCaducidad,anioCaducidad,cantidad,tipo,lote,precioCosto)
		super(codigo,mesCaducidad,anioCaducidad,cantidad,tipo,lote,precioCosto)
	end

	def mostrarDatos
		super
	end
end

class TrabajadorFactory
	def self.crearTrabajador(tipo,*arg)
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

class RecursoFactory
	def self.crearRecurso(tipo,*arg)
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

class Controlador
	attr_reader :vistaEntrada, :vistaSalida, :modelo
	def initialize(vistaEntrada,vistaSalida,modelo)
		@vistaEntrada = vistaEntrada
		@vistaSalida = vistaSalida
		@modelo = modelo
	end

	def crearTrabajador(tipo)
		case tipo
		when "MANTENIMIENTO"
			datos = vistaEntrada.mostrarFormularioMantenimiento
		when "ENFERMERIA"
			datos = vistaEntrada.mostrarFormularioEnfermeria
		when "MEDICO"
			datos = vistaEntrada.mostrarFormularioMedico
		end
		trabajador = TrabajadorFactory.crearTrabajador(tipo,datos)
		modelo.registrarTrabajador(trabajador)
	end

	def crearRecurso(tipo)
		case tipo
		when "VACUNA"
			datos = vistaEntrada.mostrarFormularioVacuna
		when "PRUEBA COVID"
			datos = vistaEntrada.mostrarFormularioPrueba
		when "MEDICAMENTO"
			datos = vistaEntrada.mostrarFormularioMedicamento
		end
		recurso = RecursoFactory.crearRecurso(tipo,datos)
		modelo.registrarRecurso(recurso)
	end

	def listarTodosLosTrabajadores
		lista = modelo.listarTrabajadores
		for i in lista
			datos = i.mostrarDatos
			if i.is_a? Mantenimiento
				vistaSalida.mostrarDatosTrabajadoresMantenimiento(datos)
			elsif i.is_a? Enfermeria
				vistaSalida.mostrarDatosTrabajadoresEnfermeria(datos)
			elsif i.is_a? Medico
				vistaSalida.mostrarDatosTrabajadoresMedico(datos)
			end
		end
	end
end
clinica = Clinica.new("CAYETANO HEREDIA")
farmacia = Farmacia.new("FAR-001")
			
mantenimiento1 = TrabajadorFactory.crearTrabajador("MANTENIMIENTO","MAN-001","OMAR FUSTER",27,"48059808","18/10/93","Administrador TI",8000,"ENERO","2020","SISTEMAS")
mantenimiento2 = TrabajadorFactory.crearTrabajador("MANTENIMIENTO","MAN-001","FUSTER ILDEFONSO",30,"12546987","20/10/96","Vigilancia",4000,"JUNIO","2020","SEGURIDAD")

tecnico1 = TrabajadorFactory.crearTrabajador("ENFERMERIA","MAN-001","FRANCISCO PIZARRO",20,"66666666","05/07/2020","Seguridad Ocupacional",3000,"ENERO","2020")
tecnico2 = TrabajadorFactory.crearTrabajador("ENFERMERIA","MAN-001","ALANNIS ILDEFONSO",20,"88888888","11/11/2000","Administracion",2500,"MARZO","2020")

medico1 = TrabajadorFactory.crearTrabajador("MEDICO","MED-001","RUTH SIFUENTES",45,"7777777","02/11/71","Cardiología",10000,"MAYO","2020","EMERGENCIA")
medico2 = TrabajadorFactory.crearTrabajador("MEDICO","MED-001","CARLOS CAMAYO",70,"12546987","05/10/50","Cuidados Intensivos",7000,"ENERO","2020","REHABILITACION")


vacunaCovidLote1 = RecursoFactory.crearRecurso("VACUNA","VC-1",8,2021,5000,"covid19",1,350000)
vacunaCovidLote2 = RecursoFactory.crearRecurso("VACUNA","VC-1",12,2021,8000,"covid19",2,560000)
vacunaCovidLote3 = RecursoFactory.crearRecurso("VACUNA","VC-1",3,2022,7000,"covid19",3,490000)
vacunaNeumococoLote1 = RecursoFactory.crearRecurso("VACUNA","VN-1",10,2020,300,"neumococo",1254,10000)
vacunaNeumococoLote2 = RecursoFactory.crearRecurso("VACUNA","VN-1",10,2021,100,"neumococo",2546,3330)
vacunaNeumococoLote3 = RecursoFactory.crearRecurso("VACUNA","VN-1",8,2012,200,"neumococo",5220,6660)
vacunaDifteriaLote1 = RecursoFactory.crearRecurso("VACUNA","VD-1",6,2020,200,"difteria",1111,5000)
vacunaDifteriaLote2 = RecursoFactory.crearRecurso("VACUNA","VD-1",12,2011,100,"difteria",2222,2500)
vacunaDifteriaLote3 = RecursoFactory.crearRecurso("VACUNA","VD-1",10,2021,400,"difteria",3333,10000)

pruebaRapida1 = RecursoFactory.crearRecurso("PRUEBA COVID","PC-1",10,2021,1000,"rapida",100,35000)
pruebaRapida2 = RecursoFactory.crearRecurso("PRUEBA COVID","PC-1",4,2021,1000,"rapida",80,35000)
pruebaRapida3 = RecursoFactory.crearRecurso("PRUEBA COVID","PC-1",3,2021,1000,"rapida",150,35000)
pruebaMolecular1 = RecursoFactory.crearRecurso("PRUEBA COVID","PM-1",7,2022,100,"molecular",100,30000)
pruebaMolecular2 = RecursoFactory.crearRecurso("PRUEBA COVID","PM-1",12,2022,100,"molecular",200,30000)
pruebaMolecular3 = RecursoFactory.crearRecurso("PRUEBA COVID","PM-1",1,2023,100,"molecular",300,30000)

ivermectina1 = RecursoFactory.crearRecurso("MEDICAMENTO","IVE-1",4,2021,2000,"preventivo",10,20000)
ivermectina2 = RecursoFactory.crearRecurso("MEDICAMENTO","IVE-1",3,2021,1000,"preventivo",11,10000)
ivermectina3 = RecursoFactory.crearRecurso("MEDICAMENTO","IVE-1",1,2021,500,"preventivo",12,5000)
dexametasona1 = RecursoFactory.crearRecurso("MEDICAMENTO","DEX-1",5,2021,200,"preventivo",10,1000)
dexametasona2 = RecursoFactory.crearRecurso("MEDICAMENTO","DEX-1",7,2021,200,"preventivo",11,1000)
dexametasona3 = RecursoFactory.crearRecurso("MEDICAMENTO","DEX-1",9,2021,200,"preventivo",12,1000)

clinica.registrarTrabajador(mantenimiento1)
clinica.registrarTrabajador(mantenimiento2)
clinica.registrarTrabajador(tecnico1)
clinica.registrarTrabajador(tecnico2)
clinica.registrarTrabajador(medico1)
clinica.registrarTrabajador(medico2)

clinica.registrarArea(farmacia)

farmacia.registrarRecurso(vacunaCovidLote1)
farmacia.registrarRecurso(vacunaCovidLote2)
farmacia.registrarRecurso(vacunaCovidLote3)
farmacia.registrarRecurso(vacunaNeumococoLote1)
farmacia.registrarRecurso(vacunaNeumococoLote2)
farmacia.registrarRecurso(vacunaNeumococoLote3)
farmacia.registrarRecurso(vacunaDifteriaLote1)
farmacia.registrarRecurso(vacunaDifteriaLote2)
farmacia.registrarRecurso(vacunaDifteriaLote3)
farmacia.registrarRecurso(pruebaRapida1)
farmacia.registrarRecurso(pruebaRapida2)
farmacia.registrarRecurso(pruebaRapida3)
farmacia.registrarRecurso(pruebaMolecular1)
farmacia.registrarRecurso(pruebaMolecular2)
farmacia.registrarRecurso(pruebaMolecular3)
farmacia.registrarRecurso(ivermectina1)
farmacia.registrarRecurso(ivermectina2)
farmacia.registrarRecurso(ivermectina3)
farmacia.registrarRecurso(dexametasona1)
farmacia.registrarRecurso(dexametasona2)
farmacia.registrarRecurso(dexametasona3)

arreglo = clinica.mostrarCantidadTrabajadoresMantenimiento
for i in arreglo
	puts "\n#{i.mostrarDatos}"
end
puts 
#puts clinica.calcularSumaSueldoGeneral
puts
#puts clinica.contarTrabajadoresMarzoDiciembre.count
puts
#puts clinica.calcularSueldoTrabajadoresMarzoDiciembre
puts
#puts clinica.mostrarTotalVacunasCovid
puts
#puts clinica.mostrarStockDeVacunas
puts
#puts clinica.mostrarCostoPruebasCovid
puts
#puts clinica.mostrarCantidadVacunasVencidas
puts
vencidas =  clinica.mostrarDetalleDeVacunasVencidas
#for i in vencidas
#	puts "#{i.mostrarDatos}"
#end
#puts

seleccion = 0
while seleccion != 9
	system('cls')
	puts "OPCIONES:"
	puts "1.Mostrar la suma de sueldos"
	puts "2.Mostrar cantidad de trabajadores desde Marzo a Diciembre"
	puts "3.Mostrar Pago total de Los Trabajadores desde Marzo a Diciembre"
	puts "4.Mostrar el total de Vacunas Covid Adquiridas"
	puts "5.Mostrar Stock de Vacunas"
	puts "6.Mostrar el costo total por todos los lotes de vacuna Covid-19"
	puts "7.Mostrar cantidad de vacunas vencidas"
	puts "8.Mostrar detalle de las vacuans vencidas"
	puts "9.Salir"
	puts "INGRESE LA OPCION DESEADA:"
	seleccion = gets.chomp.to_i
	if seleccion == 1
		puts clinica.calcularSumaSueldoGeneral
		system('pause')
	elsif seleccion == 2
		puts clinica.contarTrabajadoresMarzoDiciembre.count
		system('pause')
	elsif seleccion == 3
		puts clinica.calcularSueldoTrabajadoresMarzoDiciembre
		system('pause')
	elsif seleccion == 4
		puts clinica.mostrarTotalVacunasCovid
		system('pause')
	elsif seleccion == 5
		puts clinica.mostrarStockDeVacunas
		system('pause')
	elsif seleccion == 6
		puts clinica.mostrarCostoPruebasCovid
		system('pause')
	elsif seleccion == 7
		puts clinica.mostrarCantidadVacunasVencidas
		system('pause')
	elsif seleccion == 8
		for i in vencidas
			puts "#{i.mostrarDatos}"
		end
		system('pause')
	end
end