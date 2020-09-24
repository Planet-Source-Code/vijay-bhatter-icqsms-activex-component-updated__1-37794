VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "SMS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Option Explicit

Private objForm As Object

Private Sub Class_Initialize()
    Set objForm = New frmICQ
End Sub

Public Sub SendSMS(IcqUIN, Password, Prefix, MobileNumber, Message As Variant)

On Error Resume Next

If objForm.lblDeveloperEmail.Caption = "vijay@cyberax.net" And objForm.lblDeveloperName.Caption = "Vijay Bhatter" Then
    'opens the registry page and say your are online
    objForm.Inet1.OpenURL "http://web.icq.com/karma/dologin/1,,,00.html?uService=1&uLogin=" + IcqUIN + "&uPassword=" + Password
    'send the message to the phone number you want
    'objForm.Inet1.OpenURL "http://web.icq.com/sms/send_history/1,,,00.html?target=msghistory&prefix=+" + Prefix + "&carrier=aaa&tophone=" + MobileNumber + "&msg=" + Message
    objForm.Inet1.OpenURL "https://web.icq.com/secure/sms/send_history/1,,,00.html?target=msghistory&prefix=+" + Prefix + "&carrier=aaa&tophone=" + MobileNumber + "&msg=" + Message
    Set objForm = Nothing
End If

End Sub

Public Property Let DeveloperName(Name As String)
    objForm.lblDeveloperName.Caption = Name
End Property
Public Property Let DeveloperEmail(Email As String)
    objForm.lblDeveloperEmail.Caption = Email
End Property

Public Property Let RequestTimeOut(intRTO As Integer)
    objForm.Inet1.RequestTimeOut = intRTO
End Property
