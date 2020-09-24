VERSION 5.00
Begin VB.Form frmMain 
   BackColor       =   &H00C0FFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "ICQ SMS Demo"
   ClientHeight    =   3045
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3750
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3045
   ScaleWidth      =   3750
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer timSent 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   3195
      Top             =   585
   End
   Begin VB.CommandButton cmdSend 
      Caption         =   "Send"
      Height          =   330
      Left            =   2565
      TabIndex        =   5
      Top             =   2655
      Width           =   1095
   End
   Begin VB.TextBox txtMessage 
      Height          =   780
      Left            =   90
      TabIndex        =   4
      Top             =   1845
      Width           =   3570
   End
   Begin VB.TextBox txtMobileNumber 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   1395
      TabIndex        =   3
      Top             =   1035
      Width           =   2310
   End
   Begin VB.TextBox txtCountryCode 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   90
      TabIndex        =   2
      Top             =   1035
      Width           =   1185
   End
   Begin VB.TextBox txtPassword 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   2205
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   315
      Width           =   1410
   End
   Begin VB.TextBox txtICQUIN 
      Height          =   285
      Left            =   810
      TabIndex        =   0
      Top             =   315
      Width           =   1320
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "eg: 9830012345"
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   1395
      TabIndex        =   14
      Top             =   1395
      Width           =   1170
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "eg. 91 for India"
      ForeColor       =   &H000000FF&
      Height          =   195
      Left            =   90
      TabIndex        =   13
      Top             =   1395
      Width           =   1065
   End
   Begin VB.Label Label7 
      Appearance      =   0  'Flat
      BackColor       =   &H0080C0FF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Maximum 160 chars"
      ForeColor       =   &H80000008&
      Height          =   240
      Left            =   90
      TabIndex        =   12
      Top             =   2700
      Width           =   2355
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "Message:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   90
      TabIndex        =   11
      Top             =   1620
      Width           =   1320
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Mobile No."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   1395
      TabIndex        =   10
      Top             =   810
      Width           =   2310
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Country Code"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   90
      TabIndex        =   9
      Top             =   810
      Width           =   1155
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Password:"
      Height          =   195
      Left            =   2205
      TabIndex        =   8
      Top             =   90
      Width           =   915
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "ICQ UIN#"
      Height          =   195
      Left            =   855
      TabIndex        =   7
      Top             =   90
      Width           =   825
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "SMS"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   225
      TabIndex        =   6
      Top             =   540
      Width           =   420
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   180
      Picture         =   "frmMain.frx":058A
      Top             =   45
      Width           =   480
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H000080FF&
      BackStyle       =   1  'Opaque
      Height          =   780
      Left            =   0
      Top             =   0
      Width           =   3750
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim MySMS As New ICQSMS.SMS

Private Sub cmdSend_Click()
cmdSend.Enabled = False
timSent.Enabled = True


'You can even add your validation code before firing SMS

'Fire SMS
    MySMS.SendSMS Trim(txtICQUIN), _
    Trim(txtPassword), Trim(txtCountryCode), _
    Trim(txtMobileNumber), Trim(txtMessage)

End Sub

Private Sub Form_Load()
Dim intTimeOut As Integer

    Set MySMS = New ICQSMS.SMS
    
    MySMS.DeveloperEmail = "vijay@cyberax.net"
    MySMS.DeveloperName = "Vijay Bhatter"
    
    ' Set the timeout to higher number
    ' value if you have slower connections
    intTimeOut = 20 'in seconds
    
    MySMS.RequestTimeOut = intTimeOut

    timSent.Interval = intTimeOut * 1000

End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set MySMS = Nothing
End Sub



Private Sub timSent_Timer()
    timSent.Enabled = False
    cmdSend.Enabled = True
    MsgBox "Message Sent"
End Sub
