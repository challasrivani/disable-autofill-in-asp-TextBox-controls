<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Disable Autofill for aspTextbox</title>
    <link href="~/Styles/style_login1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        
        input:-webkit-autofill {
            -webkit-box-shadow: 0 0 0 1000px #808089 inset !important;
            -webkit-box-border: 0;
            color: #ffffff !important;
            background-color: transparent !important;
            border-color: transparent !important;
        }

    </style>
    <script type="text/javascript" src="Scripts/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui-1.12.1.js"></script>
    
    <script type="text/javascript">
        
        $(document).ready(function() {
            document.body.style.backgroundImage = "url('images/LoginImage.jpg')";
            document.body.style.backgroundSize = '100% auto';
            document.body.style.backgroundRepeat = 'no-repeat';
            document.body.style.backgroundAttachment = 'fixed';
            document.body.style.backgroundPosition = 'right bottom';

            $("#userNameContainer").on('click', function(e) {
                e.preventDefault();e.stopPropagation();
                $("#txtUsername").focus();
            });
            $("#passwdContainer").on('click', function (e) {
                e.preventDefault(); e.stopPropagation();
                $("#txtPassword").focus();
            });
        });

    </script>
</head>
<body>
     
	<div align="center" class="usernamecontainer">
		<div id="userNameContainer" align="center" class="imgcontainer">
			<img src="images/user_50.png" alt="User:" style="padding-top: 12px;padding-left:4px;"/>
		</div>
		<div class="innercontainer">
			<asp:TextBox ID="txtUsername" runat="server" TabIndex="1" Width="420px" Height="70px" Font-Size="Large" ForeColor="#FFFFFF" BorderStyle="None" BorderWidth="0px" ClientIDMode="Static"></asp:TextBox>
		
			<%--<asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server"
				ControlToValidate="txtUsername" ErrorMessage="*Required" Font-Bold="True"
				Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>--%>
		</div>
	</div>
	<div align="center" class="usernamecontainer" style="margin-top: 10px;">
		<div id="passwdContainer" class="imgcontainer">
			<img src="images/passwd_50.png" alt="Password:" style="padding-top: 12px" />
		</div>
		<div class="innercontainer">
			<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" TabIndex="2" Width="420px" Height="70px" ForeColor="#FFFFFF" Font-Size="Large"  BorderStyle="None" BorderWidth="0px" ClientIDMode="Static"></asp:TextBox>
			<%--<asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server"
				ControlToValidate="txtPassword" ErrorMessage="*" Font-Bold="True"
				Font-Size="Large" ForeColor="#FFFFFF"></asp:RequiredFieldValidator>--%>
		</div>
	</div>
                
</body>
</html>
