<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/11
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>APP开发者平台</title>

    <!-- Bootstrap -->
    <link href="/appinfo/statics/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/appinfo/statics/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/appinfo/statics/css/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="/appinfo/statics/css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/appinfo/statics/css/custom.min.css" rel="stylesheet">
</head>

<body class="login">
<div>
    <a class="hiddenanchor" id="signup"></a>
    <a class="hiddenanchor" id="signin"></a>

    <div class="login_wrapper">
        <div class="animate form login_form">
            <section class="login_content">
                <form action="dologin" method="post">
                    <h1>APP开发者平台</h1>
                    <div class="info">${message}</div>
                    <div>
                        <input type="text" class="form-control" name="devCode" placeholder="请输入用户名" required="" />
                    </div>
                    <div>
                        <input type="password" class="form-control" name="devPassword" placeholder="请输入密码" required="" />
                    </div>
                    <span></span>
                    <div>
                        <button type="submit" class="btn btn-success">登     录</button>
                        <button type="reset" class="btn btn-default">重　填</button>
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <div>
                            <p>©2016 All Rights Reserved. </p>
                        </div>
                    </div>
                </form>
            </section>
        </div>
    </div>
</div>
</body>
</html>
