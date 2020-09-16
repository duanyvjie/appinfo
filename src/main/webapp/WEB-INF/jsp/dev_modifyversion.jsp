<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/15
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                    <li><a href="/appinfo/dev/flatform/app/list">APP维护</a>
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
                        href="/appinfo/dev/logout"> <span
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
                                        href="/appinfo/dev/logout"><i
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
                                <h2>修改APP最新版本信息 <i class="fa fa-user"></i><small>测试账户001</small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_title">
                                <h2>历史版本列表</h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content1">
                                <div class="clearfix"></div>
                                <p class="text-muted font-13 m-b-30"></p>
                                <div id="datatable-responsive_wrapper"
                                     class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap dataTable no-footer dtr-inline collapsed"
                                                   cellspacing="0" width="100%" role="grid" aria-describedby="datatable-responsive_info" style="width: 100%;">
                                                <thead>
                                                <tr role="row">
                                                    <th class="sorting_asc" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        style="width: 70px;" aria-label="First name: activate to sort column descending"
                                                        aria-sort="ascending">软件名称</th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        style="width: 10px;"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        版本号</th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        style="width: 90px;"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        版本大小(单位:M)</th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        style="width: 50px;"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        发布状态</th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        style="width: 50px;"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        APK文件下载</th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        style="width: 50px;"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        最新更新时间</th>
                                                </tr>
                                                </thead>
                                                <tbody>

                                                <c:forEach items="${appVersions}" var="appVersion">
                                                    <tr role="row" class="odd">
                                                        <td tabindex="0" class="sorting_1">${appVersion.softwareName}</td>
                                                        <td>${appVersion.versionNo}</td>
                                                        <td>${appVersion.versionSize}</td>
                                                        <td>${appVersion.publishStatusName}</td>
                                                        <td>
                                                            <a href="${appVersion.apkLocPath}">${appVersion.apkFileName}</a>
                                                        </td>
                                                        <td>${appVersion.modifyDate}</td>
                                                    </tr>
                                                </c:forEach>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                                <div class="x_title">
                                    <h2>修改最新版本信息</h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content" style="display: block;">
                                    <br>
                                    <form class="form-horizontal form-label-left" action="appversionmodifysave" modelAttribute="version" method="post" enctype="multipart/form-data">
                                        <input type="hidden" name="id" id="id" value="${versionId}">
                                        <input type="hidden" name="appId" id="appId" value="${appId}">
                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">版本号 <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input class="form-control col-md-7 col-xs-12" value="${version.versionNo}"
                                                       type="text" readonly="readonly" id="versionNo" name="versionNo">
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">版本大小 <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="number" id="versionSize" name="versionSize" value="${version.versionSize}"  required="required"
                                                       data-validate-minmax="10,500"  placeholder="请输入版本大小，单位为Mb" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>

                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="select">发布状态 <span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="hidden" name="publishStatus" id="publishStatus" value="${version.publishStatus}">${version.publishStatusName}
                                            </div>
                                        </div>

                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">版本简介 <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
              <textarea id="versionInfo" name="versionInfo" required="required"
                        placeholder="请输入本版本的相关信息，本信息作为该版本的详细信息进行版本介绍。" class="form-control col-md-7 col-xs-12">${version.versionInfo}</textarea>
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">apk文件 <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="hidden" id="downloadLink" name="downloadLink" value="${version.downloadLink}"/>
                                                <input type="hidden" id="apkLocPath" name="apkLocPath" value="${version.apkLocPath}"/>
                                                <input type="hidden" id="apkFileName" name="apkFileName" value="${version.apkFileName}"/>
                                                <div id="uploadfile" style="display: none">
                                                    <input id="attach" type="file" class="form-control col-md-7 col-xs-12" name="attach">
                                                    <p><span style="color:red;font-weight: bold;">*注：1、大小不得超过500m.2、文件类型：apk</span></p>
                                                </div>
                                                <div id="apkFile"></div>

                                            </div>
                                        </div>
                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6 col-md-offset-3">
                                                <button id="send" type="submit" class="btn btn-success">保存</button>
                                                <button type="button" class="btn btn-primary" id="back">返回</button>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                        <br/><br/>
                                    </form>
                                </div>
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
<script src="/appinfo/statics/localjs/appversionmodify.js"></script>
