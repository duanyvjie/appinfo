<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
</script>
</head>
<body>

 		<div class="row">
			<div class="col-sm-5">
				<div class="dataTables_info" id="datatable-responsive_info" role="status" aria-live="polite">
					共${param.totalCount }条记录&nbsp;&nbsp; ${param.currentPageNo }/${param.totalPageCount }页
				</div>

			</div>
			<div class="col-sm-7">

				&nbsp;&nbsp;
				<div class="dataTables_paginate paging_simple_numbers" id="datatable-responsive_paginate">
					<ul class="pagination">
					<c:if test="${param.currentPageNo > 1}">
							<li class="paginate_button ">
								<a href="javascript:page_nav(document.forms[0],1);" aria-controls="datatable-responsive" data-dt-idx="1" tabindex="0">首页</a>
							</li>
							<li class="paginate_button ">
								<a href="javascript:page_nav(document.forms[0],${currentPageNo}-1);" aria-controls="datatable-responsive" data-dt-idx="1" tabindex="0">上一页</a>
							</li>
					</c:if>

					<c:if test="${param.currentPageNo < param.totalPageCount }">
							<li class="paginate_button ">
								<a href="javascript:page_nav(document.forms[0],${currentPageNo}+1);" aria-controls="datatable-responsive" data-dt-idx="1" tabindex="0">下一页</a>
							</li>
							<li class="paginate_button next">
								<a href="javascript:page_nav(document.forms[0],${totalPageCount});" aria-controls="datatable-responsive" data-dt-idx="7" tabindex="0">最后一页</a>
							</li>
					</c:if>
					</ul>
				</div>
			</div>
		<%-- <span class="page-go-form"><label>跳转至</label>
	     <input type="text" name="inputPage" id="inputPage" class="page-key" />页
	     <button type="button" class="page-btn" onClick='jump_to(document.forms[0],document.getElementById("inputPage").value)'>GO</button>--%>
		</span>
		</div> 
</body>
<script src="/appinfo/statics/localjs/rollpage.js"></script>
</html>