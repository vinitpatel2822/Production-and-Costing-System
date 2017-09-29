<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Login Page</title>

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
 <body class="login-img2-body">
    
   <div class="container">
      <form id="form1" class="login-form" runat="server">        
        <div class="login-wrap">
            <p class="login-img"><i class="icon_lock_alt"></i></p>
            <div class="input-group">
              <span class="input-group-addon"><i class="icon_profile">
              </i></span>
                <asp:TextBox ID="tb_uname" runat="server" class="form-control" placeholder="Username" autofocus></asp:TextBox>
                 
            </div>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="" ControlToValidate="tb_uname" ForeColor="#333333" SetFocusOnError="True"></asp:RequiredFieldValidator>
           
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt">
                 
                </i> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="" ControlToValidate="tb_pwd" ForeColor="#333333" SetFocusOnError="True"></asp:RequiredFieldValidator></span>
                 <asp:TextBox ID="tb_pwd" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
               
                <br />
                
            </div>
            
           
            <asp:Button ID="Button1" class="btn btn-primary btn-lg btn-block" runat="server" Text="Login" OnClick="Button1_Click1" />
           
            
            <br />
            <asp:Label ID="lblmsg" runat="server" Text="Label" ForeColor="Black"></asp:Label>
            
        </div>
      </form>

    </div>


  </body>



</html>
