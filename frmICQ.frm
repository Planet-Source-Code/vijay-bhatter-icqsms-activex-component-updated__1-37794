VERSION 5.00
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Begin VB.Form frmICQ 
   Caption         =   "ICQ SMS Sender"
   ClientHeight    =   795
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   2670
   LinkTopic       =   "Form1"
   ScaleHeight     =   795
   ScaleWidth      =   2670
   StartUpPosition =   3  'Windows Default
   Begin InetCtlsObjects.Inet Inet1 
      Left            =   45
      Top             =   45
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      RequestTimeout  =   15
   End
   Begin VB.Label lblDeveloperEmail 
      Height          =   195
      Left            =   765
      TabIndex        =   1
      Top             =   495
      Width           =   1635
   End
   Begin VB.Label lblDeveloperName 
      Height          =   240
      Left            =   765
      TabIndex        =   0
      Top             =   180
      Width           =   1815
   End
End
Attribute VB_Name = "frmICQ"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
