VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Usuario"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Description = "Soporta entidades financieras usadas en los ingresos"
Attribute VB_Ext_KEY = "SavedWithClassBuilder" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
Option Explicit
'variables locales que contienen valores de propiedad
Private mvarCodigo As Long 'copia local
Private mvarNombre As String 'copia local
Private mvarPasswd As String 'copia local
Private mvarPasswdPROPIO As String 'copia local
Private mvarlogin As String 'copia local
Private mvarDirFich As String 'copia local
Private mvarNivel As Long 'copia local
Private mvarCadenaConexion As String
Private mvarPC As String

Private mvarId As Long 'copia local

Private mvarSkin As String

Private mvarFiltroAsientos As Integer 'filtro de asientos
Private mvarFiltroFactCli As Integer 'filtro de facturas de clientes
Private mvarFiltroFactPro As Integer 'filtro de facturas de proveedores
Private mvarFiltroPresup As Integer 'filtro de presupuestos
Private mvarFiltroCobros As Integer 'filtro de cobros
Private mvarFiltroPagos As Integer 'filtro de pagos
Private mvarFiltroGastosFijos As Integer 'filtro de gastos fijos

Private mvarFormulariosConPermisosEspeciales As String

Private RS As ADODB.Recordset
Private Sql As String
Private Mens As String

Public Property Let Nivel(ByVal vData As Long)
'se usa cuando se asigna un valor a una propiedad, en el lado izquierdo de la asignación.
'Syntax: X.Nivel = 5
    mvarNivel = vData
End Property


Public Property Get Nivel() As Long
'se usa cuando se asigna un valor a una propiedad, en el lado derecho de la asignación.
'Syntax: Debug.Print X.Nivel
    Nivel = mvarNivel
End Property

Public Property Let Passwd(ByVal vData As String)
Attribute Passwd.VB_Description = "Password de usuario"
'se usa cuando se asigna un valor a una propiedad, en el lado izquierdo de la asignación.
'Syntax: X.Passwd = 5
    mvarPasswd = vData
End Property


Public Property Get Passwd() As String
'se usa cuando se asigna un valor a una propiedad, en el lado derecho de la asignación.
'Syntax: Debug.Print X.Passwd
    Passwd = mvarPasswd
End Property



Public Property Let CadenaConexion(ByVal vData As String)
'se usa cuando se asigna un valor a una propiedad, en el lado izquierdo de la asignación.
'Syntax: X.Passwd = 5
    mvarCadenaConexion = vData
End Property


Public Property Get CadenaConexion() As String
'se usa cuando se asigna un valor a una propiedad, en el lado derecho de la asignación.
'Syntax: Debug.Print X.Passwd
    CadenaConexion = mvarCadenaConexion
End Property



Public Property Let PasswdPROPIO(ByVal vData As String)
'se usa cuando se asigna un valor a una propiedad, en el lado izquierdo de la asignación.
'Syntax: X.Passwd = 5
    mvarPasswdPROPIO = vData
End Property


Public Property Get PasswdPROPIO() As String
'se usa cuando se asigna un valor a una propiedad, en el lado derecho de la asignación.
'Syntax: Debug.Print X.Passwd
    PasswdPROPIO = mvarPasswdPROPIO
End Property


Public Property Let Nombre(ByVal vData As String)
Attribute Nombre.VB_Description = "Nombre del grupo de formas de cobro."
'se usa cuando se asigna un valor a una propiedad, en el lado izquierdo de la asignación.
'Syntax: X.Nombre= 5
    mvarNombre = vData
End Property


Public Property Get Nombre() As String
'se usa cuando se asigna un valor a una propiedad, en el lado derecho de la asignación.
'Syntax: Debug.Print X.Nombre
    Nombre = mvarNombre
End Property

'---------------------------
'Dirfich
Public Property Let Dirfich(ByVal vData As String)
'se usa cuando se asigna un valor a una propiedad, en el lado izquierdo de la asignación.
'Syntax: X.Nombre= 5
    mvarDirFich = vData
End Property


Public Property Get Dirfich() As String
'se usa cuando se asigna un valor a una propiedad, en el lado derecho de la asignación.
'Syntax: Debug.Print X.Nombre
    Dirfich = mvarDirFich
End Property

'Login
Public Property Let Login(ByVal vData As String)
'se usa cuando se asigna un valor a una propiedad, en el lado izquierdo de la asignación.
'Syntax: X.Nombre= 5
    mvarlogin = vData
End Property


Public Property Get Login() As String
'se usa cuando se asigna un valor a una propiedad, en el lado derecho de la asignación.
'Syntax: Debug.Print X.Nombre
    Login = mvarlogin
End Property



Public Property Let Codigo(ByVal vData As Long)
Attribute Codigo.VB_Description = "Código del grupo de formas de cobro"
'se usa cuando se asigna un valor a una propiedad, en el lado izquierdo de la asignación.
'Syntax: X.Codigo= 5
    mvarCodigo = vData
End Property


Public Property Get Codigo() As Long
'se usa cuando se asigna un valor a una propiedad, en el lado derecho de la asignación.
'Syntax: Debug.Print X.Codigo
    Codigo = mvarCodigo
End Property

Public Property Get PC() As String
'se usa cuando se asigna un valor a una propiedad, en el lado derecho de la asignación.
'Syntax: Debug.Print X.Codigo
    PC = mvarPC
End Property


Public Property Let id(ByVal vData As Long)
'se usa cuando se asigna un valor a una propiedad, en el lado izquierdo de la asignación.
'Syntax: X.Codigo= 5
    mvarId = vData
End Property


Public Property Get id() As Long
'se usa cuando se asigna un valor a una propiedad, en el lado derecho de la asignación.
'Syntax: Debug.Print X.Codigo
    id = mvarId
End Property


Public Property Let Skin(ByVal vData As String)
'se usa cuando se asigna un valor a una propiedad, en el lado izquierdo de la asignación.
'Syntax: X.Nombre= 5
    mvarSkin = vData
End Property


Public Property Get Skin() As String
'se usa cuando se asigna un valor a una propiedad, en el lado derecho de la asignación.
'Syntax: Debug.Print X.Nombre
    Skin = mvarSkin
End Property


Public Property Let FiltroAsientos(ByVal vData As Integer)
'se usa cuando se asigna un valor a una propiedad, en el lado izquierdo de la asignación.
'Syntax: X.Nivel = 5
    mvarFiltroAsientos = vData
End Property


Public Property Get FiltroAsientos() As Integer
'se usa cuando se asigna un valor a una propiedad, en el lado derecho de la asignación.
'Syntax: Debug.Print X.Nivel
    FiltroAsientos = mvarFiltroAsientos
End Property


Public Property Let FiltroFactCli(ByVal vData As Integer)
'se usa cuando se asigna un valor a una propiedad, en el lado izquierdo de la asignación.
'Syntax: X.Nivel = 5
    mvarFiltroFactCli = vData
End Property


Public Property Get FiltroFactCli() As Integer
'se usa cuando se asigna un valor a una propiedad, en el lado derecho de la asignación.
'Syntax: Debug.Print X.Nivel
    FiltroFactCli = mvarFiltroFactCli
End Property


Public Property Let FiltroFactPro(ByVal vData As Integer)
'se usa cuando se asigna un valor a una propiedad, en el lado izquierdo de la asignación.
'Syntax: X.Nivel = 5
    mvarFiltroFactPro = vData
End Property


Public Property Get FiltroFactPro() As Integer
'se usa cuando se asigna un valor a una propiedad, en el lado derecho de la asignación.
'Syntax: Debug.Print X.Nivel
    FiltroFactPro = mvarFiltroFactPro
End Property


Public Property Let FiltroPresup(ByVal vData As Integer)
'se usa cuando se asigna un valor a una propiedad, en el lado izquierdo de la asignación.
'Syntax: X.Nivel = 5
    mvarFiltroPresup = vData
End Property


Public Property Get FiltroPresup() As Integer
'se usa cuando se asigna un valor a una propiedad, en el lado derecho de la asignación.
'Syntax: Debug.Print X.Nivel
    FiltroPresup = mvarFiltroPresup
End Property


Public Property Let FiltroCobros(ByVal vData As Integer)
'se usa cuando se asigna un valor a una propiedad, en el lado izquierdo de la asignación.
'Syntax: X.Nivel = 5
    mvarFiltroCobros = vData
End Property


Public Property Get FiltroCobros() As Integer
'se usa cuando se asigna un valor a una propiedad, en el lado derecho de la asignación.
'Syntax: Debug.Print X.Nivel
    FiltroCobros = mvarFiltroCobros
End Property



Public Property Let FiltroPagos(ByVal vData As Integer)
'se usa cuando se asigna un valor a una propiedad, en el lado izquierdo de la asignación.
'Syntax: X.Nivel = 5
    mvarFiltroPagos = vData
End Property


Public Property Get FiltroPagos() As Integer
'se usa cuando se asigna un valor a una propiedad, en el lado derecho de la asignación.
'Syntax: Debug.Print X.Nivel
    FiltroPagos = mvarFiltroPagos
End Property


Public Property Let FiltroGastosFijos(ByVal vData As Integer)
'se usa cuando se asigna un valor a una propiedad, en el lado izquierdo de la asignación.
'Syntax: X.Nivel = 5
    mvarFiltroGastosFijos = vData
End Property


Public Property Get FiltroGastosFijos() As Integer
'se usa cuando se asigna un valor a una propiedad, en el lado derecho de la asignación.
'Syntax: Debug.Print X.Nivel
    FiltroGastosFijos = mvarFiltroGastosFijos
End Property




Public Function Leer(ByVal vlogin As String) As Byte
Attribute Leer.VB_Description = "Lee un grupo de formas de cobro en función del código que se le ha pasado. Si devuelve 0 se ha conseguido leer el dato."
Dim I As Long
    On Error GoTo Err1
    Sql = "SELECT * FROM Usuarios.Usuarios WHERE login = '" & vlogin & "'"
    Set RS = New ADODB.Recordset
    RS.Open Sql, Conn, adOpenForwardOnly, adLockOptimistic, adCmdText
    
    If RS.EOF Then
        Leer = 1
    Else
        I = DevuelveAumentoPC
        mvarCodigo = Val(DBLet(RS!codusu)) + I
        mvarNombre = DBLet(RS!nomusu)
        mvarNivel = Val(DBLet(RS!nivelariges))
        mvarPasswdPROPIO = RS!passwordpropio
        mvarlogin = vlogin
        mvarCadenaConexion = ""  'Se le asigna en tiempo de diseńo
        
        mvarId = Val(DBLet(RS!codusu))
        mvarSkin = DBLet(RS!Skin)
        
        
        Leer = 0
    End If
    RS.Close
    Exit Function
Err1:
    Mens = "Error: " & Err.Number & " : " & Err.Description
    MsgBox Mens, vbExclamation
    RS.Close
    Leer = 1
End Function

Public Sub LeerFiltros(aplicacion As String, idPrg As Integer)
Dim RS As ADODB.Recordset
' 301 = asientos


    On Error GoTo Err1
    
    
    mvarFiltroAsientos = 0
    mvarFiltroFactCli = 0
    mvarFiltroFactPro = 0
    mvarFiltroPresup = 0
    mvarFiltroCobros = 0
    mvarFiltroPagos = 0
    mvarFiltroGastosFijos = 0
    
    
    Sql = "SELECT codigo, filtro FROM menus_usuarios WHERE aplicacion = " & DBSet(aplicacion, "T") & " and codusu = " & DBSet(mvarId, "N")
    Sql = Sql & " and codigo = " & DBSet(idPrg, "N")
    
    Set RS = New ADODB.Recordset
    RS.Open Sql, Conn, adOpenForwardOnly, adLockOptimistic, adCmdText
    
    If Not RS.EOF Then
        Select Case idPrg
            Case 301
                mvarFiltroAsientos = DBLet(RS!FILTRO, "N")
            Case 401
                mvarFiltroFactCli = DBLet(RS!FILTRO, "N")
            Case 404
                mvarFiltroFactPro = DBLet(RS!FILTRO, "N")
            Case 1101
                mvarFiltroPresup = DBLet(RS!FILTRO, "N")
            Case 601
                mvarFiltroCobros = DBLet(RS!FILTRO, "N")
            Case 801
                mvarFiltroPagos = DBLet(RS!FILTRO, "N")
            Case 807
                mvarFiltroGastosFijos = DBLet(RS!FILTRO, "N")
        End Select
    End If
    
    RS.Close
    Set RS = Nothing
    
    Exit Sub
Err1:
    Mens = "Error: " & Err.Number & " : " & Err.Description
    MsgBox Mens, vbExclamation
    RS.Close

End Sub

Public Function PermiteOpcion(aplicacion As String, idPrg As Integer, Opcion As Integer) As Boolean

    On Error GoTo ePermiteOpcion
    
    PermiteOpcion = False

    Sql = "SELECT codigo, "
    Select Case Opcion
        Case vbOpcionVer
            Sql = Sql & "ver "
        Case vbOpcionCrearEliminar
            Sql = Sql & "creareliminar "
        Case vbOpcionModificar
            Sql = Sql & "modificar "
        Case vbOpcionImprimir
            Sql = Sql & "imprimir "
        Case vbOpcionEspecial
            Sql = Sql & "especial "
    
    End Select
    Sql = Sql & " FROM menus_usuarios WHERE aplicacion = " & DBSet(aplicacion, "T") & " and codusu = " & DBSet(mvarId, "N")
    Sql = Sql & " and codigo = " & DBSet(idPrg, "N")
    
    Set RS = New ADODB.Recordset
    RS.Open Sql, Conn, adOpenForwardOnly, adLockOptimistic, adCmdText
    
    If Not RS.EOF Then
        PermiteOpcion = (DBLet(RS.Fields(1).Value) = 1)
    End If
    Exit Function

ePermiteOpcion:
    MuestraError Err.Description, "Permite Opcion", Err.Description
End Function



Public Sub ActualizarFiltro(aplicacion As String, idPrg As Integer, Valor As Integer)
    On Error GoTo Err1


    Sql = "update menus_usuarios set filtro = " & DBSet(Valor, "N")
    Sql = Sql & "  WHERE aplicacion = " & DBSet(aplicacion, "T") & " and codusu = " & DBSet(mvarId, "N")
    Sql = Sql & " and codigo = " & DBSet(idPrg, "N")
    
    Conn.Execute Sql
    
    Select Case idPrg
        Case 301 ' asientos
            mvarFiltroAsientos = Valor
        Case 401 ' facturas de clientes
            mvarFiltroFactCli = Valor
        Case 404 ' facturas de proveedores
            mvarFiltroFactPro = Valor
        Case 1101 ' presupuestos
            mvarFiltroPresup = Valor
        Case 601 ' cartera de cobros
            mvarFiltroCobros = Valor
        Case 801 ' cartera de pagos
            mvarFiltroPagos = Valor
        Case 807 ' cartera de pagos gastos fijos
            mvarFiltroGastosFijos = Valor
    End Select
    
    Exit Sub

Err1:
    Mens = "Error: " & Err.Number & " : " & Err.Description
    MsgBox Mens, vbExclamation
End Sub

Private Function DevuelveAumentoPC() As Long

DevuelveAumentoPC = 32000
mvarPC = ComputerName
Sql = DevuelveDesdeBD("codpc", "Usuarios.pcs", "nompc", mvarPC, "T")
If Sql <> "" Then DevuelveAumentoPC = Val(Sql) * 1000

End Function





'Todos los usuarios tienen un nivel (0,1,2,3)
'Pero para un formulario(opcion dentro de form)
'podemos especificar permisos especiales
'Es decir, podemos tener un usario NORMAL y prohibirle elimninar en ctas
'
'Nos guardaremos una variable interna con los formularios que tienen permisos especiales para este usuario
' Cuando entre a un FORM, si tiene entrada, veremos que permisos tiene prohibidos
Public Sub CargaPermisosEspeciales()
Dim RN As ADODB.Recordset

    mvarFormulariosConPermisosEspeciales = "Select formulario from usuarios.usariospermisos WHERE aplicacion='arigestion'"
    mvarFormulariosConPermisosEspeciales = mvarFormulariosConPermisosEspeciales & " AND codusu = " & vUsu.Codigo
    mvarFormulariosConPermisosEspeciales = mvarFormulariosConPermisosEspeciales & " GROUP BY formulario"
    Set RN = New ADODB.Recordset
    '`codusu`,`aplicacion`,`formulario`,opcion
    RN.Open mvarFormulariosConPermisosEspeciales, Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
    mvarFormulariosConPermisosEspeciales = ""
    While Not RN.EOF
        mvarFormulariosConPermisosEspeciales = mvarFormulariosConPermisosEspeciales & RN!formulario & "|"
        RN.MoveNext
    Wend
    RN.Close
    Set RN = Nothing
    If mvarFormulariosConPermisosEspeciales <> "" Then mvarFormulariosConPermisosEspeciales = "|" & mvarFormulariosConPermisosEspeciales
    
End Sub



Public Sub ActualizarSkin()
    Sql = "UPDATE usuarios.usuarios SET skin=" & mvarSkin & " WHERE codusu = " & vUsu.id
    
    EjecutarSQL Sql
End Sub

