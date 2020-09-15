<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/11
  Time: 17:52
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
    <link href="/appinfo/statics/css/jqvmap.min.css" rel="stylesheet"/>
    <link href="/appinfo/statics/css/dropzone.min.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="/appinfo/statics/css/custom.min.css" rel="stylesheet">

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

                <br/>

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
                                </ul>
                            </li>
                            <li><a><i class="fa fa-edit"></i> APP应用管理<span
                                    class="fa fa-chevron-down"></span>
                            </a>
                                <ul class="nav child_menu">
                                    <li><a href="${pageContext.request.contextPath}/dev/todev_applist">APP维护</a>
                                    </li>
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
                            </ul>
                        </li>

                        <li role="presentation" class="dropdown">

                            <ul id="menu1" class="dropdown-menu list-unstyled msg_list"
                                role="menu">
                                <li><a> <span class="image"><img
                                        src="/appinfo/statics/images/img.jpg"
                                        alt="Profile Image"/>
										</span> <span> <span>John Smith</span> <span class="time">3
													mins ago</span> </span> <span class="message"> Film festivals used
												to be do-or-die moments for movie makers. They were where...
										</span> </a></li>
                                <li><a> <span class="image"><img
                                        src="/appinfo/statics/images/img.jpg"
                                        alt="Profile Image"/>
										</span> <span> <span>John Smith</span> <span class="time">3
													mins ago</span> </span> <span class="message"> Film festivals used
												to be do-or-die moments for movie makers. They were where...
										</span> </a></li>
                                <li><a> <span class="image"><img
                                        src="/appinfo/statics/images/img.jpg"
                                        alt="Profile Image"/>
										</span> <span> <span>John Smith</span> <span class="time">3
													mins ago</span> </span> <span class="message"> Film festivals used
												to be do-or-die moments for movie makers. They were where...
										</span> </a></li>
                                <li><a> <span class="image"><img
                                        src="/appinfo/statics/images/img.jpg"
                                        alt="Profile Image"/>
										</span> <span> <span>John Smith</span> <span class="time">3
													mins ago</span> </span> <span class="message"> Film festivals used
												to be do-or-die moments for movie makers. They were where...
										</span> </a></li>
                                <li>
                                    <div class="text-center">
                                        <a> <strong>See All Alerts</strong> <i
                                                class="fa fa-angle-right"></i> </a>
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
                <div class="row"     ;>
                    <div class="col-md-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>
                                    APP 信息管理维护 <i class="fa fa-user"></i><small>测试账户001
                                    - 您可以通过搜索或者其他的筛选项对APP的信息进行修改、删除等管理操作。^_^</small>
                                </h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <form method="post" action="${pageContext.request.contextPath}/dev/todev_applist">
                                    <input type="hidden" name="pageIndex" value="1"/>
                                    <ul>
                                        <li>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">软件名称</label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input name="querySoftwareName" type="text"
                                                           class="form-control col-md-7 col-xs-12"
                                                           value="${querySoftwareName}">
                                                </div>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">APP状态</label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <select name="queryStatus" class="form-control">

                                                        <c:if test="${appStatusList != null }">
                                                            <option value="">--请选择--</option>
                                                            <c:forEach var="status" items="${appStatusList}">
                                                                <option
                                                                        <c:if test="${status.valueId == queryStatus }">selected="selected"</c:if>
                                                                        value="${status.valueId}">${status.valueName}
                                                                </option>
                                                            </c:forEach>
                                                        </c:if>


                                                    </select>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">所属平台</label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <select name="queryFlatformId" class="form-control">

                                                        <c:if test="${flatformList != null }">
                                                            <option value="">--请选择--</option>
                                                            <c:forEach var="flatform" items="${flatformList}">
                                                                <option
                                                                        <c:if test="${flatform.valueId == queryFlatformId }">selected="selected"</c:if>
                                                                        value="${flatform.valueId}">${flatform.valueName}
                                                                </option>
                                                            </c:forEach>
                                                        </c:if>


                                                    </select>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">一级分类</label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <select id="queryCategoryLevel1" name="queryCategoryLevel1"
                                                            class="form-control">
                                                        <option value="">--请选择--</option>
                                                        <option value="1">全部应用</option>
                                                        <option value="2">全部游戏</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">二级分类</label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="hidden" name="categorylevel2list"
                                                           id="categorylevel2list"/>
                                                    <select name="queryCategoryLevel2" id="queryCategoryLevel2"
                                                            class="form-control">

                                                    </select>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">三级分类</label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <select name="queryCategoryLevel3" id="queryCategoryLevel3"
                                                            class="form-control">

                                                    </select>
                                                </div>
                                            </div>
                                        </li>
                                        <input type="hidden" id="totalPageCount" name="totalPageCount"
                                               value="${totalPageCount}"/>
                                        <li>
                                            <button type="submit" class="btn btn-primary"> 查 &nbsp;&nbsp;&nbsp;&nbsp;询
                                            </button>
                                        </li>
                                    </ul>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_content">
                                <p class="text-muted font-13 m-b-30"></p>
                                <div id="datatable-responsive_wrapper"
                                     class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <a href="${pageContext.request.contextPath}/dev/todev_add"
                                               class="btn btn-success btn-sm">新增APP基础信息</a>
                                            <%--表格--%>
                                            <table id="datatable-responsive"
                                                   class="table table-striped table-bordered dt-responsive nowrap dataTable no-footer dtr-inline collapsed"
                                                   cellspacing="0" width="100%" role="grid"
                                                   aria-describedby="datatable-responsive_info"
                                                   style="width: 100%;">
                                                <thead>
                                                <tr role="row">
                                                    <th class="sorting_asc" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        aria-label="First name: activate to sort column descending"
                                                        aria-sort="ascending">软件名称
                                                    </th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        APK名称
                                                    </th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        软件大小(单位:M)
                                                    </th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        所属平台
                                                    </th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        所属分类(一级分类、二级分类、三级分类)
                                                    </th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        状态
                                                    </th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        下载次数
                                                    </th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        最新版本号
                                                    </th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        style="width: 124px;"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        操作
                                                    </th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${appInfoList}" var="appinfo">
                                                    <tr role="row" class="odd">
                                                        <td tabindex="0" class="sorting_1">${appinfo.softwareName}</td>
                                                        <td>${appinfo.APKName}</td>
                                                        <td>${appinfo.softwareSize}</td>
                                                        <td>${appinfo.flatformName}</td>
                                                        <td>${appinfo.categoryLevel1Name}
                                                            -> ${appinfo.categoryLevel2Name}
                                                            -> ${appinfo.categoryLevel3Name}</td>
                                                        <td><span id="appInfoStatus${appinfo.id}">${appinfo.statusName}</span></td>
                                                        <td>${appinfo.downloads}</td>
                                                        <td>${appinfo.appNewVersionName}</td>
                                                        <td>
                                                            <div class="btn-group">
                                                                <button type="button" class="btn btn-danger">点击操作
                                                                </button>
                                                                <button type="button"
                                                                        class="btn btn-danger dropdown-toggle"
                                                                        data-toggle="dropdown" aria-expanded="false">
                                                                    <span class="caret"></span>
                                                                    <span class="sr-only">Toggle Dropdown</span>
                                                                </button>
                                                                <ul class="dropdown-menu" role="menu">
                                                                    <c:if test="${appinfo.status eq 2}">
                                                                        <li>
                                                                            <a class="saleSwichOpen" saleSwitch="open"
                                                                               appinfoid=${appinfo.id}  appsoftwarename=${appinfo.softwareName}
                                                                               data-toggle="tooltip" data-placement="top" title=""
                                                                               data-original-title="恭喜您，您的审核已经通过，您可以点击上架发布您的APP">上架</a>
                                                                        </li>
                                                                    </c:if>
                                                                    <c:if test="${appinfo.status eq 5}">
                                                                        <li>
                                                                            <a class="saleSwichOpen" saleSwitch="open"
                                                                               appinfoid=${appinfo.id}  appsoftwarename=${appinfo.softwareName}
                                                                               data-toggle="tooltip" data-placement="top" title=""
                                                                               data-original-title="恭喜您，您的审核已经通过，您可以点击上架发布您的APP">上架</a>
                                                                        </li>
                                                                    </c:if>
                                                                    <c:if test="${appinfo.status eq 4}">
                                                                        <li>
                                                                            <a class="saleSwichClose" saleSwitch="close"
                                                                               appinfoid="${appinfo.id}"  appsoftwarename${appinfo.softwareName}
                                                                               data-toggle="tooltip" data-placement="top" title=""
                                                                               data-original-title="您可以点击下架来停止发布您的APP，市场将不提供APP的下载">下架</a>
                                                                        </li>
                                                                    </c:if>


                                                                    <li><a class="addVersion" appinfoid=${appinfo.id}
                                                                            data-toggle="tooltip" data-placement="top"
                                                                           title=""
                                                                           data-original-title="新增APP版本信息">新增版本</a>
                                                                    </li>
                                                                    <li><a class="modifyVersion"
                                                                           appinfoid=${appinfo.id} versionid=${appinfo.versionId}
                                                                           status=${appinfo.status}
                                                                                   statusname=${appinfo.statusName}
                                                                           data-toggle="tooltip" data-placement="top"
                                                                           title=""
                                                                           data-original-title="修改APP最新版本信息">修改版本</a>
                                                                    </li>
                                                                    <li><a class="modifyAppInfo"
                                                                           appinfoid=${appinfo.id} status=${appinfo.status}
                                                                           statusname=${appinfo.statusName}
                                                                                   data-toggle="tooltip"
                                                                           data-placement="top"
                                                                           title=""
                                                                           data-original-title="修改APP基础信息">修改</a></li>
                                                                    <li><a class="viewApp"
                                                                           appinfoid=${appinfo.id} data-toggle="tooltip"
                                                                           data-placement="top" title=""
                                                                           data-original-title="查看APP基础信息以及全部版本信息">查看</a>
                                                                    </li>
                                                                    <li><a class="deleteApp"
                                                                           appinfoid=${appinfo.id} appsoftwarename=${appinfo.softwareName}
                                                                           data-toggle="tooltip" data-placement="top"
                                                                           title=""
                                                                           data-original-title="删除APP基础信息以及全部版本信息">删除</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </c:forEach>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <%--分页部分--%>
                                    <c:import url="rollpage.jsp">
                                        <c:param name="totalCount" value="${totalCount}"/>
                                        <c:param name="currentPageNo" value="${currentPageNo}"/>
                                        <c:param name="totalPageCount" value="${totalPageCount}"/>
                                    </c:import>

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
<script src="/appinfo/statics/localjs/rollpage.js"></script>
<script src="/appinfo/statics/localjs/appinfolist.js"></script>
