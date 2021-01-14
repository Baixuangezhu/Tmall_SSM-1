<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>

<%@include file="include/header.jsp" %>
<%@include file="include/top.jsp" %>

<style>
    div.payedDiv{
        border: 1px solid #D4D4D4;
        max-width: 1013px;
        margin: 10px auto 20px auto;
    }
    div.payedTextDiv{
        height: 61px;
        background-color: #ECFFDC;
        padding: 17px 0px 0px 25px;
    }
    div.payedTextDiv span{
        font-weight: bold;
        font-size: 14px;
        margin-left: 10px;
    }
    div.payedAddressInfo{
        padding: 26px 35px;
    }
    div.payedAddressInfo li{
        background-image:url(/img/fore/li_dot.png);
        background-repeat: no-repeat;
        background-color: transparent;
        background-attachment: scroll;
        background-position: 0px 13px;
        list-style-type: none;
        color: #333333;
        padding-left: 15px;
        padding-top: 5px;
    }
    span.payedInfoPrice{
        color: #B10000;
        font-weight: bold;
        font-size: 14px;
        font-family: arial;
    }
    div.paedCheckLinkDiv{
        margin-left: 38px;
    }
    a.payedCheckLink{
        color: #2D8CBA;
    }
    a.payedCheckLink:hover{
        color: #2D8CBA;
        text-decoration: underline;
    }
    div.payedSeperateLine{
        border-top: 1px dotted #D4D4D4;
        margin: 0px 31px;
    }
    div.warningDiv{
        margin: 23px 45px;
        color:black;
    }
</style>

<div class="payedDiv">
    <div class="payedTextDiv">
        <img src="img/fore/paySuccess.png">
        <span>您已成功付款</span>

    </div>
    <div class="payedAddressInfo">
        <ul>
            <li>收货地址：${o.address} ${o.receiver} ${o.mobile }</li>
            <li>实付款：<span class="payedInfoPrice">
            ￥${param.total}
            </li>
        </ul>

        <div class="paedCheckLinkDiv">
            您可以
            <a class="payedCheckLink" href="bought">查看订单</a>
        </div>

    </div>

    <div class="payedSeperateLine">
    </div>
</div>

