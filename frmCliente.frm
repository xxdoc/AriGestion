VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{A8E5842E-102B-4289-9D57-3B3F5B5E15D3}#17.2#0"; "Codejock.Controls.v17.2.0.ocx"
Object = "{7CAC59E5-B703-4CCF-B326-8B956D962F27}#17.2#0"; "Codejock.ReportControl.v17.2.0.ocx"
Begin VB.Form frmCliente 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Clientes"
   ClientHeight    =   10725
   ClientLeft      =   -15
   ClientTop       =   -30
   ClientWidth     =   19320
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmCliente.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10725
   ScaleWidth      =   19320
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin XtremeReportControl.ReportControl wndReportControl 
      Height          =   3495
      Left            =   8520
      TabIndex        =   69
      Top             =   5880
      Width           =   10575
      _Version        =   1114114
      _ExtentX        =   18653
      _ExtentY        =   6165
      _StockProps     =   64
      FreezeColumnsAbs=   0   'False
   End
   Begin VB.Frame FrameAcciones 
      Height          =   615
      Left            =   8520
      TabIndex        =   87
      Top             =   9360
      Width           =   10575
      Begin VB.CommandButton cmdFactura 
         Appearance      =   0  'Flat
         Height          =   375
         Index           =   2
         Left            =   4200
         Picture         =   "frmCliente.frx":000C
         Style           =   1  'Graphical
         TabIndex        =   98
         ToolTipText     =   "Entrega documentos"
         Top             =   180
         Width           =   375
      End
      Begin VB.CommandButton cmdCobros 
         Appearance      =   0  'Flat
         Height          =   375
         Index           =   2
         Left            =   4200
         Picture         =   "frmCliente.frx":0A0E
         Style           =   1  'Graphical
         TabIndex        =   97
         ToolTipText     =   "Cambiar forma pago"
         Top             =   180
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.CommandButton cmdFactura 
         Appearance      =   0  'Flat
         Height          =   375
         Index           =   1
         Left            =   3720
         Picture         =   "frmCliente.frx":0D18
         Style           =   1  'Graphical
         TabIndex        =   94
         ToolTipText     =   "ABONO"
         Top             =   180
         Width           =   375
      End
      Begin VB.CommandButton cmdFactura 
         Appearance      =   0  'Flat
         Height          =   375
         Index           =   0
         Left            =   3240
         Picture         =   "frmCliente.frx":171A
         Style           =   1  'Graphical
         TabIndex        =   93
         ToolTipText     =   "Nueva factura"
         Top             =   180
         Width           =   375
      End
      Begin VB.CommandButton cmdNuevo 
         Appearance      =   0  'Flat
         Height          =   375
         Left            =   3240
         Picture         =   "frmCliente.frx":211C
         Style           =   1  'Graphical
         TabIndex        =   92
         ToolTipText     =   "Nuevo CRM"
         Top             =   180
         Width           =   375
      End
      Begin VB.TextBox txtTotal 
         Alignment       =   1  'Right Justify
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   8400
         Locked          =   -1  'True
         TabIndex        =   91
         Text            =   "Text3"
         Top             =   240
         Width           =   1815
      End
      Begin XtremeSuiteControls.DateTimePicker DateTimePicker1 
         Height          =   310
         Left            =   1080
         TabIndex        =   88
         Top             =   240
         Width           =   1815
         _Version        =   1114114
         _ExtentX        =   3201
         _ExtentY        =   547
         _StockProps     =   68
         Format          =   1
      End
      Begin VB.CommandButton cmdCobros 
         Appearance      =   0  'Flat
         Height          =   375
         Index           =   0
         Left            =   3240
         Picture         =   "frmCliente.frx":26A6
         Style           =   1  'Graphical
         TabIndex        =   95
         ToolTipText     =   "Compensar abonos-cobros"
         Top             =   180
         Width           =   375
      End
      Begin VB.CommandButton cmdCobros 
         Appearance      =   0  'Flat
         Height          =   375
         Index           =   1
         Left            =   3720
         Picture         =   "frmCliente.frx":8EF8
         Style           =   1  'Graphical
         TabIndex        =   96
         ToolTipText     =   "Quitar gastos"
         Top             =   180
         Width           =   375
      End
      Begin VB.Label lblTotal 
         Alignment       =   1  'Right Justify
         Caption         =   "Total"
         Height          =   255
         Left            =   7320
         TabIndex        =   90
         Top             =   240
         Width           =   975
      End
      Begin VB.Label Nombre 
         Caption         =   "Filtro"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   89
         Top             =   240
         Width           =   2025
      End
   End
   Begin VB.ComboBox Combo1 
      Height          =   360
      ItemData        =   "frmCliente.frx":9482
      Left            =   11040
      List            =   "frmCliente.frx":948F
      Style           =   2  'Dropdown List
      TabIndex        =   19
      Tag             =   "Situacion|N|N|||clientes|situclien|||"
      Top             =   3600
      Width           =   2175
   End
   Begin MSComctlLib.ListView lwlaboral 
      Height          =   1455
      Left            =   1200
      TabIndex        =   81
      Tag             =   "cuota|clientes_cuotas|"
      Top             =   6840
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   2566
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   4
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Descripcion"
         Object.Width           =   7212
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Ult. fra"
         Object.Width           =   1940
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Alignment       =   1
         SubItemIndex    =   2
         Text            =   "Importe"
         Object.Width           =   1965
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Text            =   "I"
         Object.Width           =   635
      EndProperty
   End
   Begin MSComctlLib.ListView lwFiscal 
      Height          =   1455
      Left            =   1200
      TabIndex        =   82
      Tag             =   "cuota|clientes_cuotas|"
      Top             =   8520
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   2566
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   4
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Descripcion"
         Object.Width           =   7212
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Ult. fra"
         Object.Width           =   1940
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Alignment       =   1
         SubItemIndex    =   2
         Text            =   "Importe"
         Object.Width           =   1965
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Text            =   "I"
         Object.Width           =   635
      EndProperty
   End
   Begin VB.TextBox Text1 
      Height          =   360
      Index           =   26
      Left            =   120
      MaxLength       =   50
      TabIndex        =   20
      Tag             =   "Pr|T|S|||clientes|maiclien|||"
      Text            =   "Text1"
      Top             =   4410
      Width           =   7185
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H80000018&
      Height          =   360
      Index           =   2
      Left            =   6990
      Locked          =   -1  'True
      TabIndex        =   78
      Text            =   "Text2"
      Top             =   2040
      Width           =   3795
   End
   Begin VB.TextBox Text1 
      Height          =   360
      Index           =   14
      Left            =   11040
      TabIndex        =   7
      Tag             =   "T|T|S|||clientes|tarjetatra|||"
      Text            =   "Tex"
      Top             =   2040
      Width           =   1965
   End
   Begin VB.TextBox Text1 
      Height          =   360
      Index           =   25
      Left            =   7800
      MaxLength       =   30
      TabIndex        =   11
      Tag             =   "Pr|T|S|||clientes|telmovil|||"
      Text            =   "Text1"
      Top             =   2820
      Width           =   1905
   End
   Begin VB.TextBox Text1 
      Height          =   360
      Index           =   24
      Left            =   5760
      MaxLength       =   30
      TabIndex        =   10
      Tag             =   "Pr|T|S|||clientes|telefono|||"
      Text            =   "Text1"
      Top             =   2820
      Width           =   1905
   End
   Begin VB.Frame FrameTiposDosc 
      Height          =   735
      Left            =   8520
      TabIndex        =   70
      Top             =   5040
      Width           =   10575
      Begin VB.OptionButton Option1 
         Caption         =   "Cuotas"
         Height          =   255
         Index           =   5
         Left            =   5520
         TabIndex        =   86
         Top             =   300
         Width           =   1215
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Cobros"
         Height          =   255
         Index           =   4
         Left            =   7080
         TabIndex        =   74
         Top             =   300
         Width           =   1215
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Documentos"
         Height          =   255
         Index           =   3
         Left            =   8640
         TabIndex        =   75
         Top             =   300
         Width           =   1815
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Facturas"
         Height          =   255
         Index           =   2
         Left            =   3720
         TabIndex        =   73
         Top             =   300
         Value           =   -1  'True
         Width           =   1575
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Expedientes"
         Height          =   255
         Index           =   1
         Left            =   1560
         TabIndex        =   72
         Top             =   300
         Width           =   1815
      End
      Begin VB.OptionButton Option1 
         Caption         =   "CRM"
         Height          =   255
         Index           =   0
         Left            =   360
         TabIndex        =   71
         Top             =   300
         Width           =   1095
      End
   End
   Begin VB.Frame FramelFiscal 
      Height          =   555
      Left            =   120
      TabIndex        =   67
      Top             =   8760
      Width           =   1605
      Begin MSComctlLib.Toolbar ToolbarFiscal 
         Height          =   330
         Left            =   0
         TabIndex        =   68
         Top             =   0
         Width           =   1095
         _ExtentX        =   1931
         _ExtentY        =   582
         ButtonWidth     =   609
         ButtonHeight    =   582
         Style           =   1
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   3
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Insertar"
            EndProperty
            BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Modificar"
            EndProperty
            BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Eliminar"
            EndProperty
         EndProperty
      End
   End
   Begin VB.Frame FrameLaboral 
      Height          =   555
      Left            =   120
      TabIndex        =   65
      Top             =   7080
      Width           =   1605
      Begin MSComctlLib.Toolbar Toolbarlaboral 
         Height          =   330
         Left            =   0
         TabIndex        =   66
         Top             =   0
         Width           =   1095
         _ExtentX        =   1931
         _ExtentY        =   582
         ButtonWidth     =   609
         ButtonHeight    =   582
         Style           =   1
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   3
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Insertar"
            EndProperty
            BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Modificar"
            EndProperty
            BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Eliminar"
            EndProperty
         EndProperty
      End
   End
   Begin MSComctlLib.ListView lwCuotas 
      Height          =   1455
      Left            =   1200
      TabIndex        =   59
      Tag             =   "cuota|clientes_cuotas|"
      Top             =   5160
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   2566
      View            =   3
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      FullRowSelect   =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   4
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Descripcion"
         Object.Width           =   7212
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Ult. fra"
         Object.Width           =   1940
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Alignment       =   1
         SubItemIndex    =   2
         Text            =   "Importe"
         Object.Width           =   1965
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Text            =   "I"
         Object.Width           =   635
      EndProperty
   End
   Begin VB.Frame FramCuto 
      Height          =   555
      Left            =   120
      TabIndex        =   63
      Top             =   5400
      Width           =   1245
      Begin MSComctlLib.Toolbar ToolbarCutoa 
         Height          =   330
         Left            =   0
         TabIndex        =   64
         Top             =   0
         Width           =   1095
         _ExtentX        =   1931
         _ExtentY        =   582
         ButtonWidth     =   609
         ButtonHeight    =   582
         Style           =   1
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   3
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Insertar"
            EndProperty
            BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Modificar"
            EndProperty
            BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Eliminar"
            EndProperty
         EndProperty
      End
   End
   Begin VB.TextBox Text1 
      Height          =   3465
      Index           =   15
      Left            =   13320
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   27
      Tag             =   "Licencia|T|S|||clientes|observac|||"
      Text            =   "frmCliente.frx":94AC
      Top             =   1290
      Width           =   5805
   End
   Begin VB.TextBox Text1 
      Height          =   360
      Index           =   17
      Left            =   9360
      MaxLength       =   30
      TabIndex        =   18
      Tag             =   "F.Baja|F|S|||clientes|fechabajact|dd/mm/yyyy||"
      Text            =   "commor"
      Top             =   3630
      Width           =   1515
   End
   Begin VB.TextBox Text1 
      Height          =   360
      Index           =   16
      Left            =   7680
      MaxLength       =   30
      TabIndex        =   17
      Tag             =   "Fecha actividad|F|N|||clientes|fechaltaact|dd/mm/yyyy||"
      Text            =   "commor"
      Top             =   3630
      Width           =   1515
   End
   Begin VB.TextBox Text1 
      Height          =   360
      Index           =   18
      Left            =   6000
      MaxLength       =   30
      TabIndex        =   16
      Tag             =   "Fec. alta|F|N|||clientes|fechaltaaso|dd/mm/yyyy||"
      Text            =   "commor"
      Top             =   3630
      Width           =   1515
   End
   Begin VB.Frame FrameDesplazamiento 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   705
      Left            =   3810
      TabIndex        =   48
      Top             =   180
      Width           =   2415
      Begin MSComctlLib.Toolbar ToolbarDes 
         Height          =   330
         Left            =   240
         TabIndex        =   49
         Top             =   180
         Width           =   1965
         _ExtentX        =   3466
         _ExtentY        =   582
         ButtonWidth     =   609
         ButtonHeight    =   582
         AllowCustomize  =   0   'False
         Style           =   1
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   4
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Primero"
               ImageIndex      =   6
            EndProperty
            BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Anterior"
               ImageIndex      =   7
            EndProperty
            BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Siguiente"
               ImageIndex      =   8
            EndProperty
            BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "�ltimo"
               ImageIndex      =   9
            EndProperty
         EndProperty
      End
   End
   Begin VB.Frame FrameBotonGnral 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   705
      Left            =   120
      TabIndex        =   46
      Top             =   180
      Width           =   3585
      Begin MSComctlLib.Toolbar Toolbar1 
         Height          =   330
         Left            =   240
         TabIndex        =   47
         Top             =   180
         Width           =   3135
         _ExtentX        =   5530
         _ExtentY        =   582
         ButtonWidth     =   609
         ButtonHeight    =   582
         AllowCustomize  =   0   'False
         Style           =   1
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   10
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Nuevo"
               Object.Tag             =   "2"
            EndProperty
            BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Modificar"
               Object.Tag             =   "2"
            EndProperty
            BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Eliminar"
               Object.Tag             =   "2"
               Object.Width           =   1e-4
            EndProperty
            BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
            BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Buscar"
            EndProperty
            BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Ver Todos"
               Object.Tag             =   "0"
            EndProperty
            BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
            BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Object.ToolTipText     =   "Imprimir"
            EndProperty
            BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Enabled         =   0   'False
               Object.Visible         =   0   'False
               Object.ToolTipText     =   "Salir"
            EndProperty
            BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Enabled         =   0   'False
               Object.Visible         =   0   'False
               Style           =   3
            EndProperty
         EndProperty
      End
   End
   Begin VB.CheckBox chkVistaPrevia 
      Caption         =   "Vista previa"
      Height          =   300
      Left            =   6720
      TabIndex        =   30
      Top             =   480
      Visible         =   0   'False
      Width           =   1605
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      Height          =   360
      Index           =   19
      Left            =   11430
      TabIndex        =   4
      Tag             =   "Licencia|T|S|||clientes|matricula|||"
      Text            =   "Tex"
      Top             =   1290
      Width           =   1605
   End
   Begin VB.CheckBox chkBanco 
      Caption         =   "Socio"
      Height          =   255
      Index           =   0
      Left            =   12240
      TabIndex        =   13
      Tag             =   "s|T|S|||clientes|essocio|||"
      Top             =   2880
      Width           =   1125
   End
   Begin VB.TextBox Text1 
      Height          =   360
      Index           =   13
      Left            =   9870
      MaxLength       =   30
      TabIndex        =   12
      Tag             =   "T|T|S|||clientes|nrosegsoc|||"
      Text            =   "Text1"
      Top             =   2790
      Width           =   2265
   End
   Begin VB.TextBox Text1 
      Height          =   360
      Index           =   12
      Left            =   1200
      TabIndex        =   9
      Tag             =   "Poblacion|T|N|||clientes|pobclien|||"
      Text            =   "Text1"
      Top             =   2820
      Width           =   4425
   End
   Begin VB.TextBox Text1 
      Height          =   360
      Index           =   10
      Left            =   120
      MaxLength       =   30
      TabIndex        =   14
      Tag             =   "Provincia|T|N|||clientes|proclien|||"
      Text            =   "Text1"
      Top             =   3600
      Width           =   1905
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      Height          =   360
      Index           =   9
      Left            =   9840
      TabIndex        =   3
      Tag             =   "Licencia|T|S|||clientes|licencia|||"
      Text            =   "Tex"
      Top             =   1290
      Width           =   1365
   End
   Begin VB.TextBox Text1 
      Height          =   360
      Index           =   8
      Left            =   5790
      TabIndex        =   6
      Tag             =   "Forma de pago|N|N|||clientes|codforpa|||"
      Text            =   "Text"
      Top             =   2040
      Width           =   1095
   End
   Begin VB.TextBox Text1 
      Height          =   360
      Index           =   7
      Left            =   150
      TabIndex        =   5
      Tag             =   "Domicilio|T|N|||clientes|domclien|||"
      Text            =   "Text1"
      Top             =   2040
      Width           =   5445
   End
   Begin VB.Frame Frame2 
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   915
      Left            =   7680
      TabIndex        =   37
      Top             =   3960
      Width           =   5715
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         Height          =   360
         Index           =   21
         Left            =   4680
         MaxLength       =   4
         TabIndex        =   26
         Text            =   "Text1"
         Top             =   420
         Width           =   825
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         Height          =   360
         Index           =   22
         Left            =   3765
         MaxLength       =   4
         TabIndex        =   25
         Text            =   "Text1"
         Top             =   420
         Width           =   825
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         Height          =   360
         Index           =   3
         Left            =   1035
         MaxLength       =   4
         TabIndex        =   22
         Text            =   "Text1"
         Top             =   420
         Width           =   825
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         Height          =   360
         Index           =   2
         Left            =   120
         MaxLength       =   4
         TabIndex        =   21
         Text            =   "Text1"
         Top             =   420
         Width           =   825
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         Height          =   360
         Index           =   6
         Left            =   1950
         MaxLength       =   4
         TabIndex        =   23
         Text            =   "Text1"
         Top             =   420
         Width           =   825
      End
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         Height          =   360
         Index           =   0
         Left            =   2850
         MaxLength       =   4
         TabIndex        =   24
         Text            =   "Text1"
         Top             =   420
         Width           =   825
      End
      Begin VB.Label Label1 
         Caption         =   "IBAN"
         Height          =   195
         Index           =   24
         Left            =   120
         TabIndex        =   44
         Top             =   180
         Width           =   540
      End
   End
   Begin VB.TextBox Text1 
      Alignment       =   1  'Right Justify
      Height          =   360
      Index           =   5
      Left            =   120
      TabIndex        =   8
      Tag             =   "Cod postal|T|N|||clientes|codposta|||"
      Text            =   "Text1"
      Top             =   2820
      Width           =   945
   End
   Begin VB.TextBox Text1 
      Alignment       =   1  'Right Justify
      Height          =   360
      Index           =   4
      Left            =   120
      TabIndex        =   0
      Tag             =   "Codigo|N|N|0||clientes|codclien||S|"
      Text            =   "0000000000"
      Top             =   1290
      Width           =   1305
   End
   Begin VB.TextBox Text1 
      Height          =   360
      Index           =   1
      Left            =   1680
      MaxLength       =   40
      TabIndex        =   1
      Tag             =   "Nombre|T|N|||clientes|nomclien|||"
      Text            =   "Text1"
      Top             =   1290
      Width           =   5715
   End
   Begin VB.Frame Frame1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   540
      Left            =   0
      TabIndex        =   32
      Top             =   10080
      Width           =   4215
      Begin VB.Label lblIndicador 
         Alignment       =   2  'Center
         Caption         =   "Label2"
         Height          =   255
         Left            =   240
         TabIndex        =   33
         Top             =   210
         Width           =   3795
      End
   End
   Begin VB.CommandButton cmdCancelar 
      Caption         =   "&Cancelar"
      Height          =   375
      Left            =   18120
      TabIndex        =   29
      Top             =   10185
      Width           =   1035
   End
   Begin VB.CommandButton cmdAceptar 
      Caption         =   "&Aceptar"
      Height          =   375
      Left            =   16920
      TabIndex        =   28
      Top             =   10200
      Width           =   1035
   End
   Begin MSAdodcLib.Adodc Data1 
      Height          =   375
      Left            =   4200
      Top             =   0
      Visible         =   0   'False
      Width           =   2055
      _ExtentX        =   3625
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.CommandButton cmdRegresar 
      Cancel          =   -1  'True
      Caption         =   "&Regresar"
      Height          =   375
      Left            =   18120
      TabIndex        =   31
      Top             =   10200
      Visible         =   0   'False
      Width           =   1035
   End
   Begin MSComctlLib.Toolbar ToolbarAyuda 
      Height          =   390
      Left            =   18600
      TabIndex        =   50
      Top             =   240
      Width           =   405
      _ExtentX        =   714
      _ExtentY        =   688
      ButtonWidth     =   609
      ButtonHeight    =   582
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   1
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Object.ToolTipText     =   "Ayuda"
         EndProperty
      EndProperty
   End
   Begin VB.TextBox Text1 
      Height          =   360
      Index           =   11
      Left            =   7680
      MaxLength       =   10
      TabIndex        =   2
      Tag             =   "NIF|T|N|||clientes|nifclien|||"
      Text            =   "Text1"
      Top             =   1290
      Width           =   1875
   End
   Begin VB.TextBox Text1 
      Height          =   360
      Index           =   20
      Left            =   8040
      MaxLength       =   40
      TabIndex        =   51
      Tag             =   "Iban|T|S|||clientes|iban|||"
      Text            =   "Text"
      Top             =   3960
      Width           =   4290
   End
   Begin XtremeSuiteControls.ComboBox ComboBoxMarkup 
      Height          =   330
      Left            =   2160
      TabIndex        =   15
      Top             =   3630
      Width           =   3735
      _Version        =   1114114
      _ExtentX        =   6588
      _ExtentY        =   635
      _StockProps     =   77
      ForeColor       =   0
      BackColor       =   -2147483643
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BackColor       =   -2147483643
      Style           =   2
      Appearance      =   5
      Text            =   "ComboBox1"
      EnableMarkup    =   -1  'True
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      Height          =   360
      Index           =   23
      Left            =   8280
      MaxLength       =   4
      TabIndex        =   58
      Tag             =   "Pais|T|S|||clientes|codpais|||"
      Text            =   "Pais"
      Top             =   4080
      Width           =   825
   End
   Begin VB.Label lblUrgente 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      Caption         =   "URGENTE"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   345
      Left            =   8520
      TabIndex        =   85
      Top             =   10200
      Visible         =   0   'False
      Width           =   2760
   End
   Begin VB.Label lblCobros 
      Caption         =   "Cobros pendientes"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   345
      Left            =   4680
      TabIndex        =   84
      Top             =   10200
      Visible         =   0   'False
      Width           =   3000
   End
   Begin VB.Label Label1 
      Caption         =   "Situaci�n"
      Height          =   225
      Index           =   20
      Left            =   11040
      TabIndex        =   83
      Top             =   3360
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "Cuotas"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   255
      Index           =   14
      Left            =   120
      TabIndex        =   60
      Top             =   5160
      Width           =   975
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "eMail"
      Height          =   240
      Index           =   19
      Left            =   120
      TabIndex        =   80
      Top             =   4185
      Width           =   495
   End
   Begin VB.Label Label1 
      Caption         =   "Tarjeta transporte"
      Height          =   240
      Index           =   7
      Left            =   11040
      TabIndex        =   79
      Top             =   1740
      Width           =   1830
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Movil"
      Height          =   240
      Index           =   18
      Left            =   7800
      TabIndex        =   77
      Top             =   2520
      Width           =   495
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Tel�fono"
      Height          =   240
      Index           =   17
      Left            =   5760
      TabIndex        =   76
      Top             =   2580
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Fiscal"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   255
      Index           =   16
      Left            =   120
      TabIndex        =   62
      Top             =   8520
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Laboral"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   255
      Index           =   15
      Left            =   120
      TabIndex        =   61
      Top             =   6840
      Width           =   975
   End
   Begin VB.Image imgppal 
      Height          =   240
      Index           =   0
      Left            =   8880
      Picture         =   "frmCliente.frx":94B0
      ToolTipText     =   "Fecha alta actividad"
      Top             =   3360
      Width           =   240
   End
   Begin VB.Image imgppal 
      Height          =   240
      Index           =   1
      Left            =   10560
      Picture         =   "frmCliente.frx":953B
      Top             =   3360
      Width           =   240
   End
   Begin VB.Label Label1 
      Caption         =   "Observaciones"
      Height          =   240
      Index           =   11
      Left            =   13320
      TabIndex        =   57
      Top             =   960
      Width           =   1980
   End
   Begin VB.Label Label1 
      Caption         =   "F baja act"
      Height          =   225
      Index           =   6
      Left            =   9360
      TabIndex        =   56
      Top             =   3360
      Width           =   1095
   End
   Begin VB.Image imgppal 
      Height          =   240
      Index           =   2
      Left            =   7200
      Picture         =   "frmCliente.frx":95C6
      ToolTipText     =   "Fecha alta asociado"
      Top             =   3360
      Width           =   240
   End
   Begin VB.Label Label1 
      Caption         =   "F. alta activ"
      Height          =   225
      Index           =   4
      Left            =   7680
      TabIndex        =   55
      ToolTipText     =   "Fecha alta actividad"
      Top             =   3360
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "F.alta asoc."
      Height          =   225
      Index           =   2
      Left            =   6000
      TabIndex        =   54
      ToolTipText     =   "Fecha alta asociado"
      Top             =   3360
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Pais"
      Height          =   255
      Index           =   1
      Left            =   2160
      TabIndex        =   53
      Top             =   3360
      Width           =   2895
   End
   Begin VB.Label Nombre 
      Caption         =   "N.I.F."
      Height          =   255
      Index           =   0
      Left            =   7680
      TabIndex        =   52
      Top             =   968
      Width           =   2025
   End
   Begin VB.Label Label1 
      Caption         =   "Matr�cula"
      Height          =   240
      Index           =   25
      Left            =   11430
      TabIndex        =   45
      Top             =   975
      Width           =   900
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "N� S.S."
      Height          =   240
      Index           =   13
      Left            =   9870
      TabIndex        =   43
      Top             =   2505
      Width           =   735
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Poblacion"
      Height          =   240
      Index           =   12
      Left            =   1200
      TabIndex        =   42
      Top             =   2580
      Width           =   930
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Provincia"
      Height          =   240
      Index           =   10
      Left            =   120
      TabIndex        =   41
      Top             =   3345
      Width           =   885
   End
   Begin VB.Label Label1 
      Caption         =   "Licencia"
      Height          =   255
      Index           =   9
      Left            =   9840
      TabIndex        =   40
      Top             =   968
      Width           =   1305
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Forma de pago"
      Height          =   240
      Index           =   8
      Left            =   5790
      TabIndex        =   39
      Top             =   1740
      Width           =   1470
   End
   Begin VB.Image imgCC 
      Height          =   480
      Left            =   7320
      Top             =   1740
      Width           =   480
   End
   Begin VB.Label Label1 
      Caption         =   "Domicilio"
      Height          =   255
      Index           =   0
      Left            =   150
      TabIndex        =   38
      Top             =   1725
      Width           =   2895
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "C.Postal"
      Height          =   240
      Index           =   5
      Left            =   120
      TabIndex        =   36
      Top             =   2580
      Width           =   810
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "C�digo"
      Height          =   240
      Index           =   3
      Left            =   120
      TabIndex        =   35
      Top             =   975
      Width           =   660
   End
   Begin VB.Label Nombre 
      Caption         =   "Nombre"
      Height          =   255
      Index           =   1
      Left            =   1680
      TabIndex        =   34
      Top             =   968
      Width           =   2025
   End
   Begin VB.Menu mnOpciones 
      Caption         =   "&Opciones"
      Enabled         =   0   'False
      Visible         =   0   'False
      Begin VB.Menu mnBuscar 
         Caption         =   "&Buscar"
         Shortcut        =   ^B
      End
      Begin VB.Menu mnVerTodos 
         Caption         =   "&Ver todos"
         Shortcut        =   ^F
      End
      Begin VB.Menu mnBarra1 
         Caption         =   "-"
      End
      Begin VB.Menu mnNuevo 
         Caption         =   "&Nuevo"
         Shortcut        =   ^N
      End
      Begin VB.Menu mnModificar 
         Caption         =   "&Modificar"
         Shortcut        =   ^M
      End
      Begin VB.Menu mnEliminar 
         Caption         =   "&Eliminar"
         Shortcut        =   ^E
      End
      Begin VB.Menu mnBarra2 
         Caption         =   "-"
      End
      Begin VB.Menu mnSalir 
         Caption         =   "&Salir"
         Shortcut        =   ^S
      End
   End
End
Attribute VB_Name = "frmCliente"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Public IdCliente As Long
Public DatosADevolverBusqueda As String    'Tendra el n� de text que quiere que devuelva, empipados
Public Event DatoSeleccionado(CadenaSeleccion As String)

Private WithEvents frmF As frmCal
Attribute frmF.VB_VarHelpID = -1
Private Const IdPrograma = ID_Clientes
Private WithEvents frmCC As frmBasico
Attribute frmCC.VB_VarHelpID = -1
'-----------------------------
'Se distinguen varios modos
'   0.-  Formulario limpio sin nungun campo rellenado
'   1.-  Preparando para hacer la busqueda
'   2.-  Ya tenemos registros y los vamos a recorrer
'        y podemos editarlos Edicion del campo
'   3.-  Insercion de nuevo registro
'   4.-  Modificar
'-------------------------------------------------------------------------
'-------------------------------------------------------------------------
'  Variables comunes a todos los formularios
Private Modo As Byte
Private CadenaConsulta As String
Private CadB As String

Private Ordenacion As String
Private NombreTabla As String  'Nombre de la tabla o de la
Private kCampo As Integer
'-------------------------------------------------------------------------
Private HaDevueltoDatos As Boolean
Private DevfrmCCtas As String

Private BuscaChekc As String
Dim iconArray(0 To 9) As Long
Dim Total As Currency  'para el total



Private Sub chkBanco_Click(Index As Integer)
    If Modo = 1 Then
        'Buscqueda
        If InStr(1, BuscaChekc, "chkBanco(" & Index & ")") = 0 Then BuscaChekc = BuscaChekc & "chkBanco(" & Index & ")|"
    End If
End Sub

Private Sub chkBanco_GotFocus(Index As Integer)
    ConseguirFocoChk Modo
End Sub

Private Sub chkBanco_KeyPress(Index As Integer, KeyAscii As Integer)
     KEYpress KeyAscii
End Sub

Private Sub KEYpress(KeyAscii As Integer)
Dim cerrar As Boolean

    KEYpressGnral KeyAscii, Modo, cerrar
    If cerrar Then Unload Me
End Sub



Private Sub cmdAceptar_Click()
    Dim Cad As String
    Dim I As Integer
    
    Screen.MousePointer = vbHourglass
    On Error GoTo Error1
    Select Case Modo
    Case 3
        If DatosOK Then
            '-----------------------------------------
            'Hacemos insertar
            If InsertarDesdeForm(Me) Then
                If Me.IdCliente = -1 Then
                    'Volvemos al anterior poniendo el dato insertado
                    CadenaDesdeOtroForm = Text1(4).Text
                    Unload Me
                    Exit Sub
                End If
                PonerModo 0
                lblIndicador.Caption = ""
            End If
        End If
    Case 4
            'Modificar
            If DatosOK Then
                '-----------------------------------------
                'Hacemos insertar
                If ModificaDesdeFormulario(Me) Then
                    TerminaBloquear
                    lblIndicador.Caption = ""
                    If SituarData1 Then
                        PonerModo 2
                    Else
                        LimpiarCampos
                        PonerModo 0
                    End If
                End If
            End If
    Case 1
        HacerBusqueda
    End Select
        
Error1:
        Screen.MousePointer = vbDefault
        If Err.Number <> 0 Then MsgBox Err.Number & " - " & Err.Description, vbExclamation
End Sub

Private Sub cmdCancelar_Click()
CadenaDesdeOtroForm = ""

Select Case Modo
Case 1, 3
    LimpiarCampos
    PonerModo 0
Case 4
    'Modificar
    lblIndicador.Caption = ""
    TerminaBloquear
    PonerModo 2
    PonerCampos
End Select

End Sub


' Cuando modificamos el data1 se mueve de lugar, luego volvemos
' ponerlo en el sitio
' Para ello con find y un SQL lo hacemos
' Buscamos por el codigo, que estara en un text u  otro
' Normalmente el text(0)
Private Function SituarData1() As Boolean
    Dim Sql As String
    On Error GoTo ESituarData1
            'Actualizamos el recordset
            Data1.Refresh
            '#### A mano.
            'El sql para que se situe en el registro en especial es el siguiente
            Sql = " codclien = " & Text1(4).Text & ""
            Data1.Recordset.Find Sql
            If Data1.Recordset.EOF Then GoTo ESituarData1
            SituarData1 = True
        Exit Function
ESituarData1:
        If Err.Number <> 0 Then Err.Clear
        Limpiar Me
        PonerModo 0
        lblIndicador.Caption = ""
        SituarData1 = False
End Function

Private Sub BotonAnyadir()
    LimpiarCampos
    'A�adiremos el boton de aceptar y demas objetos para insertar
    cmdAceptar.Caption = "Aceptar"
    PonerModo 3
    'Escondemos el navegador y ponemos insertando
    ComboBoxMarkup.ListIndex = 13
    DespalzamientoVisible False
    SugerirCodigoSiguiente
    '###A mano
    Text1(4).SetFocus
End Sub

Private Sub BotonBuscar()
    'Buscar
    If Modo <> 1 Then
        LimpiarCampos
        PonerModo 1
        '### A mano
        '################################################
        'Si pasamos el control aqui lo ponemos en amarill
        PonFoco Text1(4)
        Else
            HacerBusqueda
            If Data1.Recordset.EOF Then
                 '### A mano
                Text1(kCampo).Text = ""
                PonFoco Text1(kCampo)
            End If
    End If
End Sub

Private Sub BotonVerTodos()
    'Ver todos
    LimpiarCampos
    If chkVistaPrevia.Value = 1 Then
        MandaBusquedaPrevia ""
    Else
        CadenaConsulta = "Select * from " & NombreTabla & Ordenacion
        PonerCadenaBusqueda
    End If
End Sub

Private Sub Desplazamiento(Index As Integer)
    Select Case Index
        Case 1
            Data1.Recordset.MoveFirst
        Case 2
            Data1.Recordset.MovePrevious
            If Data1.Recordset.BOF Then Data1.Recordset.MoveFirst
        Case 3
            Data1.Recordset.MoveNext
            If Data1.Recordset.EOF Then Data1.Recordset.MoveLast
        Case 4
            Data1.Recordset.MoveLast
    End Select
    PonerCampos
    lblIndicador.Caption = Data1.Recordset.AbsolutePosition & " de " & Data1.Recordset.RecordCount
End Sub

Private Sub BotonModificar()
    '---------
    'MODIFICAR
    '----------
    'A�adiremos el boton de aceptar y demas objetos para insertar
   ' cmdAceptar.Caption = "Modificar"
    PonerModo 4
    'Escondemos el navegador y ponemos insertando
    'Como el campo 1 es clave primaria, NO se puede modificar
    '### A mano
    Text1(4).Locked = True
    DespalzamientoVisible False
    Text1(1).SetFocus
End Sub

Private Sub BotonEliminar()

'
    Dim Cad As String
    Dim I As Integer

    If Modo <> 2 Then Exit Sub

    'Ciertas comprobaciones
    If Data1.Recordset.EOF Then Exit Sub

    'Comprobamos si se puede eliminar
    I = 0
    If Not SePuedeEliminar Then I = 1
     
    Set miRsAux = Nothing
    If I = 1 Then
        Screen.MousePointer = vbDefault
        Exit Sub
    End If

    '### a mano
    Cad = "Seguro que desea eliminar de el cliente:"
    Cad = Cad & vbCrLf & "ID: " & Data1.Recordset.Fields(0)
    Cad = Cad & vbCrLf & "Nombre: " & Data1.Recordset!NomClien
    Cad = Cad & vbCrLf & "NIF: " & DBLet(Data1.Recordset!NIFClien, "T")
    
    I = MsgBox(Cad, vbQuestion + vbYesNo)
    'Borramos
    If I = vbYes Then
        'Hay que eliminar
        On Error GoTo Error2
        Screen.MousePointer = vbHourglass
        NumRegElim = Data1.Recordset.AbsolutePosition
        Data1.Recordset.Delete
        Data1.Refresh
        If Data1.Recordset.EOF Then
            'Solo habia un registro
            LimpiarCampos
            PonerModo 0
            Else
                Data1.Recordset.MoveFirst
                NumRegElim = NumRegElim - 1
                If NumRegElim > 1 Then
                    For I = 1 To NumRegElim - 1
                        Data1.Recordset.MoveNext
                    Next I
                End If
                PonerCampos
        End If
    End If
Error2:
        Screen.MousePointer = vbDefault
        If Err.Number > 0 Then MsgBox Err.Number & " - " & Err.Description
End Sub





Private Function BloqCliente() As Boolean
    If BloqueoManual("clientes", Text1(4).Text, True) Then
        BloqCliente = True
    Else
        MsgBox "Cliente bloqueado por otro usuario", vbExclamation
        BloqCliente = False
    End If
End Function



Private Sub cmdCobros_Click(Index As Integer)
Dim A_Efectivo As Boolean
    
    If Index = 0 Then
        If Not Me.Option1(4).Value Then Exit Sub
        
        CadB = ""
        For I = 0 To Me.wndReportControl.Rows.Count - 1
            If ImporteFormateado(wndReportControl.Rows(I).Record(6).Caption) < 0 Then
                CadB = CadB & "N"
            Else
                CadB = CadB & "P"
            End If
        Next I
        
        If Len(CadB) <= 1 Then
            MsgBox "Necesita mas de un vencimiento / abono para compensar", vbExclamation
            Exit Sub
        End If
        
        Msg = ""
        If InStr(1, CadB, "N") = 0 Then Msg = "abono"
        If InStr(1, CadB, "P") = 0 Then Msg = "cobro"
        
        If Msg <> "" Then
            MsgBox "Necesita al menos un " & Msg & " para poder compensar", vbExclamation
            Exit Sub
        End If
        
        If BloqCliente Then
        
            frmMensajes.Opcion = 30
            frmMensajes.Parametros = Text1(4).Text & "|" & Text1(1).Text & "|"
            frmMensajes.Show vbModal
            
            DesBloqueoManual "clientes"
        End If
        
    Else
     
        'QUITAR GASTOS   y cambiar forma de pago
        If vUsu.Nivel > 1 Then Exit Sub
        
        If wndReportControl.Rows.Count = 0 Then Exit Sub
        
        If wndReportControl.SelectedRows.Count <> 1 Then
            MsgBox "Seleccione un unico vencimiento ", vbExclamation
            Exit Sub
        End If
         
         
        CadB = ""
        If Index = 1 Then
            If wndReportControl.SelectedRows(0).Record(0).Icon <> 10 Then
                CadB = "No tiene gastos para quitar"
            Else
                If CCur(wndReportControl.SelectedRows(0).Record.Item(6).Tag) = 0 Then CadB = "Error obteniendo gastos"
            End If
        Else
            
                
        End If
        If CadB <> "" Then
            MsgBox CadB, vbExclamation
            CadB = ""
            Exit Sub
        End If
        
            
        If Index = 1 Then
                
                Total = CCur(wndReportControl.SelectedRows(0).Record.Item(6).Caption)
                Total = Total - CCur(wndReportControl.SelectedRows(0).Record.Item(6).Tag)
                CadB = wndReportControl.SelectedRows(0).Record.Item(2).Caption & vbCrLf
                CadB = CadB & "Vencimiento: " & Total & "�      Gastos: "
                CadB = CadB & CCur(wndReportControl.SelectedRows(0).Record.Item(6).Tag) & "�       TOTAL: " & wndReportControl.SelectedRows(0).Record.Item(6).Caption
                Msg = CadB
                CadB = CadB & vbCrLf & vbCrLf & "Quitar los gastos al vecimiento seleccionado?"
                
                
        Else
                If wndReportControl.SelectedRows(0).Record.Item(5).Value = 4 Then
                    A_Efectivo = True
                    CadB = "recibo cobrador"
                Else
                    CadB = "recibo DOMICILIADO"
                    A_Efectivo = False
                End If
                CadB = "Va a cambiar la forma de pago a " & CadB & "." & vbCrLf & "�Continuar?"
                
        End If
        If MsgBox(CadB, vbQuestion + vbYesNoCancel) <> vbYes Then CadB = ""
        If CadB = "" Then Exit Sub
        
        If Index = 1 Then
             QuitarGastosVto
        Else
            CambiarFormaDePago A_Efectivo
        End If
        
    End If
    CargaDatos
End Sub

Private Sub cmdFactura_Click(Index As Integer)
    
    
    
    If Index = 0 Then
        'NUEVO
        If Not BloqCliente Then Exit Sub
        cmdNuevo_Click
        
        
    Else
        'ABONO
        If Modo <> 2 Then Exit Sub
        If vUsu.Nivel > 1 Then Exit Sub
        
        If Me.wndReportControl.Rows.Count = 0 Then Exit Sub
        
        If wndReportControl.SelectedRows.Count = 0 Then Exit Sub
        
        If wndReportControl.SelectedRows.Count > 1 Then
            MsgBox "Seleccione una unica factura/cuota para realizar el abono", vbExclamation
            Exit Sub
        End If
        
        If Index = 1 Then
            'No permitimos recticiar rectificativas
            If RecuperaValor(wndReportControl.SelectedRows(0).Record(6).Caption, 1) = "FRT" Then
                MsgBox "No se permite realizar abonos sobre rectificativas", vbExclamation
                Exit Sub
            End If
            
            
            
        Else
            If Index = 2 Then
                'No permitimos recticiar rectificativas
                Msg = "N"
                CadenaDesdeOtroForm = ""
                If Me.Option1(2).Value Then
                    If RecuperaValor(wndReportControl.SelectedRows(0).Record(6).Caption, 1) = "FEX" Then
                        Msg = ""
                        CadenaDesdeOtroForm = "fecfactu =" & DBSet(RecuperaValor(wndReportControl.SelectedRows(0).Record(6).Caption, 3), "F")
                        CadenaDesdeOtroForm = CadenaDesdeOtroForm & " AND numserie = 'FEX' AND numfactu"
                        CadenaDesdeOtroForm = DevuelveDesdeBD("concat(numexped,'|',fecexped,'|')", "factcli", CadenaDesdeOtroForm, RecuperaValor(wndReportControl.SelectedRows(0).Record(6).Caption, 2))
                        If CadenaDesdeOtroForm = "" Then
                            MsgBox "No existe expediente para la factura: " & wndReportControl.SelectedRows(0).Record(6).Caption, vbExclamation
                            Exit Sub
                        End If
                    End If
                Else
                    If Me.Option1(1).Value Then
                        Msg = ""
                        J = InStr(1, wndReportControl.SelectedRows(0).Record(3).Value, " ")
                        If J <> 0 Then
                            Msg = Mid(wndReportControl.SelectedRows(0).Record(3).Value, J)
                            J = InStr(5, Msg, " ")
                            If J = 0 Then
                                Msg = ""
                            Else
                                Msg = Trim(Mid(Msg, 1, J))
                                Msg = Format(Msg, FormatoFecha)
                            End If
                        End If
                        If Msg = "" Then
                            MsgBox "Imposible obtener fecha expediente", vbExclamation
                            Exit Sub
                        Else
                            CadenaDesdeOtroForm = RecuperaValor(wndReportControl.SelectedRows(0).Record(6).Caption, 2) & "|"
                            CadenaDesdeOtroForm = CadenaDesdeOtroForm & Msg & "|"
                    
                            
                        
                    
                        End If
                        Msg = ""
                    
                    End If
                End If
                If Msg <> "" Then
                    MsgBox "Entrega de documentos  administrativos debe ser expediente", vbExclamation
                    Exit Sub
                End If
                
                
            End If
        End If
        
            'wndReportControl.SelectedRows.Row (0)
        If Not BloqCliente Then Exit Sub
        
        
        
        If Index = 1 Then
            CadenaDesdeOtroForm = Text1(4).Text & "|" & Text1(1).Text & "|"
            frmMensajes.Parametros = wndReportControl.SelectedRows(0).Record(6).Caption
            frmMensajes.Opcion = 29
            frmMensajes.Show vbModal
            
        Else
            'Entrega documentos
            
            frmGestionAdmCierre.QueTasa_ = 1
            frmGestionAdmCierre.EntregaDocumentos2 = 2
            frmGestionAdmCierre.Show vbModal
        End If
        If CadenaDesdeOtroForm <> "" Then CargaDatos
        
        
        
    End If
    
    
debloqClie:
    DesBloqueoManual "clientes"
End Sub

Private Sub cmdNuevo_Click()
    If Modo <> 2 Then Exit Sub
    
    
    If Me.Option1(3).Value Then
        'Nuevo documento a  adjuntar
        frmClienDoc.IdLinea = -1
        frmClienDoc.IdCliente = CLng(Text1(4).Text)
        frmClienDoc.Show vbModal
        CargaDatos
    Else
        If vUsu.Nivel > 1 Then Exit Sub
        CadB = "-1|" & Text1(4).Text & "|" & Text1(1).Text & "|"
       
        
        AccionReportControl CStr(CadB)
        
        
        
    End If
End Sub

Private Sub cmdRegresar_Click()

    If Data1.Recordset.EOF Then
        MsgBox "Ning�n registro devuelto.", vbExclamation
        Exit Sub
    End If



    
    

    RaiseEvent DatoSeleccionado(CStr(Text1(4).Text & "|" & Text2(4).Text & "|"))
    Unload Me
    Screen.MousePointer = vbDefault
End Sub



Private Sub FacturasFacturas_DblClick()

End Sub



Private Sub Combo1_KeyPress(KeyAscii As Integer)
    KEYpress KeyAscii
End Sub

Private Sub ComboBoxMarkup_KeyPress(KeyAscii As Integer)
    KEYpress KeyAscii
End Sub

Private Sub DateTimePicker1_Change()
Dim F
    
    F = CDate(Me.DateTimePicker1.Day & "/" & DateTimePicker1.Month & "/" & DateTimePicker1.Year)
    If F <> CDate(DateTimePicker1.Tag) Then
        DateTimePicker1.Tag = F
        CargaDatos
    End If
End Sub

Private Sub Form_Activate()
    If Me.Tag = 1 Then
        Me.Tag = 0
        Data1.ConnectionString = Conn
        If IdCliente <> 0 Then
            
            
            CadB = "codclien = " & IdCliente
            CadenaConsulta = "select * from " & NombreTabla & " WHERE " & CadB & " " & Ordenacion
             
            PonerCadenaBusqueda
            If IdCliente = -1 Then BotonAnyadir
            
        Else
            'ASignamos un SQL al DATA1
            Data1.RecordSource = "Select * from " & NombreTabla
            Data1.Refresh
            If DatosADevolverBusqueda = "" Then
                PonerModo 0
            Else
                PonerModo 1
            End If
        End If
    End If
    Screen.MousePointer = vbDefault
End Sub


'++
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    If Shift = 0 And KeyCode = vbKeyEscape Then Unload Me
End Sub
'++


Private Sub Form_Load()
Dim I As Integer
Dim F As Date
    Me.Tag = 1
    Me.Icon = frmppal.Icon
    wndReportControl.Icons = ReportControlGlobalSettings.Icons
    wndReportControl.PaintManager.NoItemsText = "Ning�n registro "
    F = DateAdd("m", -12, Now)
    DateTimePicker1.Day = Day(F)
    DateTimePicker1.Month = Month(F)
    DateTimePicker1.Year = Year(F)
    DateTimePicker1.Tag = Format(F, "dd/mm/yyyy")
    DateTimePicker1.MinDate = "01/01/2016"
    ' Botonera Principal
    With Me.Toolbar1
        .HotImageList = frmppal.imgListComun_OM
        .DisabledImageList = frmppal.imgListComun_BN
        .ImageList = frmppal.ImgListComun
        .Buttons(1).Image = 3
        .Buttons(2).Image = 4
        .Buttons(3).Image = 5
        .Buttons(5).Image = 1
        .Buttons(6).Image = 2
        .Buttons(8).Image = 16
    End With

    ' desplazamiento
    With Me.ToolbarDes
        .HotImageList = frmppal.imgListComun_OM
        .DisabledImageList = frmppal.imgListComun_BN
        .ImageList = frmppal.ImgListComun
        .Buttons(1).Image = 6
        .Buttons(2).Image = 7
        .Buttons(3).Image = 8
        .Buttons(4).Image = 9
    End With
    
    ' La Ayuda
    With Me.ToolbarAyuda
        .ImageList = frmppal.ImgListComun
        .Buttons(1).Image = 26
    End With


    'Laboral
    With Me.ToolbarCutoa
        .HotImageList = frmppal.imgListComun_OM16
        .DisabledImageList = frmppal.imgListComun_BN16
        .ImageList = frmppal.imgListComun16
        .Buttons(1).Image = 3
        .Buttons(2).Image = 4
        .Buttons(3).Image = 5
    End With
    
    With Me.Toolbarlaboral
        .HotImageList = frmppal.imgListComun_OM16
        .DisabledImageList = frmppal.imgListComun_BN16
        .ImageList = frmppal.imgListComun16
        .Buttons(1).Image = 3
        .Buttons(2).Image = 4
        .Buttons(3).Image = 5
    End With
    
    With Me.ToolbarFiscal
        .HotImageList = frmppal.imgListComun_OM16
        .DisabledImageList = frmppal.imgListComun_BN16
        .ImageList = frmppal.imgListComun16
        .Buttons(1).Image = 3
        .Buttons(2).Image = 4
        .Buttons(3).Image = 5
    End With

    Me.FrameLaboral.BorderStyle = 0
    Me.FramCuto.BorderStyle = 0
    Me.FramelFiscal.BorderStyle = 0
    


     Me.imgCC.Picture = frmppal.imgIcoForms.ListImages(1).Picture
'
'    imgCuentas(4).Picture = frmppal.imgIcoForms.ListImages(1).Picture
'    imgCuentas(5).Picture = frmppal.imgIcoForms.ListImages(1).Picture
'    imgCuentas(10).Picture = frmppal.imgIcoForms.ListImages(1).Picture
'    imgCuentas(12).Picture = frmppal.imgIcoForms.ListImages(1).Picture
'    imgCuentas(13).Picture = frmppal.imgIcoForms.ListImages(1).Picture
'
    
    DespalzamientoVisible False


    LimpiarCampos
    CreateReportControl
    EstablecerFuente
    
    
    
    '## A mano
    NombreTabla = "clientes"
    Ordenacion = " ORDER BY codclien"
        
    CargaIdiomas
        
    PonerOpcionesMenu
    
    'Vemos como esta guardado el valor del check
    chkVistaPrevia.Value = CheckValueLeer(Name)
    

End Sub

Private Sub EstablecerFuente()

    On Error GoTo eEstablecerFuente
    'The following illustrate how to change the different fonts used in the ReportControl
    Dim TextFont As StdFont
    Set TextFont = Me.Font
    TextFont.SIZE = 9
    Set wndReportControl.PaintManager.TextFont = TextFont
    Set wndReportControl.PaintManager.CaptionFont = TextFont
    Set wndReportControl.PaintManager.PreviewTextFont = TextFont
    
    'This font will be used in the BeforeDrawRow when automatic formatting is selected
    'This simply applies Strikethrough to the currently set text font
    'Set fntStrike = wndReportControl.PaintManager.TextFont
    'fntStrike.Strikethrough = True
    
    'This font will be used in the BeforeDrawRow when automatic formatting is selected
    'This simply applies Bold to the currently set text font
    'Set fntBold = wndReportControl.PaintManager.TextFont
    'fntBold.Bold = True


    Exit Sub
eEstablecerFuente:
    MuestraError Err.Number, Err.Description

End Sub


Private Sub LimpiarCampos()
    Limpiar Me   'Metodo general
    lblIndicador.Caption = ""
    'Aqui va el especifico de cada form es
    '### a mano
    ComboBoxMarkup.ListIndex = -1

    'Check1.Value = 0
    For kCampo = 0 To 0
        If kCampo <> 2 Then Me.chkBanco(kCampo).Value = 0
    Next
    kCampo = 0
    Me.lwCuotas.ListItems.Clear
    Me.lwFiscal.ListItems.Clear
    Me.lwlaboral.ListItems.Clear
    wndReportControl.Records.DeleteAll
    wndReportControl.Populate
    Combo1.ListIndex = -1
    lblUrgente.Visible = False
    Me.lblCobros.Visible = False
End Sub





Private Sub Form_Resize()
Dim W As Integer
    On Error GoTo eResize
    W = Me.Width
    If Screen.Width < Me.Width Then
        W = Screen.Width
      
    End If
'      W = 17000
'    Me.Width = 17000
    
    W = W - Me.wndReportControl.Left - 120
    If W > 200 Then Me.wndReportControl.Width = W
    
eResize:
    If Err.Number <> 0 Then Err.Clear
End Sub

Private Sub Form_Unload(Cancel As Integer)
    CheckValueGuardar Me.Name, Me.chkVistaPrevia.Value
End Sub




Private Sub frmCC_DatoSeleccionado(CadenaSeleccion As String)
    'Centro de coste
    Text1(8).Text = RecuperaValor(CadenaSeleccion, 1)
    Text2(2).Text = RecuperaValor(CadenaSeleccion, 2)
End Sub



Private Sub frmF_Selec(vFecha As Date)
    CadB = Format(vFecha, formatoFechaVer)
End Sub

Private Sub imgCC_Click()
    'Lanzaremos el vista previa
    Set frmCC = New frmBasico '

    AyudaFormaPago frmCC
    
    Set frmCC = Nothing
    
End Sub




Private Sub imgppal_Click(Index As Integer)
    If Modo = 2 Or Modo = 0 Then Exit Sub
    Set frmF = New frmCal
    frmF.Fecha = Now
    CadB = ""
    If Me.Text1(Index + 16).Text <> "" Then frmF.Fecha = Text1(Index + 16).Text
    frmF.Show vbModal
    If CadB <> "" Then Text1(Index + 16).Text = CadB
    
End Sub

Private Sub lwCuotas_DblClick()
    DblClickListview lwCuotas
End Sub

Private Sub lwFiscal_DblClick()
    DblClickListview lwFiscal
End Sub

Private Sub lwlaboral_DblClick()
    DblClickListview lwlaboral
End Sub

Private Sub mnBuscar_Click()
    BotonBuscar
End Sub

Private Sub mnEliminar_Click()
    BotonEliminar
End Sub

Private Sub mnModificar_Click()
    BotonModificar
End Sub

Private Sub mnNuevo_Click()
    BotonAnyadir
End Sub

Private Sub mnSalir_Click()
Screen.MousePointer = vbHourglass
Unload Me
End Sub

Private Sub mnVerTodos_Click()
BotonVerTodos
End Sub


Private Sub Option1_Click(Index As Integer)
    Screen.MousePointer = vbHourglass
       
    For I = 0 To 5
        Me.Option1(I).FontBold = I = Index
    Next I
    
    
    Me.cmdNuevo.Visible = Index = 3 Or Index = 0
    cmdCobros(0).Visible = Index = 4
    cmdCobros(1).Visible = Index = 4
    cmdCobros(2).Visible = Index = 4
    Me.cmdFactura(0).Visible = Index = 1 Or Index = 2
    Me.cmdFactura(1).Visible = Index = 2 Or Index = 5
    Me.cmdFactura(2).Visible = Index = 1 Or Index = 2
    
    Me.lblTotal.Visible = Index <> 0 And Index <> 3
    Me.txtTotal.Visible = Me.lblTotal.Visible
    
    
    CreateReportControl
    CargaDatos
    
    Screen.MousePointer = vbDefault
End Sub

'### A mano
'Los metodos del text tendran que estar
'Los descomentamos cuando esten puestos ya los controles
Private Sub Text1_GotFocus(Index As Integer)
    ConseguirFoco Text1(Index), Modo
End Sub


Private Sub Text1_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    KEYdown KeyCode
End Sub

Private Sub Text1_KeyPress(Index As Integer, KeyAscii As Integer)
    If KeyAscii = teclaBuscar Then
        Select Case Index
            Case 8: KEYCta KeyAscii, -1
            Case 18: KEYCta KeyAscii, 2
            Case 17: KEYCta KeyAscii, 1
            Case 16: KEYCta KeyAscii, 0
        End Select
    Else
        KEYpress KeyAscii
    End If
End Sub

Private Sub KEYCta(KeyAscii As Integer, indice As Integer)
    KeyAscii = 0
    If indice >= 0 Then
        imgppal_Click indice
    Else
        imgCC_Click
    End If
End Sub

'----------------------------------------------------------------
'----------------------------------------------------------------
' Cunado el campo de texto pierde el enfoque
' Es especifico de cada formulario y en el podremos controlar
' lo que queramos, desde formatear un campo si asi lo deseamos
' hasta pedir que nos devuelva los datos de la empresa
'----------------------------------------------------------------
'----------------------------------------------------------------
Private Sub Text1_LostFocus(Index As Integer)
    Dim Valor As Currency
    Dim Sql As String
    Dim mTag As CTag
    Dim I As Integer
    Dim Sql2 As String
    
    
    
    If Modo <> 2 Then
        If Not PerderFocoGnral(Text1(Index), Modo) Then Exit Sub
    Else
        Exit Sub
    End If
    
    ''Quitamos blancos por los lados
    Text1(Index).Text = Trim(Text1(Index).Text)
    
    'Si queremos hacer algo ..
    Select Case Index
        Case 0, 2, 3, 6, 21, 22
            If Text1(Index).Text = "" Then Exit Sub
            
            If Index = 2 Then
                Text1(Index).Text = UCase(Text1(Index).Text)
            Else
                Text1(Index).Text = Format(Text1(Index).Text, "0000")
            End If
            If Modo = 1 Then Exit Sub
        
            If Index <> 2 Then
                If Not EsNumerico(Text1(Index).Text) Then
                    PonFoco Text1(Index)
                    Exit Sub
                Else
                    Text1(Index).Text = Format(Text1(Index).Text, "0000")
                End If
            
                If Text1(3).Text <> "" And Text1(6).Text <> "" And Text1(0).Text <> "" And Text1(22).Text <> "" And Text1(21).Text <> "" Then
                    ' comprobamos si es correcto
                    Sql = Format(Text1(3).Text, "0000") & Format(Text1(6).Text, "0000") & Format(Text1(0).Text, "0000") & Format(Text1(22).Text, "0000") & Format(Text1(21).Text, "0000")
                End If
            Else
                If Mid(Text1(Index).Text, 1, 2) = "ES" Then
                    If Not IBAN_Correcto(Me.Text1(Index).Text) Then Text1(Index).Text = ""
                End If
            End If
            
            If Text1(2).Text <> "" And Text1(3).Text <> "" And Text1(6).Text <> "" And Text1(0).Text <> "" And Text1(22).Text <> "" And Text1(21).Text <> "" Then
                Sql = Format(Text1(3).Text, "0000") & Format(Text1(6).Text, "0000") & Format(Text1(0).Text, "0000") & Format(Text1(22).Text, "0000") & Format(Text1(21).Text, "0000")
        
                Sql2 = CStr(Mid(Text1(2).Text, 1, 2))
                If DevuelveIBAN2(CStr(Sql2), Sql, Sql) Then
                    If Mid(Text1(2).Text, 3, 2) <> Sql Then
                        MsgBox "Codigo IBAN distinto del calculado [" & Sql2 & Sql & "]", vbExclamation
                    End If
                End If
            End If
            
            Text1(20).Text = Text1(2).Text & Format(ComprobarCero(Text1(3).Text), "0000") & Format(ComprobarCero(Text1(6).Text), "0000") & Format(ComprobarCero(Text1(0).Text), "0000") & Format(ComprobarCero(Text1(22).Text), "0000") & Format(Text1(21).Text, "0000")
        
        Case 4
             If Not PonerFormatoEntero(Text1(Index)) Then Text1(Index).Text = ""

        Case 11
            If Text1(Index).Text <> "" Then
                Text1(Index).Text = UCase(Text1(Index).Text)
                If Not Comprobar_NIF(Text1(Index).Text) Then
                    MsgBox "NIF incorrecto", vbExclamation
                    
                End If
            End If

             
        Case 20  'IBAN ya no se ve
            
            
        Case 16, 17, 18
            PonerFormatoFecha Text1(Index)
            
           
        Case 8
            DevfrmCCtas = ""
            If Text1(Index).Text <> "" Then
                If PonerFormatoEntero(Text1(Index)) Then
                    DevfrmCCtas = DevuelveDesdeBD("nomforpa", "ariconta" & vParam.Numconta & ".formapago", "codforpa", Text1(8).Text)
                    If DevfrmCCtas = "" Then
                        MsgBox "Forma de pago no encontrado: " & Text1(8).Text, vbExclamation
                        Text1(8).Text = ""
                        PonerFoco Text1(8)
                        Exit Sub
                    
                        
                    End If
                Else
                    Text1(Index).Text = ""
                End If
            End If
            Text2(2).Text = DevfrmCCtas
            
                
            
        '....
    End Select
    '---
End Sub

Private Sub HacerBusqueda()
Dim Cad As String
Dim CadB As String

CadB = ObtenerBusqueda2(Me, BuscaChekc, 1)

If Text1(2).Text <> "" Then
    If CadB <> "" Then CadB = CadB & " and "
    CadB = CadB & "mid(iban,1,4) = " & DBSet(Text1(2).Text, "T")
End If
If Text1(3).Text <> "" Then
    If CadB <> "" Then CadB = CadB & " and "
    CadB = CadB & "mid(iban,5,4) = " & DBSet(Text1(3).Text, "T")
End If
If Text1(6).Text <> "" Then
    If CadB <> "" Then CadB = CadB & " and "
    CadB = CadB & "mid(iban,9,4) = " & DBSet(Text1(6).Text, "T")
End If
If Text1(0).Text <> "" Then
    If CadB <> "" Then CadB = CadB & " and "
    CadB = CadB & "mid(iban,13,4) = " & DBSet(Text1(0).Text, "T")
End If
If Text1(22).Text <> "" Then
    If CadB <> "" Then CadB = CadB & " and "
    CadB = CadB & "mid(iban,17,4) = " & DBSet(Text1(22).Text, "T")
End If
If Text1(21).Text <> "" Then
    If CadB <> "" Then CadB = CadB & " and "
    CadB = CadB & "mid(iban,21,4) = " & DBSet(Text1(21).Text, "T")
End If

If ComboBoxMarkup.ListIndex >= 0 Then
   If CadB <> "" Then CadB = CadB & " and "
   CadB = CadB & " codpais = " & DBSet(Me.ComboBoxMarkup.ItemData(Me.ComboBoxMarkup.ListIndex), "T")
End If
 

If chkVistaPrevia = 1 Then
    MandaBusquedaPrevia CadB
    Else
        'Se muestran en el mismo form
        If CadB <> "" Then
            CadenaConsulta = "select * from " & NombreTabla & " WHERE " & CadB & " " & Ordenacion
            PonerCadenaBusqueda
        End If
End If
End Sub

Private Sub MandaBusquedaPrevia(CadB As String)

'    Set frmBan = New frmBasico2
'
'    AyudaBanco frmBan, , CadB
'
'    Set frmBan = Nothing

End Sub



Private Sub PonerCadenaBusqueda()
Screen.MousePointer = vbHourglass
On Error GoTo EEPonerBusq

Data1.RecordSource = CadenaConsulta
Data1.Refresh
If Data1.Recordset.RecordCount <= 0 Then
    If IdCliente >= 0 Then MsgBox "No hay ning�n registro en la tabla " & NombreTabla, vbInformation
    Screen.MousePointer = vbDefault
    Exit Sub

    Else
        PonerModo 2
        'Data1.Recordset.MoveLast
        Data1.Recordset.MoveFirst
        PonerCampos
End If


Screen.MousePointer = vbDefault
Exit Sub
EEPonerBusq:
    MuestraError Err.Number, "PonerCadenaBusqueda"
    PonerModo 0
    Screen.MousePointer = vbDefault
End Sub

Private Sub PonerCampos()
    Dim I As Integer
    Dim mTag As CTag
    Dim Sql As String
    If Data1.Recordset.EOF Then Exit Sub
    PonerCamposForma Me, Data1
    
    Sql = "ariconta" & vParam.Numconta
    Text2(2).Text = DevuelveDesdeBD("nomforpa", Sql & ".formapago", "codforpa", Text1(8).Text)
    
    
    ComboBoxMarkup.ListIndex = -1
    If Text1(23).Text <> "" Then
       
        For I = 0 To Me.ComboBoxMarkup.ListCount - 1
            If Text1(23).Text = Me.ComboBoxMarkup.ItemData(I) Then
                ComboBoxMarkup.ListIndex = I
                Exit For
            End If
        Next I
    End If
    
    
    Text1(2).Text = ""
    Text1(3).Text = ""
    Text1(6).Text = ""
    Text1(0).Text = ""
    Text1(22).Text = ""
    Text1(21).Text = ""
    
    Text1(2).ToolTipText = ""
    Text1(3).ToolTipText = ""
    Text1(6).ToolTipText = ""
    Text1(0).ToolTipText = ""
    Text1(22).ToolTipText = ""
    Text1(21).ToolTipText = ""
    
    If Text1(20).Text <> "" Then
        Text1(2).Text = Mid(Text1(20).Text, 1, 4)
        Text1(3).Text = Mid(Text1(20).Text, 5, 4)
        Text1(6).Text = Mid(Text1(20).Text, 9, 4)
        Text1(0).Text = Mid(Text1(20).Text, 13, 4)
        Text1(22).Text = Mid(Text1(20).Text, 17, 4)
        Text1(21).Text = Mid(Text1(20).Text, 21, 4)
        
        Dim CCC As String
        CCC = Text1(2).Text & " " & Text1(3).Text & " " & Text1(6).Text & " " & Mid(Text1(0).Text, 1, 2) & " " & Mid(Text1(0).Text, 3, 2) & Text1(22).Text & Text1(21).Text
        
        Text1(2).ToolTipText = CCC
        Text1(3).ToolTipText = CCC
        Text1(6).ToolTipText = CCC
        Text1(0).ToolTipText = CCC
        Text1(22).ToolTipText = CCC
        Text1(21).ToolTipText = CCC
    End If
    
    
    lblIndicador.Caption = "Cuotas"
    lblIndicador.Refresh


    CargarCutoasLaborFiscal 0, lwCuotas
    CargarCutoasLaborFiscal 1, lwlaboral
    CargarCutoasLaborFiscal 2, lwFiscal
    
    
    lblIndicador.Caption = "Observaciones"
    lblIndicador.Refresh
    CargaDatos
    
    lblCobros.Visible = False
    If TieneCobrosPendientes(Text1(4).Text, CadB) Then
        CadB = Text1(1).Text & " tiene cobros pendientes"
        frmppal.MostrarMensaje 7, "Clientes", CStr(CadB), False
        lblCobros.Visible = True
        
    End If
    
    lblUrgente.Visible = False
    CadB = "importancia = 10 AND codclien =  " & Text1(4).Text & " AND 1"
    CadB = DevuelveDesdeBD("coalesce(observaciones,'URGENTE')", "clientes_historial", CadB, " 1 ORDER BY fechahora desc ")
    If CadB <> "" Then
        CadB = Mid(CadB, 1, 30)
        frmppal.MostrarMensaje 9, "Clientes", CStr(CadB), lblCobros.Visible = True  'si es true es que ha lanzado un mensaje antes
        lblUrgente.Visible = True
    End If
    '-- Esto permanece para saber donde estamos
    lblIndicador.Caption = Data1.Recordset.AbsolutePosition & " de " & Data1.Recordset.RecordCount

End Sub

'----------------------------------------------------------------
'----------------------------------------------------------------
'   En PONERMODO se habilitan, o no, los diverso campos del
'   formulario en funcion del modo en k vayamos a trabajar
'
Private Sub PonerModo(Kmodo As Integer)
    Dim I As Integer
    Dim B As Boolean
    Dim Obj
    
    BuscaChekc = ""
    
    Modo = Kmodo
    
    B = (Modo = 2)
    If B Then
        PonerContRegIndicador
    Else
        PonerIndicador lblIndicador, Modo
    End If
    FrameTiposDosc.Enabled = B
    B = (Modo = 0 Or Modo = 2)
    
    'chkVistaPrevia.Visible = (Modo = 1)
    
    'Modo 2. Hay datos y estamos visualizandolos
    B = (Kmodo = 2)
    DespalzamientoVisible B And Me.Data1.Recordset.RecordCount > 1
    'Ponemos visible, si es formulario de busqueda, el boton regresar cuando hay datos
    If DatosADevolverBusqueda <> "" Then
        cmdRegresar.Visible = B
    Else
        cmdRegresar.Visible = False
    End If
    Me.FrameLaboral.Enabled = B
    Me.FramCuto.Enabled = B
    Me.FramelFiscal.Enabled = B
    
    
    
    'Modo insertar o modificar
    B = (Kmodo >= 3) '-->Luego not b sera kmodo<3
    cmdAceptar.Visible = B Or Modo = 1
    cmdCancelar.Visible = B Or Modo = 1
    ComboBoxMarkup.Locked = Not cmdAceptar.Visible
    mnOpciones.Enabled = Not B
    If cmdCancelar.Visible Then
        cmdCancelar.Cancel = True
        Else
        cmdCancelar.Cancel = False
    End If
    Toolbar1.Buttons(6).Enabled = Not B And vUsu.Nivel < 2
    Toolbar1.Buttons(1).Enabled = Not B
    Toolbar1.Buttons(2).Enabled = Not B
    
    If Kmodo = 0 Then lblIndicador.Caption = ""
    
    '### A mano
    'Aqui a�adiremos controles para datos especificos. Esto es, si hay imagenes en el form
    ' o cualquier objeto que dependiendo en el modo en el que esteos se visualizaran o no
    ' Bloqueamos los campos de texto y demas controles en funcion
    ' del modo en el que estamos.
    ' Es decir, si estamos en modo busqueda, insercion o modificacion estaran enables
    ' si no  disable. la variable b nos devuelve esas opciones
    B = (Modo = 2) Or Modo = 0
    For I = 0 To 26
            Text1(I).Locked = B
            If Modo <> 1 Then
                Text1(I).BackColor = vbWhite
            End If
    Next I
    Combo1.Locked = B

    Me.imgCC.Enabled = Not B
    
    
    B = Modo = 2 And vUsu.Nivel <= 1
    Me.cmdCobros(0).Enabled = B
    Me.cmdCobros(1).Enabled = B
    Me.cmdFactura(0).Enabled = B
    Me.cmdFactura(1).Enabled = B
    Me.cmdFactura(2).Enabled = B
   
    
    
    
    Me.DateTimePicker1.Enabled = B
    
    PonerModoUsuarioGnral Modo, "arigestion"

    
End Sub

Private Sub PonerContRegIndicador()
'si estamos en modo ver registros muestra el numero de registro en el que estamos
'situados del total de registros mostrados: 1 de 24
Dim cadReg As String

    If (Modo = 2 Or Modo = 0) Then
        cadReg = PonerContRegistros(Me.Data1)
        
            lblIndicador.Caption = cadReg
     
       
      
    End If
End Sub


Private Function DatosOK() As Boolean
Dim B As Boolean
Dim Sql As String
Dim RC2 As String

    
    DatosOK = False
    B = CompForm(Me)
    If Not B Then Exit Function
    
    'Comprobamos  si existe
    If Modo = 3 Then
        If ExisteCP(Text1(4)) Then B = False
        
        'La longitud del codigo NO puede ser superior a 5, ya que cuando concatena codclien con raizcuentas no puede exceder de 9 que es el `plan gneral contable
        Sql = Val(Text1(4).Text)
        If Len(Sql) > 5 Then
            MsgBox "Maximo codigo cliente: 99999", vbExclamation
            Exit Function
        End If
        
    End If
    If Not B Then Exit Function
    
    
    
    

    'Comprobamos el CCC
    If Text1(2).Text <> "" Then
         Sql = Text1(3).Text & Text1(6).Text & Text1(0).Text & Text1(22).Text & Text1(21).Text
         If Len(Sql) <> 20 Then
             MsgBox "Longitud cuenta bancaria incorrecta", vbExclamation
             Exit Function
         End If

        'Compruebo EL IBAN
        'Meto el CC
        RC2 = Sql
        Sql = ""
        If Me.Text1(2).Text <> "" Then Sql = Mid(Text1(2).Text, 1, 2)

        If DevuelveIBAN2(Sql, RC2, RC2) Then
            If Me.Text1(2).Text = "" Then
                If MsgBox("Poner IBAN ?", vbQuestion + vbYesNo) = vbYes Then Me.Text1(2).Text = RC2
            Else
                If Mid(Text1(2).Text, 3, 2) <> RC2 Then
                    RC2 = "Calculado : " & Sql & RC2
                    RC2 = "Introducido: " & Me.Text1(2).Text & vbCrLf & RC2 & vbCrLf
                    RC2 = "Error en codigo IBAN" & vbCrLf & RC2 & "Continuar?"
                    If MsgBox(RC2, vbQuestion + vbYesNo) = vbNo Then Exit Function
                End If
            End If
        End If
     Else
        Text1(20).Text = ""
     End If
    
    'Si modifica
    'Si pone fecha baja debe indicar baja
    If Modo = 4 Then
        If Me.Combo1.ListIndex > 0 And Me.Text1(17).Text = "" Then
            MsgBox "Si indica situacion de baja/bloqueo debe indicar la fecha", vbExclamation
            B = False
        End If
        
    End If
    'Si el idNorma34 son espacios en blanco entonces pong "", para que en la BD vaya un NULL
    If Trim(Text1(11).Text) = "" Then Text1(11).Text = ""
    
        
    If B Then
        If ComboBoxMarkup.ListIndex = -1 Then
            Text1(23).Text = ""
        Else
            Text1(23).Text = ComboBoxMarkup.ItemData(ComboBoxMarkup.ListIndex)
        End If
    End If
    DatosOK = B
End Function

'Esto es para que cuando pincha en siguiente le sugerimos
'Se puede comentar todo y asi no hace nada ni da error
'El SQL es propio de cada tabla
Private Sub SugerirCodigoSiguiente()
    Text1(4).Text = Format(Val(DevuelveDesdeBD("max(codclien)", "clientes", "1", "1")) + 1, "0000")
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Index
        Case 1
            BotonAnyadir
        Case 2
            If Modo = 2 Then
                If BLOQUEADesdeFormulario(Me) Then BotonModificar
            End If
                
        Case 3
            BotonEliminar
        Case 5
            BotonBuscar
        Case 6
            BotonVerTodos

        Case Else
    
    End Select
End Sub


Private Sub DespalzamientoVisible(bol As Boolean)
    FrameDesplazamiento.Visible = bol
    FrameDesplazamiento.Enabled = bol
End Sub






Private Sub PonerFoco(ByRef Text As TextBox)
    On Error Resume Next
    Text.SetFocus
    If Err.Number <> 0 Then Err.Clear
End Sub



Private Sub PonerOpcionesMenu()
PonerOpcionesMenuGeneral Me
End Sub



Private Function SePuedeEliminar() As Boolean
Dim B As Boolean
Dim Cad As String

    Screen.MousePointer = vbHourglass
    Set miRsAux = New ADODB.Recordset
    
    SePuedeEliminar = False
    
    'Veamos cobros asociados
    Cad = "Select count(*) from factcli where codclien = " & Data1.Recordset.Fields(0)
    miRsAux.Open Cad, Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
    NumRegElim = 0
    If Not miRsAux.EOF Then NumRegElim = DBLet(miRsAux.Fields(0), "N")
    miRsAux.Close
    
    If NumRegElim > 0 Then
        MsgBox "Tiene facturas realizadas", vbExclamation
        Exit Function
    End If
    
    
    'De momento, si tiene documentos no le dejo tampoco
    Cad = "Select count(*) from clientes_doc where codclien = " & Data1.Recordset.Fields(0)
    miRsAux.Open Cad, Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
    NumRegElim = 0
    If Not miRsAux.EOF Then NumRegElim = DBLet(miRsAux.Fields(0), "N")
    miRsAux.Close
    If NumRegElim > 0 Then
        MsgBox "Tiene documentos asociados", vbExclamation
        Exit Function
    End If
    
    
    SePuedeEliminar = True
    Screen.MousePointer = vbDefault
End Function

Private Sub ToolbarAyuda_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Index
        Case 1
            LanzaVisorMimeDocumento Me.hwnd, DireccionAyuda & IdPrograma & ".html"
    End Select
End Sub

Private Sub PonerModoUsuarioGnral(Modo As Byte, aplicacion As String)
Dim Rs As ADODB.Recordset
Dim Cad As String
    
    On Error Resume Next

    Cad = "select ver, creareliminar, modificar, imprimir, especial from menus_usuarios where aplicacion = " & DBSet(aplicacion, "T")
    Cad = Cad & " and codigo = " & DBSet(IdPrograma, "N") & " and codusu = " & DBSet(vUsu.id, "N")
    
    Set Rs = New ADODB.Recordset
    Rs.Open Cad, Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
    
    If Not Rs.EOF Then
        Toolbar1.Buttons(1).Enabled = DBLet(Rs!creareliminar, "N") And (Modo = 0 Or Modo = 2)
        Toolbar1.Buttons(2).Enabled = DBLet(Rs!Modificar, "N") And (Modo = 2 And Me.Data1.Recordset.RecordCount > 0)
        Toolbar1.Buttons(3).Enabled = DBLet(Rs!creareliminar, "N") And (Modo = 2 And Me.Data1.Recordset.RecordCount > 0)
        
        Toolbar1.Buttons(5).Enabled = DBLet(Rs!Ver, "N") And (Modo = 0 Or Modo = 2)
        Toolbar1.Buttons(6).Enabled = DBLet(Rs!Ver, "N") And (Modo = 0 Or Modo = 2)
        
        Toolbar1.Buttons(8).Enabled = DBLet(Rs!Imprimir, "N") And (Modo = 0 Or Modo = 2)
    End If
    
    Rs.Close
    Set Rs = Nothing
    
End Sub


Private Sub ToolbarCutoa_ButtonClick(ByVal Button As MSComctlLib.Button)
    HacerAccionToolBar Button.Index, Me.lwCuotas, 0
End Sub

Private Sub HacerAccionToolBar(Boton As Integer, ByRef Lw As ListView, Tipo As Byte)
    If Modo <> 2 Then Exit Sub
    If Boton > 1 Then
        If Lw.ListItems.Count = 0 Then Exit Sub
        If Lw.SelectedItem Is Nothing Then Exit Sub
    End If
    
    If Boton = 3 Then
        Msg = "Seguro que desea eliminar el dato de " & RecuperaValor(Lw.Tag, 1) & vbCrLf
        Msg = Msg & "Descripci�n " & Lw.SelectedItem.Text & vbCrLf
        Msg = Msg & "Importe " & Lw.SelectedItem.SubItems(1) & vbCrLf
        If MsgBox(Msg, vbQuestion + vbYesNo) <> vbYes Then Exit Sub
        
        Msg = "DELETE from " & RecuperaValor(Lw.Tag, 2)
        Msg = Msg & " WHERE codclien =" & Me.Data1.Recordset!CodClien
        Msg = Msg & " AND numlinea =" & Mid(Lw.SelectedItem.Key, 2)
        If Ejecuta(Msg) Then Lw.ListItems.Remove Lw.SelectedItem.Index
    
    Else
        If Boton = 1 Then
            NumRegElim = -1
        Else
            NumRegElim = Val(Mid(Lw.SelectedItem.Key, 2))
        End If
        frmClientesAddConcepto.Tipo = Tipo
        frmClientesAddConcepto.IdCliente = Data1.Recordset!CodClien
        frmClientesAddConcepto.Nombre = Data1.Recordset!NomClien
        frmClientesAddConcepto.IdLinea = CInt(NumRegElim)
        frmClientesAddConcepto.Show vbModal
        CargarCutoasLaborFiscal Tipo, Lw
    End If
End Sub


Private Sub ToolbarDes_ButtonClick(ByVal Button As MSComctlLib.Button)
    Desplazamiento (Button.Index)
End Sub




'****************************************************************************
'****************************************************************************
' IDIOMAS
'****************************************************************************
'****************************************************************************
Private Sub CargaIdiomas()


    Dim Languages(0 To 32) As Long
    Dim LanguageNames
    Dim siglas As String
    For I = 0 To 32
        Languages(I) = 1000 + I
    Next I
    'LanguageNames = Array("Arabic (Saudi Arabia)", "Bulgarian", "Chinese (PRC)", "Chinese (Taiwan)", "Croatian", "Czech", _
        "Danish", "Dutch", "English (United States)", "Estonian", "Finnish", "French (France)", "German (Germany)", "Greek", _
        "Hebrew", "Hungarian", "Italian (Italy)", "Japanese", "Korean", "Latvian", "Lithuanian", "Norwegian (Bokmal)", "Polish", _
        "Portuguese (Brazil)", "Portuguese (Portugal)", "Romanian", "Russian", "Slovak", "Slovenian", "Spanish (Spain - Modern Sort)", _
        "Swedish", "Thai", "Ukrainian")

    LanguageNames = Array("", "", "", "", "", "", _
        "Dinamarca", "", "", "Estonia", "Finlandia", "Francia", "Alemania", "Grecia", _
        "", "Hungria", "Italia", "", "", "", "Lituania", "Noruega", "Polonia", _
        "", "Portugal", "", "Rusia", "", "", "Espana", _
        "Suecia", "", "Ucrania")

    siglas = "|||||DK|||EE|FI|FR|DE|GR||HU|IT||||LI|NO|PL||PT||RU|||ES|SU||UC|"
    
    
    
    XtremeSuiteControls.Icons.MaskColor = &HFF00FF
    XtremeSuiteControls.Icons.LoadBitmap App.Path & "\styles\langbar.bmp", Languages, xtpImageNormal
    XtremeSuiteControls.Icons.MaskColor = -1
    

    For I = 0 To 32
        If LanguageNames(I) <> "" Then
            
            ComboBoxMarkup.AddItem "<StackPanel Orientation='Horizontal'>" & _
                "<Image VerticalAlignment='Center' Source='" & 1000 + I & "'/>" & _
                "<TextBlock Padding = '2' VerticalAlignment='Center'>" & LanguageNames(I) & "</TextBlock></StackPanel>"
            ComboBoxMarkup.ItemData(ComboBoxMarkup.NewIndex) = RecuperaValor(siglas, CInt(I))
            'ebug.Print RecuperaValor(siglas, CInt(I))
            
        End If
    Next I



End Sub



Private Sub CargarCutoasLaborFiscal(Tipo As Byte, ByRef Lw As ListView)
Dim Sql As String
    Set miRsAux = New ADODB.Recordset
    If Tipo = 0 Then
        Sql = "clientes_cuotas  "
    Else
        If Tipo = 1 Then
            Sql = "clientes_laboral"
        Else
            Sql = "clientes_fiscal"
        End If
    End If
    lblIndicador.Caption = Sql
    lblIndicador.Refresh
    Lw.ListItems.Clear
    Sql = "SELECT numlinea,conceptos.codconce,nomconce,importe,fecultfac,inactivo FROM " & Sql & " tabla,conceptos WHERE codclien =" & Me.Data1.Recordset!CodClien
    Sql = Sql & " AND tabla.codconce = conceptos.codconce  ORDER BY numlinea"
    miRsAux.Open Sql, Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
    I = 0
    While Not miRsAux.EOF
        I = I + 1
        Lw.ListItems.Add , "C" & miRsAux!numlinea, miRsAux!nomconce
        If IsNull(miRsAux!fecultfac) Then
            Sql = " "
        Else
            Sql = Format(miRsAux!fecultfac, "dd/mm/yy")
        End If
        Lw.ListItems(I).SubItems(1) = Sql
        Lw.ListItems(I).SubItems(2) = Format(DBLet(miRsAux!Importe, "N"), FormatoImporte)
        
        If miRsAux!inactivo = 1 Then
            Lw.ListItems(I).SubItems(3) = "*"
            Lw.ListItems(I).ForeColor = vbRed
        Else
            Lw.ListItems(I).SubItems(3) = " "
        End If
        miRsAux.MoveNext
    Wend
    miRsAux.Close
    Set miRsAux = Nothing
    
End Sub

Private Sub ToolbarFiscal_ButtonClick(ByVal Button As MSComctlLib.Button)
    HacerAccionToolBar Button.Index, Me.lwFiscal, 2
End Sub

Private Sub Toolbarlaboral_ButtonClick(ByVal Button As MSComctlLib.Button)
    HacerAccionToolBar Button.Index, Me.lwlaboral, 1
End Sub



'**************************************************************************************


















Private Sub CreateReportControl()
    wndReportControl.Records.DeleteAll
    wndReportControl.Populate
    If Me.Option1(0).Value Then
        CreateReportControlCRM
    ElseIf Me.Option1(1).Value Then
        CreateReportControlExpediente
    ElseIf Me.Option1(2).Value Or Me.Option1(5).Value Then
        CreateReportFacturas
    ElseIf Me.Option1(3).Value Then
        CreateReportControlDocumentos
    Else
        'Cobros
        CreateReportControlCobros
    End If
    
    
End Sub

Private Sub CreateReportControlCRM()
    'Start adding columns
    Dim Column As ReportColumn
     wndReportControl.Icons.LoadBitmap App.Path & "\Icons\bmIcons.bmp", iconArray, xtpImageNormal
    wndReportControl.Columns.DeleteAll
    'Adds a new ReportColumn to the ReportControl's collection of columns, growing the collection by 1.
    Set Column = wndReportControl.Columns.Add(COLUMN_IMPORTANCE, "Importante", 18, False)
    'The value assigned to the icon property corresponds to the index of an icon in the collection of wndReportControl.Icons
    'I.e. The icon at index=1 in the collection will be displayed in the column header.  The index of the icon depends on the
    'order it is added to the collection.  (Icons are added after the records near the bottom of the Form_Load)
    Column.Icon = COLUMN_IMPORTANCE_ICON
    Set Column = wndReportControl.Columns.Add(COLUMN_ICON, "QUITAR", 18, False)
    Column.Icon = COLUMN_MAIL_ICON
    Set Column = wndReportControl.Columns.Add(COLUMN_ATTACHMENT, "Pendiente", 18, False)
    Column.Icon = COLUMN_ATTACHMENT_ICON
    Set Column = wndReportControl.Columns.Add(3, "Fecha", 60, True)
    Set Column = wndReportControl.Columns.Add(4, "Usuario", 30, True)
    Set Column = wndReportControl.Columns.Add(5, "Observaciones", 120, True)
    Set Column = wndReportControl.Columns.Add(6, "Clave", 120, True)
    Column.Visible = False
    
    wndReportControl.PaintManager.MaxPreviewLines = 1
    wndReportControl.PaintManager.HorizontalGridStyle = xtpGridNoLines
                  
  
    'If rows are added, the rows will remain hidden until Populate is called.
    'If rows are deleted, the rows will remain visible until Populate is called.
    wndReportControl.Populate
    
    wndReportControl.SetCustomDraw xtpCustomBeforeDrawRow
End Sub

Private Sub CreateReportControlExpediente()
    'Start adding columns
    Dim Column As ReportColumn
     wndReportControl.Icons.LoadBitmap App.Path & "\Icons\bmIcons.bmp", iconArray, xtpImageNormal
    wndReportControl.Columns.DeleteAll
    'Adds a new ReportColumn to the ReportControl's collection of columns, growing the collection by 1.
    Set Column = wndReportControl.Columns.Add(COLUMN_IMPORTANCE, "Situacion", 18, False)
    'The value assigned to the icon property corresponds to the index of an icon in the collection of wndReportControl.Icons
    'I.e. The icon at index=1 in the collection will be displayed in the column header.  The index of the icon depends on the
    'order it is added to the collection.  (Icons are added after the records near the bottom of the Form_Load)
    Column.Icon = COLUMN_IMPORTANCE_ICON
    Set Column = wndReportControl.Columns.Add(COLUMN_ICON, "Pdte entregar doc", 18, False)
    Column.Icon = COLUMN_MAIL_ICON
    Set Column = wndReportControl.Columns.Add(2, "Expediente", 20, True)
    Set Column = wndReportControl.Columns.Add(3, "Fecha", 30, True)
    Set Column = wndReportControl.Columns.Add(4, "Situacion", 40, True)
    Set Column = wndReportControl.Columns.Add(5, "Importe", 20, True)
    Column.Alignment = xtpAlignmentRight
    Set Column = wndReportControl.Columns.Add(6, "Clave", 20, True)
    Column.Visible = False

    wndReportControl.PaintManager.MaxPreviewLines = 1
    wndReportControl.PaintManager.HorizontalGridStyle = xtpGridNoLines
                  
  
    'If rows are added, the rows will remain hidden until Populate is called.
    'If rows are deleted, the rows will remain visible until Populate is called.
    wndReportControl.Populate
    
    wndReportControl.SetCustomDraw xtpCustomBeforeDrawRow
End Sub


Private Sub CreateReportControlDocumentos()
    'Start adding columns
    Dim Column As ReportColumn
    wndReportControl.Icons.LoadBitmap App.Path & "\Icons\bmIcons.bmp", iconArray, xtpImageNormal
    wndReportControl.Columns.DeleteAll
    'Adds a new ReportColumn to the ReportControl's collection of columns, growing the collection by 1.
    Set Column = wndReportControl.Columns.Add(0, "Tipo", 18, False)
    Column.Icon = COLUMN_ATTACHMENT_ICON
    Set Column = wndReportControl.Columns.Add(1, "Fecha", 60, True)
    Set Column = wndReportControl.Columns.Add(2, "Descripci�n", 120, True)
    Set Column = wndReportControl.Columns.Add(3, "ID", 120, True)
    Column.Visible = False
    
    wndReportControl.PaintManager.MaxPreviewLines = 1
    wndReportControl.PaintManager.HorizontalGridStyle = xtpGridNoLines
                  
  
    'If rows are added, the rows will remain hidden until Populate is called.
    'If rows are deleted, the rows will remain visible until Populate is called.
    wndReportControl.Populate
    
    wndReportControl.SetCustomDraw xtpCustomBeforeDrawRow
End Sub


Private Sub CreateReportFacturas()
    'Start adding columns
    Dim Column As ReportColumn
     wndReportControl.Icons.LoadBitmap App.Path & "\Icons\bmIcons.bmp", iconArray, xtpImageNormal
    wndReportControl.Columns.DeleteAll
    'Adds a new ReportColumn to the ReportControl's collection of columns, growing the collection by 1.
    Set Column = wndReportControl.Columns.Add(COLUMN_IMPORTANCE, "Importante", 18, False)
    'The value assigned to the icon property corresponds to the index of an icon in the collection of wndReportControl.Icons
    'I.e. The icon at index=1 in the collection will be displayed in the column header.  The index of the icon depends on the
    'order it is added to the collection.  (Icons are added after the records near the bottom of the Form_Load)
    Column.Icon = COLUMN_IMPORTANCE_ICON
    Set Column = wndReportControl.Columns.Add(COLUMN_ICON, "QUITAR", 18, False)
    Column.Icon = COLUMN_MAIL_ICON
    Set Column = wndReportControl.Columns.Add(COLUMN_ATTACHMENT, "Pendiente", 18, False)
    Column.Icon = COLUMN_ATTACHMENT_ICON
    Set Column = wndReportControl.Columns.Add(3, "ID", 30, True)
    Set Column = wndReportControl.Columns.Add(4, "Fecha", 50, True)
    Set Column = wndReportControl.Columns.Add(5, "Importe", 30, True)
    Column.Alignment = xtpAlignmentRight
    Set Column = wndReportControl.Columns.Add(6, "", 120, True)
    Column.Visible = False
    
    wndReportControl.PaintManager.MaxPreviewLines = 1
    wndReportControl.PaintManager.HorizontalGridStyle = xtpGridNoLines
                  
  
    'If rows are added, the rows will remain hidden until Populate is called.
    'If rows are deleted, the rows will remain visible until Populate is called.
    wndReportControl.Populate
    
    wndReportControl.SetCustomDraw xtpCustomBeforeDrawRow
End Sub



Private Sub CreateReportControlCobros()
    'Start adding columns
    Dim Column As ReportColumn
     wndReportControl.Icons.LoadBitmap App.Path & "\Icons\bmIcons.bmp", iconArray, xtpImageNormal
    wndReportControl.Columns.DeleteAll
    'Adds a new ReportColumn to the ReportControl's collection of columns, growing the collection by 1.
    Set Column = wndReportControl.Columns.Add(COLUMN_IMPORTANCE, "Situacion", 18, False)
    'The value assigned to the icon property corresponds to the index of an icon in the collection of wndReportControl.Icons
    'I.e. The icon at index=1 in the collection will be displayed in the column header.  The index of the icon depends on the
    'order it is added to the collection.  (Icons are added after the records near the bottom of the Form_Load)
    Column.Icon = COLUMN_IMPORTANCE_ICON
    Set Column = wndReportControl.Columns.Add(COLUMN_ICON, "Tipo", 18, False)
    Column.Icon = COLUMN_MAIL_ICON
    Set Column = wndReportControl.Columns.Add(2, "Factura", 15, True)
    Set Column = wndReportControl.Columns.Add(3, "Fecha", 15, True)
    Set Column = wndReportControl.Columns.Add(4, "Venci.", 15, True)
    Set Column = wndReportControl.Columns.Add(5, "Forma pago", 40, True)
    Set Column = wndReportControl.Columns.Add(6, "Pendiente", 10, True)
    Column.Alignment = xtpAlignmentRight
    Set Column = wndReportControl.Columns.Add(7, "Clave", 10, True)
    Column.Visible = False

    wndReportControl.PaintManager.MaxPreviewLines = 1
    wndReportControl.PaintManager.HorizontalGridStyle = xtpGridNoLines
                  
  
    'If rows are added, the rows will remain hidden until Populate is called.
    'If rows are deleted, the rows will remain visible until Populate is called.
    wndReportControl.Populate
    
    wndReportControl.SetCustomDraw xtpCustomBeforeDrawRow
End Sub





'Cuando modifiquemos o insertemos, pondremos el SQL entero
Public Sub CargaDatos()
Dim Cad As String


    wndReportControl.ShowItemsInGroups = False
    wndReportControl.Records.DeleteAll
    
    
    Set miRsAux = New ADODB.Recordset
    Total = 0
    Me.txtTotal.Text = ""
    txtTotal.Refresh
    
    If Me.Option1(0).Value Then
        
        Cad = "SELECT  if(  importancia=10  , 7"
        Cad = Cad & ",if(  importancia=8  ,2"
        Cad = Cad & ", if(  importancia=5  , 6"
        Cad = Cad & ", if(  importancia=2  , 5"
        Cad = Cad & " , 0))) ) importancia, id , CodClien, fechahora, Usuario,  tipoaccion, Observaciones"
        Cad = Cad & " from clientes_historial where codclien=" & Data1.Recordset!CodClien
        
        Cad = Cad & " ORDER BY fechahora desc"
    
        k = 5 'para las pruebas de icono. Borrar si eso
    ElseIf Option1(1).Value Then
        Cad = "select e.numexped,e.anoexped,fecexped,nomsitua,sum(coalesce(importe,0)) importe"
        Cad = Cad & " ,0 importancia,e.tiporegi ,documentacionEntregada"
        Cad = Cad & " from expedientes e inner join tipositexped on e.codsitua=tipositexped.codsitua"
        Cad = Cad & " left join expedientes_lineas l on e.tiporegi =l.tiporegi AND  e.numexped  =l.numexped and   e.anoexped=l.anoexped"
        Cad = Cad & " WHERE e.codclien=" & Data1.Recordset!CodClien
        Cad = Cad & " AND fecexped >=" & DBSet(DateTimePicker1.Tag, "F")
        Cad = Cad & " group by 1,2 order by fecexped desc"
    ElseIf Option1(2).Value Or Option1(5).Value Then
        'Facturas
        
        Cad = "select  numserie,nomregis,factcli.numfactu,fecfactu,totfaccl,0 importancia, numexped ,fecexped"
        Cad = Cad & " FROM factcli, contadores"
        Cad = Cad & " WHERE factcli.numserie = contadores.serfactur AND codclien =" & Data1.Recordset!CodClien
        Cad = Cad & " AND factcli.numserie " & IIf(Me.Option1(5).Value, "=", "<>") & " 'CUO'"
        Cad = Cad & " AND factcli.fecfactu  >=" & DBSet(DateTimePicker1.Tag, "F")
        Cad = Cad & " ORDER BY 1,3"
    ElseIf Option1(3).Value Then
        'Documentos
        Cad = "SELECT 0 importancia, 0 socio ,descDoc,Fecha,id,ext from clientes_doc where codclien=" & Data1.Recordset!CodClien
        Cad = Cad & " ORDER BY id"
    Else
        'Cobros
        '--------------------------------
        
        Cad = "select if(now()>fecvenci,2,0) "
        
        Cad = Cad & " vencido,concat(numserie,'-',right(concat('00000000',numfactu),8)) quefactura,"
        Cad = Cad & " numorden,fecfactu,fecvenci,ImpVenci + coalesce(gastos, 0) - coalesce(impcobro, 0) as pendiente ,nomforpa,"
        Cad = Cad & "numserie,numfactu,tipoformapago,cobros.codforpa, if(coalesce(gastos,0)>0,2,0) importancia,gastos"
        
        Cad = Cad & " from ariconta" & vParam.Numconta & ".cobros,ariconta" & vParam.Numconta & ".formapago "
        Cad = Cad & " ,ariconta" & vParam.Numconta & ".tipofpago "
        Cad = Cad & " where codmacta IN ('" & DevuelveCuentaContableCliente(True, CStr(Data1.Recordset!CodClien))
        Cad = Cad & " ','" & DevuelveCuentaContableCliente(False, CStr(Data1.Recordset!CodClien)) & "')"
        Cad = Cad & " AND cobros.codforpa=formapago.codforpa and tipofpago.tipoformapago = formapago.tipforpa AND "
        Cad = Cad & " ImpVenci + coalesce(gastos, 0) - coalesce(impcobro, 0) <> 0"
        Cad = Cad & " ORDER BY fecvenci desc"
    End If
    miRsAux.Open Cad, Conn, adOpenForwardOnly, adLockPessimistic, adCmdText
    If miRsAux.EOF Then
        wndReportControl.Populate
    Else
        While Not miRsAux.EOF
            AddRecord2
            
            miRsAux.MoveNext
        Wend
    End If
    miRsAux.Close
        
    If Total <> 0 Then txtTotal.Text = Format(Total, FormatoImporte)
        
End Sub


'socio, pendiente , nombre, matricula,licencia
'Leera los datos de mirsaux
Private Sub AddRecord2()
Dim Importance As Integer
Dim Record As ReportRecord
Dim Socio As Boolean
Dim OtroIcono As Boolean
Dim Icono As Integer
Dim C As String
Dim Prioridad As Byte
Dim Aux As String
Dim ParaExped As String

    'Adds a new Record to the ReportControl's collection of records, this record will
    'automatically be attached to a row and displayed with the Populate method
    Set Record = wndReportControl.Records.Add()
    
    Dim Item As ReportRecordItem
    
    Set Item = Record.AddItem("")
    If Me.Option1(3).Value Then
        'Documentos
         Item.Icon = IIf(miRsAux!ext = "jpg", COLUMN_ATTACHMENT_NORMAL_ICON, COLUMN_ATTACHMENT_ICON)
        
    
    Else
    
        If Me.Option1(0).Value Then
            'CRM
            Importance = miRsAux!importancia
            Item.Icon = Importance
            C = "Trivial"
            If Importance = 7 Then C = "Urgente"
            If Importance = 2 Then C = "Alta"
            If Importance = 6 Then C = "Media"
            If Importance = 5 Then C = "Baja"
            Item.ToolTip = C
            
            'Item.Icon = K
            'K = K + 1
        Else
        
      
            'RESTO
                If miRsAux!importancia = 1 Then
                    Importance = IMPORTANCE_HIGH
                ElseIf miRsAux!importancia = 2 Then
                    Importance = IMPORTANCE_LOW
                Else
                    
                    Importance = IMPORTANCE_NORMAL
                End If
                
                If (Importance = IMPORTANCE_HIGH) Then
                    Item.Icon = RECORD_IMPORTANCE_HIGH_ICON
                    Item.SortPriority = IMPORTANCE_HIGH
                
                End If
                If (Importance = IMPORTANCE_LOW) Then
                    Item.Icon = RECORD_IMPORTANCE_LOW_ICON
                    Item.SortPriority = IMPORTANCE_LOW
                
                    If Me.Option1(4).Value Then Item.ToolTip = "Gastos"
                End If
                If (Importance = IMPORTANCE_NORMAL) Then
                    
                    Item.SortPriority = IMPORTANCE_NORMAL
                End If
        End If
        
    End If
      
      
    ParaExped = ""
    If Not Me.Option1(3).Value Then
        'Para los documentos NO necesto esta columna
        Set Item = Record.AddItem("")
        
        Icono = 0
        Prioridad = 0
        If Me.Option1(4).Value Then
            If miRsAux!tipoformapago = 4 Then Socio = True
            Icono = IIf(Socio, RECORD_UNREAD_MAIL_ICON, RECORD_READ_MAIL_ICON)
            Prioridad = IIf(Socio, RECORD_UNREAD_MAIL_ICON, RECORD_READ_MAIL_ICON)
            Item.ToolTip = IIf(Socio, "Domiciliado", "Recibo cobrador")
        ElseIf Me.Option1(0).Value Then
              'URGENTE
              If 7 = miRsAux!importancia Then
                  Icono = 7
                  Prioridad = 1
              End If
          
        ElseIf Me.Option1(2).Value Then
              
              
              If miRsAux!numSerie = "FEX" Then
                  Icono = RECORD_IMPORTANCE_LOW_ICON
                  Prioridad = 2
                  'Vemos si el expediente vinculado esta con documentacion pendeiente entrega
                  If DBLet(miRsAux!numexped, "N") > 0 Then
                        Aux = "fecexped = " & DBSet(miRsAux!fecexped, "F") & " AND numexped "
                        Aux = DevuelveDesdeBD("documentacionEntregada", "expedientes", Aux, miRsAux!numexped)
                        If Val(Aux) > 0 Then
                            If Aux = "1" Then
                                Icono = IMPORTANCE_HIGH
                                Prioridad = 2
                                ParaExped = "EXP: " & Format(miRsAux!numexped, "00000") & "   Pdte entrega documentacion"
                                Item.ToolTip = ParaExped
                            End If
                        End If
                  End If
                  
              ElseIf miRsAux!numSerie = "FDI" Then
                  Icono = RECORD_READ_MAIL_ICON
                  Prioridad = 4
              ElseIf miRsAux!numSerie = "FRT" Then
                  Icono = RECORD_UNREAD_MAIL_ICON
                  Prioridad = 5
              End If
              If ParaExped = "" Then Item.ToolTip = miRsAux!numSerie
        
        
        Else
            If Me.Option1(1).Value Then
                If DBLet(miRsAux!documentacionEntregada, "N") = 1 Then
                    Icono = IMPORTANCE_HIGH
                    Prioridad = 5
                    Item.ToolTip = "Pendiente entregar documentacion"
                    Record.Item(0).Caption = "P"
                    Record.Item(0).BackColor = vbRed
                End If
            
            End If
        
        End If
        
        Item.SortPriority = Prioridad
        Item.Icon = Icono
             
    End If
           
           
       
    If Me.Option1(0).Value Then
        'Tipo de mensaje
        Set Item = Record.AddItem("")
        OtroIcono = True
        
        Item.SortPriority = miRsAux!tipoaccion
        Icono = 4
        C = "eMail"
        If miRsAux!tipoaccion = 4 Then Icono = 8: C = "Tel�fono"
        If miRsAux!tipoaccion = 0 Then Icono = 10: C = "Interna"
        Item.Icon = Icono
        Item.ToolTip = C
    End If
    'Para fechas
    
    If Me.Option1(0).Value Then
        Set Item = Record.AddItem("")

        GetDate Item, DatePart("w", miRsAux!fechahora), DatePart("d", miRsAux!fechahora), DatePart("m", miRsAux!fechahora), DatePart("yyyy", miRsAux!fechahora), DatePart("h", miRsAux!fechahora), DatePart("n", miRsAux!fechahora)

        
                
        ' '  codclien,nomclien,nifclien,matricula,licencia,essocio "
        Record.AddItem DBLet(miRsAux!Usuario, "T")
        Record.AddItem DBLet(miRsAux!Observaciones, "T")
                
        Record.AddItem miRsAux!id & "|"
                
                
    ElseIf Me.Option1(1).Value Then
            
        ' '  codclien,nomclien,nifclien,matricula,licencia,essocio "
        Record.AddItem Format(miRsAux!numexped, "00000") & "/" & miRsAux!anoexped
        Set Item = Record.AddItem("")
        GetDate Item, DatePart("w", miRsAux!fecexped), DatePart("d", miRsAux!fecexped), DatePart("m", miRsAux!fecexped), DatePart("yyyy", miRsAux!fecexped), DatePart("h", Now), DatePart("n", Now)
        'Item.Value = miRsAux!fecexped
        
        Record.AddItem CStr(miRsAux!nomsitua)
        Record.AddItem Format(miRsAux!Importe, FormatoImporte)
        Total = Total + miRsAux!Importe
        Record.AddItem miRsAux!TipoRegi & "|" & miRsAux!numexped & "|" & miRsAux!anoexped & "|"
    
    
    ElseIf Me.Option1(2).Value Or Me.Option1(5).Value Then
        Set Item = Record.AddItem(IIf(ParaExped <> "", "Pdte entrega documentos", ""))
        If ParaExped <> "" Then Item.BackColor = vbRed
            
        'numserie,nomregis,factcli.numfactu,fecfactu,totfaccl
        Record.AddItem miRsAux!numSerie & Format(miRsAux!NumFactu, "0000000")
        Set Item = Record.AddItem("")
        GetDate Item, DatePart("w", miRsAux!Fecfactu), DatePart("d", miRsAux!Fecfactu), DatePart("m", miRsAux!Fecfactu), DatePart("yyyy", miRsAux!Fecfactu)
        

        Record.AddItem Format(miRsAux!totfaccl, FormatoImporte)
        Total = Total + DBLet(miRsAux!totfaccl, "N")
        Record.AddItem CStr(miRsAux!numSerie & "|" & miRsAux!NumFactu & "|" & miRsAux!Fecfactu & "|")
    
            
        
    
    ElseIf Me.Option1(3).Value Then
        'dcoumentos
        Set Item = Record.AddItem("")
        GetDate Item, DatePart("w", miRsAux!Fecha), DatePart("d", miRsAux!Fecha), DatePart("m", miRsAux!Fecha), DatePart("yyyy", miRsAux!Fecha), DatePart("h", miRsAux!Fecha), DatePart("n", miRsAux!Fecha)
        
        
        Record.AddItem DBLet(miRsAux!descDoc, "T")
        Record.AddItem DBLet(miRsAux!id, "T")
        
    Else
        'Cobros
        Set Item = Record.AddItem("")
        Item.Caption = DBLet(miRsAux!quefactura, "T")
        Item.Value = CStr(miRsAux!numSerie & ":" & miRsAux!NumFactu & ":" & miRsAux!numorden & ":")
        
        
        Set Item = Record.AddItem("")
        Item.Caption = Format(miRsAux!Fecfactu, "dd/mm/yyyy")
        Item.Value = CDate(miRsAux!Fecfactu)
        
        Set Item = Record.AddItem("")
        Item.Caption = Format(miRsAux!FecVenci, "dd/mm/yyyy")
        Item.Value = CDate(miRsAux!FecVenci)
        If miRsAux!FecVenci > Now Then Item.ForeColor = vbBlue: Item.Bold = True
        
        'Mostraremos la descripcion, pero tambien nos guardaremos el tipo: si es efectivo...
        Set Item = Record.AddItem(CInt(miRsAux!tipoformapago))
        Item.Caption = DBLet(miRsAux!nomforpa, "T")
        
        
        
        Set Item = Record.AddItem("")
        Item.Caption = Format(miRsAux!pendiente, FormatoImporte)
        Item.Value = CDate(miRsAux!pendiente)
        Total = Total + miRsAux!pendiente
        
        Item.Tag = DBLet(miRsAux!Gastos, "N")
        
        Record.AddItem CStr(miRsAux!numSerie & "|" & miRsAux!NumFactu & "|" & miRsAux!Fecfactu & "|" & miRsAux!numorden & "|")
    End If
    'Adds the PreviewText to the Record.  PreviewText is the text displayed for the ReportRecord while in PreviewMode
    Record.PreviewText = "ID: " & Data1.Recordset!CodClien
    wndReportControl.Populate
End Sub









'Subroutine that randomly generates a date.  If you group by a column with a date, the records will
'be grouped by how recent the date is in respect to the current date
Public Sub GetDate(ByVal Item As ReportRecordItem, Optional Week = -1, Optional Day = -1, Optional Month = -1, Optional Year = -1, _
                        Optional Hour = -1, Optional Minute = -1)
    Dim WeekDay As String
    Dim TimeOfDay As String
    

        
    'Random number fomula
    'Int((upperbound - lowerbound + 1) * Rnd + lowerbound)
    

    
    'Determine the week text
    Select Case Week
        Case 1:
            WeekDay = "Dom"
        Case 2:
            WeekDay = "Lun"
        Case 3:
            WeekDay = "Mar"
        Case 4:
            WeekDay = "Mie"
        Case 5:
            WeekDay = "Jue"
        Case 6:
            WeekDay = "Vie"
        Case 7:
            WeekDay = "Sab"
    End Select
    
    'If no month was provided, randomly select a month
    If (Month = -1) Then
        Month = Int((DatePart("m", Now) - 1 + 1) * Rnd + 1)
    End If
     
    'If no day was provided, randomly select a day
    If (Day = -1) Then
        Day = Int((31 - 1 + 1) * Rnd + 1)
    End If
    
    'If no year was provided, randomly select a year
    If (Year = -1) Then
        Year = Int((2004 - 2003 + 1) * Rnd + 2003)
    End If
    
    'If no hour was provided, randomly select a hour
    If (Hour = -1) Then
       ' Hour = Int((12 - 1 + 1) * Rnd + 1)
    End If
    
    'If no minute was provided, randomly select a minute
    If (Minute = -1) Then
        Minute = Int((60 - 10 + 1) * Rnd + 10)
    End If
     

    
    If Hour >= 12 Then
        TimeOfDay = "PM"
    Else
        TimeOfDay = "AM"
    End If
       
    'This block of code determines the GroupPriority, GroupCaption, and SortPriority of the Item
    'based on the date or generated provided.  If the date is the current date, then this Item will
    'have High group and sort priority, and will be given the "Date: Today" groupcaption.
    If (Month = DatePart("m", Now)) And (Day = DatePart("d", Now)) And (Year = DatePart("yyyy", Now)) Then
'        Item.GroupCaption = "Date: Today"
'        Item.GroupPriority = 0
'        Item.SortPriority = 0
    ElseIf (Month = DatePart("m", Now)) And (Year = DatePart("yyyy", Now)) Then
'        Item.GroupCaption = "Date: This Month"
'        Item.GroupPriority = 1
'        Item.SortPriority = 1
    ElseIf (Year = DatePart("yyyy", Now)) Then
'        Item.GroupCaption = "Date: This Year"
'        Item.GroupPriority = 2
'        Item.SortPriority = 2
    Else
'        Item.GroupCaption = "Date: Older"
'        Item.GroupPriority = 3
'        Item.SortPriority = 3
    End If
    
    'Assign the DateTime string to the value of the ReportRecordItem
    If Hour >= 0 Then
        Item.Value = WeekDay & " " & Format(Day, "00") & "/" & Format(Month, "00") & "/" & Year & " " & Hour & ":" & Minute & " " & TimeOfDay
    Else
        Item.Value = WeekDay & " " & Format(Day, "00") & "/" & Format(Month, "00") & "/" & Year
    End If
End Sub

Private Sub wndReportControl_RowDblClick(ByVal Row As XtremeReportControl.IReportRow, ByVal Item As XtremeReportControl.IReportRecordItem)
Dim Auxi As String
    If Me.Option1(3).Value Then
        AccionReportControl Row.Record(3).Caption
    ElseIf Me.Option1(4).Value Then
        'Cobro factura por caja
        If Row.Record(5).Value <> 0 Then
            CadB = "S�lo se permiten cobros sobre efectivo." & vbCrLf & vbCrLf & "�Desea cambiar la forma de pago?"
            If MsgBox(CadB, vbQuestion + vbYesNo) <> vbYes Then Exit Sub
            
            If Not CambiarFormaDePago(True) Then Exit Sub
            
        End If
        
        'n� Vto
        CadB = CStr(Row.Record(2).Value)
        CadB = vUsu.Login & "|" & Row.Record(2).Caption & "|" & CadB & "|" & Row.Record(3).Caption & "|" & Row.Record(6).Caption & "|"
        CadB = CadB & Text1(1).Text & "|"
        AccionReportControl CadB
        
    Else
        AccionReportControl Row.Record(6).Caption
        
    End If
End Sub


'Los guarda en CADB

Private Sub AccionReportControl(Parametros As String)
    
         
    If Val(Data1.Recordset!situclien) > 0 Then
        
        CadB = "baja"
        If Val(Data1.Recordset!situclien) = 9 Then CadB = "bloqueado"
        CadB = "Situacion cliente: " & CadB
        MsgBox CadB, vbExclamation
        Exit Sub
    End If
    
     
    
    
    If Me.Option1(1).Value Or Me.Option1(2).Value Or Me.Option1(5).Value Then
        'Si tiene cobros pendientes , avisar
        If TieneCobrosPendientes(Text1(4).Text, CadB) Then
            CadB = "Tiene vencimientos pendientes de cobro. Total:  " & CadB & vbCrLf & vbCrLf & "�Continuar?"
            If MsgBox(CadB, vbQuestion + vbYesNoCancel) <> vbYes Then Exit Sub
        End If
    End If
    Screen.MousePointer = vbHourglass
    If Me.Option1(0).Value Then
        frmClienteAcciones.NumeroAccion = Parametros
        frmClienteAcciones.Show vbModal
        
         CadB = "importancia = 10 AND codclien =  " & Text1(4).Text & " AND 1"
        CadB = DevuelveDesdeBD("coalesce(observaciones,'URGENTE')", "clientes_historial", CadB, " 1 ORDER BY fechahora desc ")
        lblUrgente.Visible = CadB <> ""
        
    ElseIf Me.Option1(1).Value Then
        frmExpediente.numExpediente = Parametros
        frmExpediente.Show vbModal
    ElseIf Me.Option1(2).Value Or Me.Option1(5).Value Then
        frmFacturasCli.FACTURA = Parametros
        frmFacturasCli.Show vbModal
    ElseIf Me.Option1(3).Value Then
        frmClienDoc.IdCliente = CLng(Text1(4).Text)
        frmClienDoc.IdLinea = CInt(Parametros)
        frmClienDoc.Show vbModal
    Else
        'Cobros
        frmMensajes.Parametros = Parametros
        frmMensajes.Opcion = 6
        frmMensajes.Show vbModal

    End If
    CargaDatos
    Screen.MousePointer = vbDefault
End Sub


Private Sub DblClickListview(ByRef Lw As ListView)
Dim Sql As String
Dim Cad As String

    If Lw.ListItems.Count = 0 Then Exit Sub
    If Lw.SelectedItem Is Nothing Then Exit Sub
    
    
    Cad = "Va a pasar a    "
    If Lw.SelectedItem.SubItems(3) = "*" Then
        Cad = Cad & "ACTIVO"
    Else
        Cad = Cad & "INACTIVO"
    End If
    Cad = Cad & "     el concepto de  "
    
    If Lw.Name = "lwCuotas" Then
        Cad = Cad & "cuota"
    Else
        If Lw.Name = "lwlaboral" Then
            Cad = Cad & "laboral"
        Else
            Cad = Cad & "fiscal"
        End If
    End If
    Cad = Cad & ": " & vbCrLf & vbCrLf
    Cad = Cad & "    -" & Lw.SelectedItem.Text & vbCrLf
    

    If MsgBox(Cad, vbQuestion + vbYesNoCancel) <> vbYes Then Exit Sub
    
    If Lw.Name = "lwCuotas" Then
        Cad = "clientes_cuotas"
        I = 0
    Else
        If Lw.Name = "lwlaboral" Then
            Cad = "clientes_laboral"
            I = 1
        Else
            Cad = "clientes_fiscal"
            I = 2
        End If
    End If
    Cad = "UPDATE " & Cad & " SET inactivo =" & IIf(Lw.SelectedItem.SubItems(3) = "*", "0", "1")
    Cad = Cad & " WHERE codclien =" & Data1.Recordset!CodClien
    Cad = Cad & " AND numlinea =" & Mid(Lw.SelectedItem.Key, 2)
    If Ejecuta(Cad) Then CargarCutoasLaborFiscal CByte(I), Lw
End Sub


Private Sub QuitarGastosVto()
Dim Codigo As String


    With Me.wndReportControl.SelectedRows(0)
     
        Codigo = "UPDATE ariconta" & vParam.Numconta & ".cobros SET "
        Codigo = Codigo & " gastos = NULL"
        Codigo = Codigo & " WHERE numserie =" & DBSet(RecuperaValor(.Record(7).Caption, 1), "T")
        Codigo = Codigo & " AND numfactu =" & DBSet(RecuperaValor(.Record(7).Caption, 2), "N")
        Codigo = Codigo & " AND fecfactu =" & DBSet(RecuperaValor(.Record(7).Caption, 3), "F")
        Codigo = Codigo & " AND numorden =" & DBSet(RecuperaValor(.Record(7).Caption, 4), "N")
        If Ejecuta(Codigo) Then
        
        
            Codigo = "Cliente: " & Text1(4).Text & " " & Text1(1).Text & vbCrLf
            Codigo = Codigo & .Record(2).Caption & " de " & .Record(3).Caption
            Codigo = Codigo & "Gastos : " & .Record(6).Tag
            Codigo = Codigo & "A cobrar: " & .Record(6).Caption
            vLog.Insertar 11, vUsu, Codigo
        
        End If


    End With

End Sub



Private Function CambiarFormaDePago(PonerEfectivo As Boolean) As Boolean
Dim Auxi As String
    
           CambiarFormaDePago = False
            CadB = Replace(CStr(wndReportControl.SelectedRows(0).Record(2).Value), ":", "|")
            Auxi = "numserie= " & DBSet(RecuperaValor(CadB, 1), "T")
            Auxi = Auxi & " AND numfactu = " & RecuperaValor(CadB, 2)
            Auxi = Auxi & " AND numorden = " & RecuperaValor(CadB, 3)
            Auxi = Auxi & " AND fecfactu = " & DBSet(wndReportControl.SelectedRows(0).Record(3).Caption, "F")
            CadB = DevuelveDesdeBD("codrem", "ariconta" & vParam.Numconta & ".cobros", Auxi & " AND 1", "1")
            If CadB <> "" Then
                MsgBox "Pertenece a una remesa: " & CadB, vbExclamation
                Exit Function
            End If

            'Habria que parametrizarlo
            CadB = IIf(PonerEfectivo, 1, 2)

            CadB = "UPDATE ariconta" & vParam.Numconta & ".cobros set codforpa = " & CadB & " WHERE " & Auxi
            If Not Ejecuta(CadB) Then Exit Function
            
            
            CadB = "Cliente: " & Text1(4).Text & " " & Text1(1).Text & vbCrLf
            CadB = CadB & wndReportControl.SelectedRows(0).Record(2).Caption & " de " & wndReportControl.SelectedRows(0).Record(3).Value & vbCrLf
            CadB = CadB & "Forma de pago establecida: " & IIf(PonerEfectivo, "efectivo", "Recibo cobrador")
            vLog.Insertar 14, vUsu, CadB
            
            
            CambiarFormaDePago = True
   
            
End Function

