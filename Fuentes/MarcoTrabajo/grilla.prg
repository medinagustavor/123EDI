*------------------------------------------------------------------------------*
* Creación de una grilla desde el encabezado y columna particulares.           *
*------------------------------------------------------------------------------*
CreaEncabezadoColumna()
*CreaColumna()
*CreaGrilla()
*------------------------------------------------------------------------------*
* Crea el encabezado de una columna.                                           *
*------------------------------------------------------------------------------*
PROCEDURE CreaEncabezadoColumna()
  loencabezado=CREATEOBJECT('header')
  loencabezado.alignment=2
  loencabezado.backcolor=RGB(0,255,100)
  loencabezado.saveasclass('.\marcotrabajo\Grilla.vcx', 'Encabezado')
ENDPROC
*------------------------------------------------------------------------------*
* Crea la columna de un a grilla.                                              *
*------------------------------------------------------------------------------*
PROCEDURE CreaColumna 
    loColumn=CreateObject('column')
    loColumn.HeaderClass='Encabezado'
    loColumn.HeaderClassLibrary='.\marcotrabajo\Grilla.vcx'
    loColumn.ReadOnly=.T.
    loColumn.saveasclass('.\marcotrabajo\Grilla.vcx', 'Columna')
ENDPROC
*------------------------------------------------------------------------------*
* Crea una Grilla.                                                             *
*------------------------------------------------------------------------------*
PROCEDURE CreaGrilla
  loGrilla=CreateObject('grid')
  loGrilla.MemberClass='Columna'
  loGrilla.MemberClassLibrary='.\marcotrabajo\Grilla.vcx'
  loGrilla.Themes=.F.
  loGrilla.ColumnCount=1
  *----------------------------------------------------------------------------*
  * 3.1 Desabilita la modificación del texto de la columna.                    *
  *----------------------------------------------------------------------------*
  loGrilla.columns[1].controls[2].enabled=.F.
  loGrilla.scrollbars=2
  loGrilla.deletemark=.F.
  loGrilla.saveasclass('.\marcotrabajo\Grilla.vcx', 'Grilla')
ENDPROC