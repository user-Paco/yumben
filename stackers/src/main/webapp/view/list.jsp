<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/view/common/basePath.jsp" %>
<%@ include file="/view/admin/common/import.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文�?</title>
</head>
<body>
    <form:form action="#" id="listForm" name="listForm">
    <jsp:include page="/view/admin/common/place.jsp" />
    <div class="rightinfo">
    <table class="tablelist">
    	<thead>
	    	<tr>
	        <th><input type="checkbox" checked="checked"/></th>
	        <th>id</th>
	        <th>名称</th>
	        <th>采集地址</th>
	        <th>状态</th>
         <th>操作</th>	       
        </tr>
       </thead>
        <tbody>
        <c:forEach items="${pageView.pageDate }" var="bean">
	        <tr>
	        <td><input name="id" type="checkbox" value="" /></td>
	        <td>${bean.id }</td>
	        <td>${bean.name }</td>
	        <td>${bean.reptileUrl }</td>
	        <td>${bean.status }</td>
	        <td class="td-manage">
		        <a title="编辑" href="javascript:showForm('用户修改','${path}/admin/reptileRule/showForm?id=${bean.id }','100%','100%')" class="ml-5" style="text-decoration: none">
		            <i class="Hui-iconfont">&#xe6df;</i>
		        </a>
		        <a title="删除" href="javascript:del('${path }/admin/reptileRule/delete?id=${bean.id}')" class="ml-5" style="text-decoration: none">
		            <i class="Hui-iconfont">&#xe6e2;</i>
		        </a>
		        <a title="采集" href="javascript:handle('确定开始采集吗？','${path }/admin/reptileRule/reptile?id=${bean.id}')" class="ml-5" style="text-decoration: none">
		            <i class="Hui-iconfont">&#xe601;</i>
		        </a>
			</td>
	        </tr>
       </c:forEach>
        </tbody>
    </table>
   <jsp:include page="/view/admin/common/pageinfo.jsp" />
    </div>
    </form:form>
</body>
</html>
