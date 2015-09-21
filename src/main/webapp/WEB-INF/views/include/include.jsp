<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%-- <link rel="icon" href="${ctx }/resources/image/logo.png" type="image/x-icon"> --%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<base href="<%=basePath%>">
<script type="text/javascript" src="${ctx }/resources/js/jquery.min.js"></script>

<!--拓展的json-->
<script type="text/javascript" src="${ctx}/resources/js/json2.js" charset="utf-8"></script>
<script type="text/javascript" src="${ctx}/resources/js/util.js" charset="utf-8"></script>

<!-- 引入my97日期时间控件 -->
<script type="text/javascript" src="${ctx}/resources/js/My97DatePicker4.8b3/My97DatePicker/WdatePicker.js" charset="utf-8"></script>
 
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/ztree/js/jquery.ztree.all-3.5.min.js"></script>
 
<link href="${pageContext.request.contextPath}/resources/js/ztree/css/zTreeStyle/zTreeStyle.css" rel="stylesheet" media="screen">
<link href="${pageContext.request.contextPath}/resources/js/ztree/css/demo.css" rel="stylesheet" media="screen">
  
 <%--  <link rel="stylesheet" href="${ctx}/resources/css/style.css" type="text/css"> --%>
  
<script type="text/javascript">
   var contextPath = "${ctx}";
</script>
