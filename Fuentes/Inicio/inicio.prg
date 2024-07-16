********************************************************************************
* Declaración de Variables.                                                    *
********************************************************************************
* Variables para la configuración de colores.                                  *
*------------------------------------------------------------------------------*
PUBLIC giBase
*giBase='\\GUSTAVO-NETBOOK\DatosRemoto'
giBase='.\DATOS'
PUBLIC giColorFondoPrincipal
PUBLIC giColPagActiva
PUBLIC giColPagInActiva
PUBLIC giColFondoEti, giColLetraEti
PUBLIC giColMenu
PUBLIC gnRojo, gnVerde
********************************************************************************
* Mostrador                                                                    *
*------------------------------------------------------------------------------*
* Mostrador -> Buscador.                                                       *
*------------------------------------------------------------------------------*
*  PUBLIC gnBuscIdMarca AS Number
*  PUBLIC gnBuscIdProveedor AS Number 
*  PUBLIC gnBuscIdRubro AS Number
*  PUBLIC gnBuscProdNombre AS String
*------------------------------------------------------------------------------*
* Mostrador -> Ventas.                                                         *
*------------------------------------------------------------------------------*
* - Para Buscar los artículos a Facturar.                                      *
*------------------------------------------------------------------------------*
*  PUBLIC gnVentIdProveedor AS Number 
*  PUBLIC gnVentIdMarca AS Number
*  PUBLIC gnVentIdRubro AS Number
*  PUBLIC gnVentProdNombre AS String

*- Porcentajes de ganancia. ---------------------------------------------------*
*- Porcentaje aplicado a pagos Contado.----------------------------------------*
PUBLIC giPorcContado

*-Porcentaje aplicado a Cuenta Corriente.--------------------------------------*
PUBLIC giPorcCC

*-Porcentaje aplicado a Otras Financiaciones. ---------------------------------*
PUBLIC giPorcOF

*-Porcentaje aplicado cuando se trae la lista de precios en Mostrador->Ventas -*
PUBLIC gnPorcGanan

*------------------------------------------------------------------------------*
* Proveedores->Listas de Pecios.                                               *
*------------------------------------------------------------------------------*
*  PUBLIC gnListasPrecIdProveedor AS Number
*  PUBLIC gnListasPrecIdMarca AS Number
*------------------------------------------------------------------------------*
* Clientes -> Facturas.                                                        *
*------------------------------------------------------------------------------*
PUBLIC gnClienteFactIdCliente AS Number
********************************************************************************
* COMIENZO                                                                     *
********************************************************************************
*-Inicializaciones.------------------------------------------------------------*
SeteoColores()
Seteos()
SeteosPorcentajes()

Application.Visible=.F.

DO FORM Fuentes\MarcoTrabajo\Principal
READ EVENTS
********************************************************************************
* FIN                                                                          *
********************************************************************************

********************************************************************************
* PROCEDIMIENTOS                                                               *
********************************************************************************
* Realiza seteos de ambiente.                                                  *
*------------------------------------------------------------------------------*
PROCEDURE Seteos()  
  *- No modificar ninguno de estos valores porque todo el funcionamiento del --*
  *- se basa en ellos. --------------------------------------------------------*
  SET DELETED ON
  SET POINT TO ','
  SET CENTURY ON
  SET DATE DMY
  SET HOURS TO 24
  SET EXACT ON
ENDPROC
*------------------------------------------------------------------------------*
* Configura variables golobales de Colores.                                    *
*------------------------------------------------------------------------------*
PROCEDURE SeteoColores()  
  giColorFondoPrincipal=RGB(202, 225, 250)
  giColPagActiva=RGB(150, 150, 150)
  giColPagInActiva=RGB(240, 240, 240)
  giColFondoEti=giColPagActiva
  giColLetraEti=RGB(0, 0, 128)
  giColMenu=giColPagActiva
  gnRojo=RGB(255, 0, 0)
  gnVerde=RGB(0, 255, 0)
ENDPROC
*------------------------------------------------------------------------------*
* Configura variables golobales Porcentajes de Ganancia.                       *
*------------------------------------------------------------------------------*
PROCEDURE SeteosPorcentajes()  
  giPorcContado=40
  giPorcCC=60
  giPorcOF=80
  *----------------------------------------------------------------------------*
  * Cuando arranca el sistema el porcentaje a usar en Mostrador -> Ventas es   *
  *el de Contado.                                                              *
  *----------------------------------------------------------------------------*
  gnPorcGanan=giPorcContado
ENDPROC
