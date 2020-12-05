require_relative './MODELO/clinica'
require_relative './CONTROLADOR/controlador'
require_relative './VISTA/vistaEntrada'
require_relative './VISTA/vistaSalida'
require_relative './MODELO/farmacia'

vistaEntrada = VistaEntrada.new()
vistaSalida = VistaSalida.new()
clinica = Clinica.new("CAYETANO")
farmacia = Farmacia.new("FAR-001")
controlador = Controlador.new(vistaEntrada,vistaSalida,clinica,farmacia)
controlador.registrarAreas(farmacia)

farmacia2 = Farmacia.new("FAR-002")
controlador.registrarAreas(farmacia2)
=begin
	controlador.registrarAreas(farmacia)
	controlador.crearTrabajador("MANTENIMIENTO")
	controlador.crearTrabajador("ENFERMERIA")
	controlador.crearTrabajador("MEDICO")
	controlador.crearRecurso("VACUNA")
	controlador.crearRecurso("PRUEBA COVID")
	controlador.crearRecurso("MEDICAMENTO")
	controlador.listarTodosLosTrabajadores
	controlador.mostrarTotalDeVacunasCovid
	controlador.mostrarCantidadDeTrabajadoresEnMantenimiento
	controlador.listarTodasLasAreas
	controlador.mostrarSumaTotalSueldos
	controlador.mostrarCantidadContratoMarzoDiciembre
	controlador.mostrarPagoMarzoDiciembre
	controlador.mostrarStockVacunas
	controlador.mostrarCostoVacunaCovid
	controlador.mostrarCantidadVacunasVencias
	controlador.mostrarDetalleDeLasVacunasVencidas
=end

# controlador.crearTrabajador("MANTENIMIENTO")
# controlador.listarTodosLosTrabajadores
# controlador.mostrarCantidadDeTrabajadoresEnMantenimiento

controlador.llamarMenu