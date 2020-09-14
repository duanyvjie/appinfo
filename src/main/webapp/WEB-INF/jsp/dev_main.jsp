<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/11
  Time: 17:20
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
    <!-- iCheck -->
    <link href="/appinfo/statics/css/green.css" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="/appinfo/statics/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="/appinfo/statics/css/jqvmap.min.css" rel="stylesheet" />
    <link href="/appinfo/statics/css/dropzone.min.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="/appinfo/statics/css/custom.min.css"	rel="stylesheet">

    <!-- add localcss 2016-8-18 -->
    <link href='/appinfo/statics/localcss/appinfoadd.css' rel='stylesheet'>
    <link href='/appinfo/statics/localcss/appinfolist.css' rel='stylesheet'>
</head>
<body class="nav-md footer_fixed">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col menu_fixed">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="/appinfo/dev/flatform/main" class="site_title"><i class="fa fa-paw"></i> <span>APP
								BMS</span>
                    </a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile">
                    <div class="profile_pic">
                        <img
                                src="/AppInfoSystem/statics/images/img.jpg"
                                alt="..." class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>Welcome,</span>
                        <h2>test001</h2>
                    </div>
                </div>
                <!-- /menu profile quick info -->

                <br />

                <!-- sidebar menu -->
                <div id="sidebar-menu"
                     class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <h3>测试账户001</h3>
                        <ul class="nav side-menu">
                            <li><a><i class="fa fa-home"></i> APP账户管理 <span
                                    class="fa fa-chevron-down"></span>
                            </a>
                                <ul class="nav child_menu">
                                    <li><a href="javascript:;">APP开发者账户申请</a>
                                    </li>
                                    <li><a href="javascript:;">个人账户信息维护</a>
                                    </li>
                                </ul></li>
                            <li><a><i class="fa fa-edit"></i> APP应用管理<span
                                    class="fa fa-chevron-down"></span>
                            </a>
                                <ul class="nav child_menu">
                                    <li><a href="${pageContext.request.contextPath}/dev/todev_applist">APP维护</a>
                                    </li>
                                </ul></li>
                        </ul>
                    </div>


                </div>
                <!-- /sidebar menu -->

                <!-- /menu footer buttons -->
                <div class="sidebar-footer hidden-small">
                    <a data-toggle="tooltip" data-placement="top" title="Settings">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                    </a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                    <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                </a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
                        class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                </a> <a data-toggle="tooltip" data-placement="top" title="Logout"
                        href="/AppInfoSystem/dev/logout"> <span
                        class="glyphicon glyphicon-off" aria-hidden="true"></span> </a>
                </div>
                <!-- /menu footer buttons -->
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i>
                        </a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class=""><a href="javascript:;"
                                        class="user-profile dropdown-toggle" data-toggle="dropdown"
                                        aria-expanded="false"> <img
                                src="/AppInfoSystem/statics/images/img.jpg"
                                alt="">test001 <span
                                class=" fa fa-angle-down"></span> </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">
                                <li><a
                                        href="/AppInfoSystem/dev/logout"><i
                                        class="fa fa-sign-out pull-right"></i> Log Out</a>
                                </li>
                            </ul></li>

                        <li role="presentation" class="dropdown">

                            <ul id="menu1" class="dropdown-menu list-unstyled msg_list"
                                role="menu">
                                <li><a> <span class="image"><img
                                        src="/AppInfoSystem/statics/images/img.jpg"
                                        alt="Profile Image" />
										</span> <span> <span>John Smith</span> <span class="time">3
													mins ago</span> </span> <span class="message"> Film festivals used
												to be do-or-die moments for movie makers. They were where...
										</span> </a></li>
                                <li><a> <span class="image"><img
                                        src="/AppInfoSystem/statics/images/img.jpg"
                                        alt="Profile Image" />
										</span> <span> <span>John Smith</span> <span class="time">3
													mins ago</span> </span> <span class="message"> Film festivals used
												to be do-or-die moments for movie makers. They were where...
										</span> </a></li>
                                <li><a> <span class="image"><img
                                        src="/AppInfoSystem/statics/images/img.jpg"
                                        alt="Profile Image" />
										</span> <span> <span>John Smith</span> <span class="time">3
													mins ago</span> </span> <span class="message"> Film festivals used
												to be do-or-die moments for movie makers. They were where...
										</span> </a></li>
                                <li><a> <span class="image"><img
                                        src="/AppInfoSystem/statics/images/img.jpg"
                                        alt="Profile Image" />
										</span> <span> <span>John Smith</span> <span class="time">3
													mins ago</span> </span> <span class="message"> Film festivals used
												to be do-or-die moments for movie makers. They were where...
										</span> </a></li>
                                <li>
                                    <div class="text-center">
                                        <a> <strong>See All Alerts</strong> <i
                                                class="fa fa-angle-right"></i> </a>
                                    </div></li>
                            </ul></li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->
        <div class="right_col" role="main">
            <div class="">

                <div class="page-title">
                    <div class="title_left">
                        <h3>
                            欢迎你：测试账户001<strong> | 角色：开发者账户</strong>
                        </h3>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- /page content -->
        <!-- footer content -->
        <footer>
            <div class="pull-right">©2016 All Rights Reserved.</div>
            <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
    </div>
</div>
<!-- jQuery -->
<script src="/appinfo/statics/js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="/appinfo/statics/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="/appinfo/statics/js/fastclick.js"></script>
<!-- NProgress -->
<script src="/appinfo/statics/js/nprogress.js"></script>
<!-- jQuery custom content scroller -->
<script src="/appinfo/statics/js/jquery.mCustomScrollbar.concat.min.js"></script>
<!-- Custom Theme Scripts -->
<script src="/appinfo/statics/js/custom.min.js"></script>
<!-- validator -->

<!-- dropzone -->
<script src="/appinfo/statics/js/dropzone.js"></script>
</body>
</html>
