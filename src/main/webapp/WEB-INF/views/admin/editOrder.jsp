<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>订单管理系统</title>
    <!-- Bootstrap Styles-->
    <link href="../assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="../assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->

    <!-- Custom Styles-->
    <link href="../assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <!-- TABLE STYLES-->
    <link href="../assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
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
    </nav>

    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">

                <li>
                    <a class="active-menu" href="listCategory"><i class="fa fa-bars"></i> 分类管理</a>
                </li>
                <%-- <li>
                     <a href="listUser"><i class="fa fa-user"></i> 客户管理</a>
                 </li>--%>
                <li>
                    <a href="listOrder"><i class="fa fa-list-alt"></i> 订单管理</a>
                </li>
                <li>
                    <%-- <a href="listLink"><i class="fa fa-link"></i> 推荐链接管理</a>--%>
                    <a href="listStaff"><i class="fa fa-user"></i> 店员管理</a>
                </li>
            </ul>
        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header">
                        订单详情
                        <small> 订单号：${order.order_code} -- 收货人：${order.receiver} </small>
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
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            编辑订单信息
                        </div>
                        <div class="panel-body">
                            <div class="row col-lg-12">
                                <form action="updateOrder" role="form">
                                    <div class="form-group">
                                        <input type="hidden" name="id" value="${order.id}">
                                        <input type="hidden" name="order_code" value="${order.order_code}">
                                        <label>收货地址</label>
                                        <input type="text" name="address"class="form-control" value="${order.address}">
                                        <label>邮编</label>
                                        <input type="text" name="post"class="form-control" value="${order.post}">
                                        <label>收货人</label>
                                        <input type="text" name="receiver" class="form-control" value="${order.receiver}">
                                        <label>联系方式</label>
                                        <input type="text" name="mobile"class="form-control" value="${order.mobile}">
                                        <label>订单备注</label>
                                        <input type="text" name="user_message"class="form-control" value="${order.user_message}"> <br>

                                        <input type="hidden" name="create_date" value="${order.create_date}">
                                        <input type="hidden" name="pay_date" value="${order.pay_date}">
                                        <input type="hidden" name="delivery_date" value="${order.delivery_date}">
                                        <input type="hidden" name="confirm_date" value="${order.confirm_date}">
                                        <input type="hidden" name="user_id" value="${order.user_id}">
                                        <input type="hidden" name="status" value="${order.status}">






                                        <input type="submit" class="btn btn-default pull-right" value="确认修改">
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>

        </div>
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="../assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="../assets/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="../assets/js/jquery.metisMenu.js"></script>
<!-- DATA TABLE SCRIPTS -->
<script src="../assets/js/dataTables/jquery.dataTables.js"></script>
<script src="../assets/js/dataTables/dataTables.bootstrap.js"></script>
<script>
    $(document).ready(function () {
        $('#dataTables-example').dataTable();
    });
</script>
<!-- Custom Js -->
<script src="../assets/js/custom-scripts.js"></script>
</body>
</html>
