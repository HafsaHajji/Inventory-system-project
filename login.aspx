<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="zust_cs5_project.login" %>

<!DOCTYPE html>
<script runat="server">


    protected void btnlogin_Click(object sender, EventArgs e)
    {

    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Log in</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="../../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            display: flex;
            -ms-flex-direction: column;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-clip: border-box;
            border-radius: .25rem;
            box-shadow: 0 0 1px rgba(0, 0, 0, .125), 0 1px 3px rgba(0, 0, 0, .2);
            left: 0px;
            top: -30px;
            margin-bottom: 1rem;
            background-color: #fff;
        }
    </style>
</head>
<body class="hold-transition login-page">
    
        <div class="login-box">
  <div class="login-logo">
    <a href=""><b> INVENTORY SYSTEM</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="auto-style1 mt-4">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Sign in to start your session</p>

    <form id="form1" runat="server">
        <div class="input-group mb-3">
          <asp:TextBox ID="txtusername" class="form-control" placeholde="Username" required="" runat="server"></asp:TextBox>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <asp:TextBox ID="txtpassword" class="form-control" placeholde="Password" required="" runat="server"></asp:TextBox>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="remember">
              <label for="remember">
                Remember Me
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <asp:Button ID="btnlogin" class="btn btn-primary btn-block" runat="server" Text="Login" OnClick="btnlogin_Click" />
          </div>
          <!-- /.col -->
        </div>
            <asp:Label ID="lblinfo" class="btn btn-success" Style="width:20%" runat="server"></asp:Label>
      </form>

     
      <!-- /.social-auth-links -->

    
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
  
</body>
</html>
