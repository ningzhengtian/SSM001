<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/5/18
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        .content {
            width: 950px;
        }

        #All:hover {
            cursor: pointer;
        }

        .content table input {
            width: 15px;
            height: 15px;
        }
    </style>
</head>
<body>
欢迎您
<a href="/logOut">退出账号</a><br>
<a href="/toTb">我的淘宝</a><br>
<a href="/toGwc">购物车</a><br>
<h1>客户信息列表</h1>
<div class="content">
    <form:form modelAttribute="customer" action="" id="queryFor">
        <table border="1px" cellpadding="5" cellspacing="0">
            <tr>
                <td width="5%" align="center" id="All" 全选></td>
                <td width="15%" align="center">客户编号</td>
                <td width="15%" align="center">客户名称</td>
                <td width="15%" align="center">客户负责人</td>
                <td width="18%" align="center">客户信息来源</td>
                <td width="18%" align="center">客户所属行业</td>
                <td width="23%" align="center">创建日期</td>
            </tr>

            <c:forEach items="${list}" var="c">
                <tr>
                    <td><input type="checkbox" name="selectCustomerId"></td>
                    <td>${c.customerId}</td>
                    <td>${c.customerName}</td>
                    <td>${c.customerUserId}</td>
                    <td>${c.customerSourseDict}</td>
                    <td>${c.customerIndustryDict}</td>
                    <td>${c.customerDate}</td>

                </tr>
            </c:forEach>
        </table>

    </form:form>
</div>
</body>
</html>
