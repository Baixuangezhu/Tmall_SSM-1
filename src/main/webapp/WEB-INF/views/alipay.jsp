<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>

<%@include file="include/header.jsp" %>
<%@include file="include/top.jsp" %>

<style>
    div.aliPayPageDiv{
        text-align: center;
        padding-bottom: 40px;
        max-width: 1013px;
        margin: 10px auto;
    }
    div.aliPayPageLogo{
        margin: 20px;
    }
    span.confirmMoneyText{
        color: #4D4D4D;
    }
    span.confirmMoney{
        display: block;
        color: #FF6600;
        font-weight: bold;
        font-size: 20px;
        margin: 10px;
    }
    button.confirmPay{
        background-color: #00AAEE;
        border: 1px solid #00AAEE;
        text-align: center;
        line-height: 31px;
        font-size: 14px;
        font-weight: 700;
        color: white;
        width: 107px;
        margin-top: 20px;
    }

    img.aliPayImg {
        width: 300px;
    }
</style>
<div class="aliPayPageDiv">
    <div class="headerCon">
        <a href="/home">
            <img src="img/fore/slogo.png" id="logo">
        </a>
    </div>

    <div>
        <span class="confirmMoneyText">金额</span>
        <span class="confirmMoney">
		￥${param.total}</span>

    </div>
    <div>
        <img class="aliPayImg" src="img/fore/payImg.png">
    </div>

    <div>
        <a href="payed?order_id=${param.order_id}&total=${param.total}">
            <button class="confirmPay">确认</button>
        </a>
    </div>

</div>