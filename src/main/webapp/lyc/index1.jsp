<%--
  Created by IntelliJ IDEA.
  User: zhangfangchao
  Date: 2018/6/1
  Time: 18:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Title</title>
    <script src="<%= basePath%>/lyc/js/jquery-1.11.0.js"></script>
</head>
<body>
<div id="myDiv" style="height: auto;width: auto;"></div>
<button id="b01">button</button>
<script>
    $(document).ready(function(){
        $("#b01").click(function(){ //绑定事件
            htmlobj=$.ajax({contentType: "application/x-www-form-urlencoded; charset=utf-8",url:"/music/林俊杰 - 可惜没如果.lrc",async:false}); //获取test1.txt内容并赋值
            $("#myDiv").html(htmlobj.responseText); //替换标签内的html
        });
    });
</script>

</body>
</html>
