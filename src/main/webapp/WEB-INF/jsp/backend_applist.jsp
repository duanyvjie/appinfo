<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/15
  Time: 15:07
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

                    <div class="col-md-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>
                                    APP 审核列表 <i class="fa fa-user"></i><small>系统管理员
                                    - 您可以通过搜索或者其他的筛选项对APP的信息进行审核操作。^_^</small>
                                </h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <form method="post" action="${pageContext.request.contextPath}/backend/toBackendApplist">
                                    <input type="hidden" name="pageIndex" value="1" />
                                    <ul>
                                        <li>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">软件名称</label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input name="querySoftwareName" type="text" class="form-control col-md-7 col-xs-12" value="${querySoftwareName}">
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
                                                    <select id="queryCategoryLevel1" name="queryCategoryLevel1" class="form-control">

                                                        <option value="">--请选择--</option>

                                                        <option
                                                                value="1">全部应用</option>

                                                        <option
                                                                value="2">全部游戏</option>


                                                    </select>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">二级分类</label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input type="hidden" name="categorylevel2list" id="categorylevel2list"/>
                                                    <select name="queryCategoryLevel2" id="queryCategoryLevel2" class="form-control">

                                                    </select>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">三级分类</label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <select name="queryCategoryLevel3" id="queryCategoryLevel3" class="form-control">

                                                    </select>
                                                </div>
                                            </div>
                                        </li>
                                        <input type="hidden" id="totalPageCount" name="totalPageCount"
                                               value="${totalPageCount}"/>
                                        <li><button type="submit" class="btn btn-primary"> 查 &nbsp;&nbsp;&nbsp;&nbsp;询 </button></li>
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
                                                        APK名称</th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        style="width: 90px;"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        软件大小(单位:M)</th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        style="width: 50px;"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        所属平台</th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        style="width: 170px;"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        所属分类(一级分类、二级分类、三级分类)</th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        style="width: 30px;"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        状态</th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        style="width: 30px;"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        下载次数</th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        style="width: 64px;"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        最新版本号</th>
                                                    <th class="sorting" tabindex="0"
                                                        aria-controls="datatable-responsive" rowspan="1" colspan="1"
                                                        style="width: 30px;"
                                                        aria-label="Last name: activate to sort column ascending">
                                                        操作</th>
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
                                                            <button type="button" class="btn btn-default checkApp"
                                                                    appinfoid="${appinfo.id}" versionid="${appinfo.versionId}" status="${appinfo.status}"
                                                                    statusname="${appinfo.statusName}"
                                                                    data-toggle="tooltip" data-placement="top" title="" data-original-title="查看并审核APP">审核</button>
                                                        </td>
                                                    </tr>
                                                </c:forEach>

                                               <%-- <tr role="row" class="odd">
                                                    <td tabindex="0" class="sorting_1">重力锁屏:Gravity Screen Off Pro</td>
                                                    <td>com.plexnor.gravityscreenoffpro</td>
                                                    <td>1.00</td>
                                                    <td>手机</td>
                                                    <td>全部应用 -> 桌面插件 -> 锁屏</td>
                                                    <td>待审核</td>
                                                    <td>23</td>
                                                    <td></td>
                                                    <td>
                                                        <button type="button" class="btn btn-default checkApp"
                                                                appinfoid="54" versionid="" status="1"
                                                                statusname="待审核"
                                                                data-toggle="tooltip" data-placement="top" title="" data-original-title="查看并审核APP">审核</button>
                                                    </td>
                                                </tr>

                                                <tr role="row" class="odd">
                                                    <td tabindex="0" class="sorting_1">关屏锁定:Screen Off and Lock</td>
                                                    <td>com.katecca.screenofflockdonate</td>
                                                    <td>1.00</td>
                                                    <td>手机</td>
                                                    <td>全部应用 -> 桌面插件 -> 锁屏</td>
                                                    <td>待审核</td>
                                                    <td>20</td>
                                                    <td></td>
                                                    <td>
                                                        <button type="button" class="btn btn-default checkApp"
                                                                appinfoid="53" versionid="" status="1"
                                                                statusname="待审核"
                                                                data-toggle="tooltip" data-placement="top" title="" data-original-title="查看并审核APP">审核</button>
                                                    </td>
                                                </tr>

                                                <tr role="row" class="odd">
                                                    <td tabindex="0" class="sorting_1">谷歌拼音输入法</td>
                                                    <td>com.google.android.inputmethod.pinyin</td>
                                                    <td>16.00</td>
                                                    <td>通用</td>
                                                    <td>全部应用 -> 系统工具 -> 输入法</td>
                                                    <td>待审核</td>
                                                    <td>8000</td>
                                                    <td>V1.1.1</td>
                                                    <td>
                                                        <button type="button" class="btn btn-default checkApp"
                                                                appinfoid="51" versionid="37" status="1"
                                                                statusname="待审核"
                                                                data-toggle="tooltip" data-placement="top" title="" data-original-title="查看并审核APP">审核</button>
                                                    </td>
                                                </tr>

                                                <tr role="row" class="odd">
                                                    <td tabindex="0" class="sorting_1">应用锁:Smart App Protector</td>
                                                    <td>com.sp.protector.free</td>
                                                    <td>3.00</td>
                                                    <td>手机</td>
                                                    <td>全部应用 -> 系统工具 -> 安全防护</td>
                                                    <td>待审核</td>
                                                    <td>5000</td>
                                                    <td></td>
                                                    <td>
                                                        <button type="button" class="btn btn-default checkApp"
                                                                appinfoid="50" versionid="" status="1"
                                                                statusname="待审核"
                                                                data-toggle="tooltip" data-placement="top" title="" data-original-title="查看并审核APP">审核</button>
                                                    </td>
                                                </tr>

                                                <tr role="row" class="odd">
                                                    <td tabindex="0" class="sorting_1">LBE安全大师</td>
                                                    <td>com.lbe.security</td>
                                                    <td>9.00</td>
                                                    <td>手机</td>
                                                    <td>全部应用 -> 系统工具 -> 安全防护</td>
                                                    <td>待审核</td>
                                                    <td>2000</td>
                                                    <td></td>
                                                    <td>
                                                        <button type="button" class="btn btn-default checkApp"
                                                                appinfoid="49" versionid="" status="1"
                                                                statusname="待审核"
                                                                data-toggle="tooltip" data-placement="top" title="" data-original-title="查看并审核APP">审核</button>
                                                    </td>
                                                </tr>--%>

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
<script src="/appinfo/statics/localjs/rollpage.js"></script>
<script src="/appinfo/statics/localjs/applist.js"></script>
