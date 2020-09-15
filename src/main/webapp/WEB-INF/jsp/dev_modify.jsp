<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/14
  Time: 17:15
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
                    <a href="/AppInfoSystem/dev/flatform/main" class="site_title"><i class="fa fa-paw"></i> <span>APP
								BMS</span>
                    </a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile">
                    <div class="profile_pic">
                        <img
                                src="/appinfo/statics/images/img.jpg"
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
                                    <li><a href="/AppInfoSystem/dev/flatform/app/list">APP维护</a>
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
                                src="/appinfo/statics/images/img.jpg"
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
                                        src="/appinfo/statics/images/img.jpg"
                                        alt="Profile Image" />
										</span> <span> <span>John Smith</span> <span class="time">3
													mins ago</span> </span> <span class="message"> Film festivals used
												to be do-or-die moments for movie makers. They were where...
										</span> </a></li>
                                <li><a> <span class="image"><img
                                        src="/appinfo/statics/images/img.jpg"
                                        alt="Profile Image" />
										</span> <span> <span>John Smith</span> <span class="time">3
													mins ago</span> </span> <span class="message"> Film festivals used
												to be do-or-die moments for movie makers. They were where...
										</span> </a></li>
                                <li><a> <span class="image"><img
                                        src="/appinfo/statics/images/img.jpg"
                                        alt="Profile Image" />
										</span> <span> <span>John Smith</span> <span class="time">3
													mins ago</span> </span> <span class="message"> Film festivals used
												to be do-or-die moments for movie makers. They were where...
										</span> </a></li>
                                <li><a> <span class="image"><img
                                        src="/appinfo/statics/images/img.jpg"
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

                <div class="clearfix"></div>
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>修改APP基础信息 <i class="fa fa-user"></i><small>测试账户001</small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <form class="form-horizontal form-label-left" action="appinfomodifysave" method="post" enctype="multipart/form-data">
                                    <input type="hidden" name="id" id="id" value="${appinfo.id}">
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="softwareName">软件名称 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="softwareName" class="form-control col-md-7 col-xs-12"
                                                   data-validate-length-range="20" data-validate-words="1"
                                                   name="softwareName" value="${appinfo.softwareName}" required="required"
                                                   placeholder="请输入软件名称" type="text">
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="APKName">APK名称 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="APKName" type="text" class="form-control col-md-7 col-xs-12"
                                                   name="APKName" value="${appinfo.APKName}" readonly="readonly">
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="supportROM">支持ROM <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="supportROM" class="form-control col-md-7 col-xs-12"
                                                   name="supportROM" value="${appinfo.supportROM}" required="required"
                                                   data-validate-length-range="20" data-validate-words="1"
                                                   placeholder="请输入支持的ROM" type="text">
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="interfaceLanguage">界面语言 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="interfaceLanguage" class="form-control col-md-7 col-xs-12"
                                                   data-validate-length-range="20" data-validate-words="1"  required="required"
                                                   name="interfaceLanguage" value="${appinfo.interfaceLanguage}"
                                                   placeholder="请输入软件支持的界面语言" type="text">
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="softwareSize">软件大小 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="number" id="softwareSize" name="softwareSize" value="${appinfo.softwareSize}" required="required"
                                                   data-validate-minmax="10,500"  placeholder="请输入软件大小，单位为Mb" class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="downloads">下载次数 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="number" id="downloads" name="downloads" value="${appinfo.downloads}" required="required"
                                                   data-validate-minmax="10,500"  placeholder="请输入下载次数" class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="flatformId">所属平台 <span class="required">*</span></label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="hidden" value="1" id="fid" />
                                            <select name="flatformId" id="flatformId" class="form-control" required="required"></select>
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="categoryLevel1">一级分类 <span class="required">*</span></label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="hidden" value="${appinfo.categoryLevel1}" id="cl1" />
                                            <select name="categoryLevel1" id="categoryLevel1" class="form-control"  required="required"></select>
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="categoryLevel2">二级分类 <span class="required">*</span></label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="hidden" value="${appinfo.categoryLevel2}" id="cl2" />
                                            <select name="categoryLevel2" id="categoryLevel2" class="form-control"  required="required"></select>
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="categoryLevel3">三级分类 <span class="required">*</span></label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="hidden" value="${appinfo.categoryLevel3}" id="cl3" />
                                            <select name="categoryLevel3" id="categoryLevel3" class="form-control"  required="required"></select>
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="statusName">APP状态 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input id="statusName" type="text" class="form-control col-md-7 col-xs-12"
                                                   name="statusName" value="${appinfo.statusName}" readonly="readonly">
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="appInfo">应用简介 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                          <textarea id="appInfo" name="appInfo" required="required" placeholder="请输入本软件的相关信息，本信息作为软件的详细信息进行软件的介绍。" class="form-control col-md-7 col-xs-12">${appinfo.appInfo}</textarea>
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="attach">LOGO图片 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <%--<input type="hidden" id="logoPicPath" name="logoPicPath" value="/AppInfoSystem/statics/uploadfiles/com.bithack.apparatus.jpg"/>
                                            <input type="hidden" id="logoLocPath" name="logoLocPath" value="D:\soft\apache-tomcat-7.0.41\webapps\AppInfoSystem\statics\uploadfiles\com.bithack.apparatus.jpg"/>--%>
                                                <input type="hidden" id="logoPicPath" name="logoPicPath" value="/AppInfoSystem/statics/uploadfiles/com.bithack.apparatus.jpg"/>
                                                <input type="hidden" id="logoLocPath" name="logoLocPath" value="${appinfo.logoLocPath}"/>
                                            <div id="uploadfile" style="display: none">
                                                <input id="attach"  type="file" class="form-control col-md-7 col-xs-12" name="attach">
                                                <p><span style="color:red;font-weight: bold;">*注：1、大小不得超过500k.2、图片格式：jpg、png、jpeg、pneg</span></p>
                                            </div>
                                            <div id="logoFile"></div>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-6 col-md-offset-3">

                                            <button id="send" type="submit" name="status" value="1" class="btn btn-success">保存并再次提交审核</button>

                                            <button id="send" type="submit" class="btn btn-success">保存</button>
                                            <button type="button" class="btn btn-primary" id="back">返回</button>
                                            <br/><br/>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
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
<script src="/appinfo/statics/localjs/appinfomodify.js"></script>
