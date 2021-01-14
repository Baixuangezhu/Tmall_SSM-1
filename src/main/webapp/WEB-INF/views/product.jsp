<%@ page import="cn.wmyskxz.pojo.Property" %>
<%@ page import="java.util.List" %>
<%@ page import="cn.wmyskxz.pojo.PropertyValue" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>


<%@include file="include/header.jsp" %>
<%@include file="include/top.jsp" %>
<%@include file="include/mini-search.jsp" %>

<style>
    .bigImg {
        width: 418px;
        height: 418px;
    }

    .smallImg {
        width: 56px !important;
        height: 56px;
        border: 2px solid white;
    }

    div.product {
        margin-top: 90px;
        position: relative;
        float: left;
        left: 50%;
    }

    div.imgAndInfo div.smallImageDiv {
        width: 80%;
        margin: 20px auto;
    }

    div.imgAndInfo img.smallImg:hover {
        border: 2px solid black;
    }

    div.imgAndInfo {
        width: 980px;
        height: 550px;
        display: inline-flex;
        position: relative;
        float: left;
        left: -50%;
    }

    div.imgInimgAndInfo {
        width: 420px;
       /* float: center;*/
    }

    div.imgInimgAndInfo img {
        width: 420px;
    }

    div.infoInimgAndInfo {
        padding: 0px 20px;
        overflow: hidden;
        width: 560px;
    }

    div.infoInimgAndInfo div.productTitle {
        color: black;
        font-size: 16px;
        font-weight: bold;
        margin: 0px 10px;
    }

    div.infoInimgAndInfo div.productSubTitle {
        color: #DD2727;
        font-size: 12px;
        margin: 0px 10px;
    }

    div.infoInimgAndInfo div.productPriceDiv {
        background-image: url(/img/fore/priceBackground.png);
        height: 85px;
        padding: 10px;
        color: #666666;
    }

    div.infoInimgAndInfo span.promotionPriceYuan {
        font-family: Arial;
        font-size: 18px;
        color: #FF0036;
    }

    div.infoInimgAndInfo span.promotionPrice {
        color: #FF0036;
        font-family: Arial;
        font-size: 30px;
        font-weight: bold;
    }

    div.infoInimgAndInfo span.promotionPriceDesc {
        color: #999999;
        display: inline-block;
        width: 68px;
        position: relative;
        left: 0px;
        top: -10px;
    }

    div.infoInimgAndInfo div.productSaleAndReviewNumber {
        margin: 20px 0px;
        border-top: 1px dotted #C9C9C9;
        border-bottom: 1px dotted #C9C9C9;
        padding: 10px;
    }

    div.infoInimgAndInfo div.productSaleAndReviewNumber div {
        display: inline-block;
        width: 49%;
        text-align: center;
        color: #999999;
        font-size: 12px;
    }

    div.infoInimgAndInfo div.productSaleAndReviewNumber div:first-child {
        border-right: 1px solid #E5DFDA;
    }

    div.productNumber span.updown img {
        display: inline-block;
        vertical-align: top;
    }

    div.infoInimgAndInfo span.serviceCommitmentLink a {
        color: #666666;
    }

    div.buyDiv {
        margin: 20px auto;
        text-align: center;
    }

    div.buyDiv button {
        display: inline-block;
        margin: 0px 10px;
        width: 180px;
        height: 40px;
    }

    .buyText{
        border: 1px solid #ff455c;
        background-color: #FFEDED;
        width: 150px;
        text-align: center;
        line-height: 40px;
        font-size: 16px;
        color: #FF0036;
    }
</style>


<div class="product">
    <div class="imgAndInfo">
        <div class="imgInimgAndInfo">
            <img class="bigImg" src="img/product/${product.id}/1.jpg">
            <div class="smallImageDiv">
                <img class="smallImg" src="img/product/${product.id}/1.jpg" bigImgURL="img/product/${product.id}/1.jpg">
                <img class="smallImg" src="img/product/${product.id}/2.jpg" bigImgURL="img/product/${product.id}/2.jpg">
                <img class="smallImg" src="img/product/${product.id}/3.jpg" bigImgURL="img/product/${product.id}/3.jpg">
                <img class="smallImg" src="img/product/${product.id}/4.jpg" bigImgURL="img/product/${product.id}/4.jpg">
                <img class="smallImg" src="img/product/${product.id}/5.jpg" bigImgURL="img/product/${product.id}/5.jpg">
                <div class="img4load hidden"></div>
            </div>
        </div>

        <div class="infoInimgAndInfo">
            <div class="productTitle">
                ${product.name}
            </div>
            <div class="productSubTitle">
                ${product.sub_title}
            </div>
            <div class="productParamterPart">
                <div class="productParamter">产品参数：</div>
                <div class="productParamterList">
                    <c:forEach items="${propertyValues}" var="pvs">
                        <span>${pvs.property.name}:${pvs.value}</span>
                    </c:forEach>
                </div>
                <div style="clear:both"></div>
            </div>
            <div class="productPrice">
                <div class="productPriceDiv">
                    <div class="promotionDiv">
                        <span class="promotionPriceDesc">价格</span>
                        <span class="promotionPriceYuan">¥</span>
                        <span class="promotionPrice">${product.price}</span>
                    </div>
                </div>
            </div>

            <div class="productSaleAndReviewNumber">
                <div>销量<span class="redColor boldWord">${product.sale}</span></div>
                <div>库存<span class="redColor boldWord">${product.stock}</span></div>
            </div>
            <div class="buyDiv">
                <form action="/buyone" role="form">
                    <input type="hidden" name="product_id" value="${product.id}">
                    <input type="hidden" name="number" value="1">
                    <input type="submit" class="buyText" value="购买">

                </form>
            </div>
        </div>
        <div style="clear:both"></div>
    </div>
</div>
<div style="clear: both;"></div>

<style>
    div.productParamterPart {
        border: 1px solid #DFDFDF;
        padding: 40px;
    }

    div.productParamter {
        color: #999999;
        font-weight: bold;
        margin-bottom: 20px;
    }

    div.productParamterList span {
        display: block;
        width: 220px;
        float: left;
        padding: 8px 0px;
        color: #666666;
    }

    div.productDetailImagesPart img {
        display: block;
        width: 790px;
        margin: 20px 0px;
    }

    div.productReviewDiv {
        width: 790px;
        margin: 40px auto;
    }

    div.productReviewTopPart {
        border: 1px solid #DFDFDF;
    }

    a.productReviewTopPartSelectedLink {
        padding: 0px 20px;
        color: #333333;
    }

    div.productReviewContentPart {
        padding-top: 50px;
    }

    div.productReviewItem {
        border-bottom: 1px solid #E3E3E3;
        margin: 10px 0px;
    }

    div.productReviewContentPart {
        padding-top: 50px;
    }

    div.productReviewItem {
        border-bottom: 1px solid #E3E3E3;
        margin: 10px 0px;
    }

    div.productReviewItem div.productReviewItemDesc {
        width: 80%;
        display: inline-block;
        color: #333333;
        margin: 5px 20px;
        float: left;
    }

    div.productReviewItemDate {
        margin: 15px 0px 0px 0px;
        color: #CCCCCC;
    }

    div.productReviewItem div.productReviewItemUserInfo {
        color: #404040;
        margin: 5px 20px;
        padding: 20px 0;
    }

    span.userInfoGrayPart {
        color: #999999;
    }
</style>



