<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/11
  Time: 16:37
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

    <title>APP后台管理系统</title>

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
    <link href="/appinfo/statics/css/jqvmap.min.css" rel="stylesheet"/>
    <!-- Custom Theme Style -->
    <link href="/appinfo/statics/css/custom.min.css" rel="stylesheet">
    <!-- add localcss 2016-8-21 -->
    <link href='/appinfo/statics/localcss/applist.css' rel='stylesheet'>
</head>
<body class="nav-md footer_fixed">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col menu_fixed">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="/AppInfoSystem/manager/backend/main" class="site_title"><i class="fa fa-paw"></i> <span>APP BMS</span></a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile">
                    <div class="profile_pic">
                        <img src="/AppInfoSystem/statics/images/img.jpg" alt="..." class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>Welcome,</span>
                        <h2>admin</h2>
                    </div>
                </div>
                <!-- /menu profile quick info -->

                <br />

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <h3>系统管理员</h3>
                        <ul class="nav side-menu">
                            <li><a><i class="fa fa-home"></i> APP管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/AppInfoSystem/manager/backend/app/list">APP审核</a></li>
                                    <li><a href="javascript:;">广告推广</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-edit"></i> 用户管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="javascript:;">后台用户管理</a></li>
                                    <li><a href="javascript:;">开发者资质审核</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-bug"></i> 基础数据维护 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="javascript:;">数据字典</a></li>
                                    <li><a href="javascript:;">APP分类管理</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>


                </div>
                <!-- /sidebar menu -->

                <!-- /menu footer buttons -->
                <div class="sidebar-footer hidden-small">
                    <a data-toggle="tooltip" data-placement="top" title="Settings">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                        <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Lock">
                        <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Logout" href="/AppInfoSystem/manager/logout">
                        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                    </a>
                </div>
                <!-- /menu footer buttons -->
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                <img src="/AppInfoSystem/statics/images/img.jpg" alt="">admin
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">
                                <li><a href="/AppInfoSystem/manager/logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                            </ul>
                        </li>

                        <li role="presentation" class="dropdown">

                            <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                                <li>
                                    <a>
                                        <span class="image"><img src="/AppInfoSystem/statics/images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="/AppInfoSystem/statics/images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="/AppInfoSystem/statics/images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="/AppInfoSystem/statics/images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <div class="text-center">
                                        <a>
                                            <strong>See All Alerts</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
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
                                <h2>查看并审核APP信息 <i class="fa fa-user"></i>系统管理员</h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_title">
                                <h2>APP基础信息</h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content1">
                                <form class="form-horizontal form-label-left" action="checksave" method="post">
                                    <input type="hidden" name="id" value="51">
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">软件名称 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input class="form-control col-md-7 col-xs-12" value="谷歌拼音输入法"
                                                   type="text" readonly="readonly">
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">APK名称 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" class="form-control col-md-7 col-xs-12"
                                                   value="com.google.android.inputmethod.pinyin" readonly="readonly">
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">支持ROM <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input class="form-control col-md-7 col-xs-12"
                                                   value="4.2及更高版本" type="text" readonly="readonly">
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">界面语言 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input class="form-control col-md-7 col-xs-12" readonly="readonly"
                                                   value="简体中文" type="text">
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">软件大小 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" value="16.00"
                                                   class="form-control col-md-7 col-xs-12" readonly="readonly">
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">下载次数 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" value="8000"
                                                   class="form-control col-md-7 col-xs-12" readonly="readonly">
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="select">所属平台 <span class="required">*</span></label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" class="form-control col-md-7 col-xs-12"
                                                   value="手机" readonly="readonly">

                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="select">所属分类 <span class="required">*</span></label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" class="form-control col-md-7 col-xs-12"
                                                   value="全部应用 --> 系统工具 --> 输入法" readonly="readonly">
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">APP状态 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" class="form-control col-md-7 col-xs-12"
                                                   value="待审核" readonly="readonly">
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">应用简介 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
              <textarea class="form-control col-md-7 col-xs-12" readonly="readonly">
              谷歌拼音输入法是一款专门用于输入中文的输入法，提供了多种方便的输入方式：
- 全键盘拼音支持中文滑行输入和智能纠错
- 9键键盘拼音支持中文滑行输入
- 笔画键盘
- 全屏和半屏手写键盘
- 英文键盘
- 模糊拼音
- 双拼
- 针对各种不同屏幕尺寸优化的UI布局
- 语音输入
不仅支持输入简体中文、繁体中文，还支持标点符号、表情符号、拉丁字符和数字。语音输入法使用基于互联网的语音识别服务，以提供高精度的输入匹配。

注意：要在你的Android设备上使用该输入法，请在 “设置”→“语言和输入法”中开启。

如需输入粤语，请下载谷歌粤语输入法
https://play.google.com/store/apps/details?id=com.google.android.apps.inputmethod.cantonese

如需使用注音或者倉頡输入繁体中文，请下载谷歌注音输入法
https://play.google.com/store/apps/details?id=com.google.android.apps.inputmethod.zhuyin</textarea>
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">LOGO图片 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">



                                            <img src="/AppInfoSystem/statics/uploadfiles/com.google.android.inputmethod.pinyin.jpg?m=1" width="100px;"/>


                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-6 col-md-offset-3">
                                            <button id="status" type="submit" name="status" value="2" class="btn btn-success">审核通过</button>
                                            <button id="status" type="submit" name="status" value="3" class="btn btn-success">审核不通过</button>
                                            <button type="button" class="btn btn-primary" id="back">返回</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="clearfix"></div>
                            <div class="x_title">
                                <h2>最新版本信息</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content" style="display: block;">
                                <br>
                                <form class="form-horizontal form-label-left">
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">版本号 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input class="form-control col-md-7 col-xs-12" value="V1.1.1"
                                                   type="text" readonly="readonly" >
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">版本大小 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="number" value="16.00" class="form-control col-md-7 col-xs-12">
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="select">发布状态 <span class="required">*</span></label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="hidden" name="publishStatus" id="publishStatus" value="3">预发布
                                        </div>
                                    </div>

                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">版本简介 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
              <textarea class="form-control col-md-7 col-xs-12">
              V1.1.1简介</textarea>
                                        </div>
                                    </div>
                                    <div class="item form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">apk文件 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">



                                            <p>com.google.android.inputmethod.pinyin-V1.1.1.apk&nbsp;&nbsp;
                                                <a href="/AppInfoSystem/statics/uploadfiles/com.google.android.inputmethod.pinyin-V1.1.1.apk" >下载</a>
                                            </p>


                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <br/><br/>
                                </form>
                            </div>
                            <div class="clearfix"></div>
                            <br/><br/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /page content -->
    <!-- footer content -->
    <footer>
        <div class="pull-right">
            ©2016 All Rights Reserved.
        </div>
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

</body>
</html>
<script src="/appinfo/statics/localjs/appcheck.js"></script>
