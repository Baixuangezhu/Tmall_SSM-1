<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>

<%@include file="include/header.jsp" %>
<%@include file="include/top.jsp" %>

<style>
    div.boughtDiv {
        max-width: 1013px;
        margin: 10px auto;
    }

    div.orderType div {
        border-bottom: 2px solid #E8E8E8;
        float: left;
    }

    div.orderType a {
        border-right: 1px solid #E8E8E8;
        display: inline-block;
        font-size: 16px;
        font-weight: bold;
        color: black;
        margin-bottom: 10px;
        padding: 0px 20px;
        text-decoration: none;
    }

    div.orderType a:hover {
        color: #FF0036;
        text-decoration: none;
    }

    div.orderType div.selectedOrderType {
        border-bottom: 2px solid #FF0036;
    }

    div.orderType div.selectedOrderType a {
        color: #FF0036;
    }

    div.orderTypeLastOne {
        overflow: hidden;
        float: none !important;
        border-bottom: 2px solid #E8E8E8;
        height: 35px;
    }

    a.noRightborder {
        border-right-width: 0px !important;
    }

    table.orderListTitleTable {
        border: 1px solid #E8E8E8;
        width: 100%;
        margin: 20px 0px;
        background-color: #F5F5F5;
        text-align: center;
        font-size: 12px;
    }

    table.orderListTitleTable td {
        padding: 12px 0px;
    }

    div.boughtDiv {
        max-width: 1180px;
        margin: 10px auto;
    }

    table.orderListItemTable {
        border: 2px solid #ECECEC;
        width: 100%;
        margin: 20px 0px;
        font-size: 12px;
    }

    table.orderListItemTable:hover {
        border: 2px solid #aaa !important;
    }

    table.orderListItemTable td {
        padding: 8px 10px;

    }

    tr.orderListItemFirstTR {
        background-color: #F1F1F1;
        width: 100%;
    }

    tr.orderItemProductInfoPartTR{
        width: 100%;
    }

    td.orderItemDeleteTD {
        text-align: right;
    }

    span.orderListItemDelete {
        display: inline-block;
        margin: 0px 10px;
        color: #999999;
        font-size: 16px;
    }

    div.orderListItemProductLinkOutDiv {
        position: relative;
        height: 80px;
    }

    div.orderListItemProductLinkInnerDiv {
        position: absolute;
        bottom: 0px;
    }

    div.orderListItemProductOriginalPrice {
        color: #999999;
        font-size: 14px;
    }

    div.orderListItemProductPrice {
        color: #3C3C3C;
        font-size: 14px;
    }

    td.orderListItemNumberTD {
        text-align: center;
    }

    td.orderItemOrderInfoPartTD {
        border: solid 1px #ECECEC;
    }

    span.orderListItemNumber {
        color: #3C3C3C;
        text-align: center;
    }

    td.orderListItemProductRealPriceTD {
        text-align: center;
    }

    div.orderListItemProductRealPrice {
        color: #3C3C3C;
        font-size: 14px;
        font-weight: bold;
    }

    div.orderListItemPriceWithTransport {
        color: #6C6C6C;
        font-size: 12px;
    }

    td.orderListItemButtonTD {
        text-align: center;
    }

    button.orderListItemReview {
        border: 1px solid #DCDCDC;
        background-color: #fff;
        border-radius: 2px;
        color: #3C3C3C;
        font-size: 12px;
        font-weight: bold;
        padding: 6px 12px;
    }

    button.orderListItemReview:hover {
        border-color: #C40000;
        color: #C40000;
    }

    button.orderListItemConfirm {
        background-color: #66B6FF;
        border-radius: 2px;
        color: white;
        font-size: 12px;
        font-weight: bold;
        border-width: 0px;
        padding: 6px 12px;
    }

    button.orderListItemConfirm:hover {
        background-color: #118ADB;
    }

    a {
        color: #999;
    }

    a:hover {
        text-decoration: none;
        color: #56ff0d;
    }
</style>


<div class="boughtDiv">

    <div class="headerCon">
        <a href="/home">
            <img src="img/fore/slogo.png" id="logo">
        </a>
    </div>

    <div class="orderType">
        <div class="selectedOrderType">所有订单</div>
        <div class="orderTypeLastOne"><a class="noRightborder"> </a></div>
    </div>

    <div style="clear:both"></div>
    <div class="orderListTitle">
        <table class="orderListTitleTable">
            <thead>
            <th>
            <td>商品</td>
            <td width="121px">价格</td>
            <td width="141px">联系方式</td>
            <td width="121px">交易操作</td>
            </th>
            </thead>

        </table>

    </div>

   <%-- 每个订单单独成一个表，每个订单项当作一行--%>
    <div class="orderListItem">
        <c:forEach items="${orders}" var="o">
            <table class="orderListItemTable" orderStatus="${o.status}" oid="${o.id}">
                <tr class="orderListItemFirstTR">
                    <td colspan="2">
                        <b>${o.create_date}</b>
                        <span>订单号: ${o.order_code}
                    </span>
                    </td>
                    <td colspan="2"></td>
                    <td colspan="1"></td>
                    <td class="orderItemDeleteTD">
                        <a href="/deleteOrder?order_id=${o.id}">
                            <span class="orderListItemDelete glyphicon glyphicon-trash"></span>
                        </a>
                    </td>
                </tr>
                <c:forEach items="${o.orderItems}" var="orderItem" varStatus="status"><%--varStatus="status"：遍历状态--%>
                    <tr class="orderItemProductInfoPartTR">
                        <td class="orderItemProductInfoPartTD" colspan="2"><img width="80" height="80"
                                                                    src="img/product/${orderItem.product.id}/1.jpg">
                        </td>
                        <td class="orderItemProductInfoPartTD" rowspan="1" width="450px">
                            <div class="orderItemProductInfoPartTD">
                                <span text-align：justify>
                                        ${orderItem.product.name}
                                </span>
                            </div>
                        </td>
                        <td class="orderItemProductInfoPartTD" rowspan="1" width="121px">
                            <div class="orderListItemProductPrice">￥${orderItem.product.price}</div>
                        </td>
                        <c:if test="${status.count==1}">
                            <td rowspan="1" class="orderItemProductInfoPartTD" width="121px">
                                <span class="orderListItemNumber">${o.mobile}</span>
                            </td>
                            <td rowspan="1" class="orderItemProductInfoPartTD" width="121px">
                                <c:if test="${o.status=='waitConfirm' }">
                                    <%--<a href="confirmPay?order_id=${o.id}">
                                        <button class="orderListItemConfirm">确认收货</button>
                                    </a>--%>

                                    <a href="orderConfirmed?order_id=${o.id}">
                                        <button class="orderListItemConfirm">确认收货</button>
                                    </a>


                                </c:if>
                                <c:if test="${o.status=='waitPay' }">
                                    <a href="payed?order_id=${o.id}&total=${o.total}">
                                        <button class="orderListItemConfirm">付款</button>

                                    </a>
                                </c:if>

                                <c:if test="${o.status=='waitDelivery' }">
                                    <span>待发货</span>
                                </c:if>

                                <c:if test="${o.status=='waitReview' }">
                                    <a href="review?order_id=${o.id}">
                                        <button class="orderListItemReview">待评价</button>
                                    </a>
                                </c:if>
                            </td>
                        </c:if>
                    </tr>
                </c:forEach>

            </table>
        </c:forEach>

    </div>

</div>


