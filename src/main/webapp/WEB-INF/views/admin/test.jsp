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
    <!-- TABLE STYLES-->
    <link href="../assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet"/>
</head>
<body>



<%--
<div class="buyPageDiv">
    <form action="/admin/buyoneTest" method="post">
        <div class="address">
            <div class="addressTip">输入收货地址</div>
            <div>
                <table class="addressTable">
                    <tr>
                        <td class="firstColumn">详细地址<span class="redStar">*</span>福建省福州市闽侯县上街镇1024号</td>
                        <td><textarea name="address" placeholder="详细收货地址"></textarea></td>
                    </tr>
                    <tr>
                        <td>邮政编码</td>
                        <td><input name="post" placeholder=邮递区号" type="text">65539</td>
                    </tr>
                    <tr>
                        <td>收货人姓名<span class="redStar">*</span></td>
                        <td><input name="receiver" placeholder="收货人" type="text">王阳举</td>
                    </tr>
                    <tr>
                        <td>手机号码 <span class="redStar">*</span></td>
                        <td><input name="mobile" placeholder="请输入11位手机号码" type="text">15184687012</td>
                    </tr>
                    <tr>
                        <td>手机号码 <span class="redStar">*</span></td>
                        <td><input name="user_message" placeholder="请输入11位手机号码" type="text">尽快发货</td>
                    </tr>

                    <tr>s
                        <td class="firstColumn">商品id<span class="redStar">*</span></td>
                        <td><textarea name="product_id" placeholder="详细收货地址"></textarea></td>
                    </tr>
                    <tr>
                        <td class="firstColumn">数量<span class="redStar">*</span></td>
                        <td><textarea name="number" placeholder="详细收货地址"></textarea></td>
                    </tr>

                </table>
            </div>
        </div>
        <div class="submitOrderDiv">
            <button type="submit" class="submitOrderButton">提交订单</button>
        </div>
    </form>
</div>--%>


<div class="panel-body">
    <div class="row col-lg-6">
        <form action="/admin/buyoneTest" method="post">
            <div class="form-group">
                <label>收货地址</label>
                <input type="text" name="address"class="form-control" value="福建省福州市闽侯县上街镇1024号">
                <label>邮编</label>
                <input type="text" name="post"class="form-control" value="65536">
                <label>收货人</label>
                <input type="text" name="receiver" class="form-control" value="王洋">
                <label>联系方式</label>
                <input type="text" name="mobile"class="form-control" value="13290754845">
                <label>订单备注</label>
                <input type="text" name="user_message"class="form-control" value="麻烦尽快发货"> <br>
                <label>产品id</label>
                <input type="text" name="product_id"class="form-control" value="5"> <br>
                <label>数量</label>
                <input type="text" name="number"class="form-control" value="1"> <br>
                <label>用户id</label>
                <input type="text" name="userId"class="form-control" value="2"> <br>

                <input type="submit" class="btn btn-default pull-right" value="提交">
            </div>
        </form>
    </div>

</div>





<script src="../assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="../assets/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="../assets/js/jquery.metisMenu.js"></script>
<!-- DATA TABLE SCRIPTS -->
<script src="../assets/js/dataTables/jquery.dataTables.js"></script>
<script src="../assets/js/dataTables/dataTables.bootstrap.js"></script>

<script src="../assets/js/custom-scripts.js"></script>

</body>
</html>
