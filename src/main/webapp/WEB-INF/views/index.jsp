<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>


<%@include file="include/header.jsp" %>
<%@include file="include/top.jsp" %>
<%@include file="include/search.jsp" %>

<style>

    .category-tab-content {
        position: relative;
    }

    .normal-nav {
        background-color: rgba(0, 0, 0, .55);
        width: 200px;
        height: 500px;
        position: absolute;
        z-index: 11;
    }

    .nav-item {
        padding-left: 30px;
        positon: relative;
        line-height: 31.2px;
        width: 200px;
        color: #FFFFFF;
        font-size: 14px;
    }

    .normal-nav .nav-item:hover {
        background-color: #FFFFFF;
        color: #e54077;
    }

    li, ul {
        list-style: none;
        margin: 0;
        padding: 0;
    }

    .hot-word-con {
        display: none;
        width: 852px;
        height: 500px;
        background-color: #FFFFFF;
        left: 200px;
        position: absolute;
        z-index: 100;
    }

    .hot-word-line {
        width: 583px;
        margin: 20px 80px 0px 80px;
        float: left;
    }

    .hot-word-line a {
        margin-left: 13px;
        height: 22px;
        line-height: 22px;
        font-size: 14px;
        float: left;
    }

    .seprate {
        margin-top: 42px;
        border-bottom: 1px dashed rgba(0, 0, 0, .1);
    }

    div.floor-line-con {
        margin-top: 20px;
        height: 330px;
        /*position: relative;*/
        float: left;
        overflow: hidden;
    }

    div.floor-line-con i {
        background-color: #0AA6E8;
        width: 5px;
        height: 18px;
        display: inline-block;
        vertical-align: middle;
    }

    .floor-name {
        margin-left: 10px;
        display: inline-block;
        font-size: 18px;
        color: #000000;
        height: 28px;
        vertical-align: middle;
    }

    .grid {
        margin-left: 13px;
        text-align: center;
    }

    .productItem {
        display: block;
        float: left;
        width: 233px;
        height: 300px;
        border: 1px solid #FFFFFF;
    }

    .productItem:hover {
        border: 1px solid #FF0036;
    }

    .floor-item-img {
        margin-top: 20px;
        position: relative;
        width: 185px;
        height: 185px;
    }

    .floor-item-title {
        width: 135px;
        height: 40px;
        font-size: 14px;
        color: #333333;
        line-height: 20px;
        overflow: hidden;
        margin: 8px auto;
    }

    .floor-price {
        font-size: 18px;
        color: #FF0036;
        line-height: 18px;
        margin: 10px auto;
    }

    .tm-end {
        /*display: block;*/
        position: relative;
        text-align: center;
        width: 80px;
        height: 45px;
        margin: 0 auto;
        -webkit-background-size: cover;
        background-size: cover;
        z-index: 9;
    }
</style>




<div style="clear: both;"></div>


<div class="new-floor-con">
    <div class="workArea">
        <c:forEach items="${categories}" var="c" varStatus="sts">
            <%-- 该分类下有产品才能显示 --%>
            <c:if test="${!empty c.products}">
                <%-- 默认只展示前五个分类的内容，多了页面太长 --%>
               <%-- <c:if test="${sts.count<=5}">--%>
                    <div class="floor-line-con">
                        <i class="color-mark"></i>
                        <div class="floor-name">${c.name}</div>
                        <br>
                        <c:forEach items="${c.products}" var="p" varStatus="status">
                            <c:if test="${status.count<=5}">
                                <%--转发到控制器--%>
                                <a class="grid" href="showProduct?product_id=${p.id}">
                                    <div class="productItem">
                                        <img class="floor-item-img" src="img/product/${p.id}/1.jpg">
                                        <div class="floor-item-title">${p.name}</div>
                                        <div class="floor-price">${p.price}</div>
                                    </div>
                                </a>
                            </c:if>
                        </c:forEach>
                    </div>
                    <div style="clear: both;"></div>
               <%-- </c:if>--%>
            </c:if>
        </c:forEach>
        <div class="tm-end">
            <img src="img/fore/end.png"/>
        </div>
    </div>
</div>
<div style="clear: both;"></div>


