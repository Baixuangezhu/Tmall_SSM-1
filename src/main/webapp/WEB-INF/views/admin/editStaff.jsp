<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>订单管理系统</title>
    <!-- Bootstrap Styles-->
    <link href="../assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- FontAwesome Styles-->
    <link href="../assets/css/font-awesome.css" rel="stylesheet"/>
    <!-- Morris Chart Styles-->
    <!-- Custom Styles-->
    <link href="../assets/css/custom-styles.css" rel="stylesheet"/>
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="listCategory">订单管理系统</a>
        </div>

        <%--<div class="pull-right" width="100px" fontsize="50">
            </br>
            <c:if test="${!empty sessionScope.staff}">
                <span class="myDiv1"><a>Hi，${sessionScope.staff.name}</a></span>
                <span class="myDiv1"><a href="/admin/Logout">----退出-----</a></span>
            </c:if>
        </div>--%>

    </nav>
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">

                <li>
                    <a  href="listCategory"><i class="fa fa-bars"></i> 分类管理</a>
                </li>

                <li>
                    <a href="listOrder"><i class="fa fa-list-alt"></i> 订单管理</a>
                </li>
                <li>
                    <a href="listStaff"><i class="fa fa-user"></i> 店员管理</a>
                </li>
            </ul>
        </div>
    </nav>
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header">
                        店员管理
                        <small> - 编号:${staff.id} --- ${staff.name}</small>
                    </h1>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3">
                    <a href="javascript:history.back()" class="btn btn-success">返回上一页</a>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            修改信息
                        </div>
                        <div class="panel-body">
                            <form action="updateStaff" role="form">
                                <input type="hidden" name="id" value="${staff.id}">
                                <input type="hidden" name="name" value="${staff.name}">
                                <label>密码：</label>
                                <input class="form-control" type="text" name="password" value="${staff.password}"><br>
                                <label>联系方式：</label>
                                <input class="form-control" type="text" name="phone" value="${staff.phone}"><br>
                                <input type="submit" class="btn btn-success pull-right" value="确认修改">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="../assets/js/jquery-1.10.2.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
</body>
</html>
