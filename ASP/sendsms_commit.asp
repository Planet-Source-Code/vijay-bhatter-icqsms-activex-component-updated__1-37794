<% Response.Buffer = false %>
<html>
<head>
<title>Send ICQ SMS</title>
</head>
<body>

        <center>
<font face="Verdana, Arial, Helvetica, sans-serif" size="2">
        <% 
name = Request.Form("name")
MobileNumber = Request.Form("mobile")
Prefix = Request.Form("prefix")
strSMSMessage = "From:" & name & " " & Request.Form("message")

%>
<br>
<%
set ICQSMS = CreateObject("ICQSMS.SMS")

ICQSMS.DeveloperName = "Vijay Bhatter"
ICQSMS.DeveloperEmail = "vijay@cyberax.net"

'Change the below mentioned ICQ with yours
'Syntax: ICQSMS.SendSMS ICQUIN,Password,CountryCOde,MobileNumber,Message
'eg:

ICQSMS.SendSMS "165456752","yourpassword",Prefix, MobileNumber,strSMSMessage 


set ICQSMS = nothing

%>
 
<b>Your message has been sent</b><br>
<br>
<br>
<br>
<a href="icqsmsform.htm">Back</a>
</font>
</center>
</body>
</html>