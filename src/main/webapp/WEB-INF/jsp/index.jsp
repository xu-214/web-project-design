<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>首页</title>

    <!--    引入bootstrap-->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--    自定-->
    <%--    ${pageContext.request.contextPath}当前项目--%>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">
    <script src="js/jquery.js"></script>

    <!--    全屏滚动 css-->
    <style>
        .section1 { text-align: center; font: 20px "Microsoft Yahei"; color: #fff;}
        .section2 p { position: relative; bottom: -120%;}
        .section2 .news li { position: relative; left: -20%;}
        .section2 .notice li { position: relative; right: -20%;}
        #superContainer {
            height: 100%;
            position: relative;
        }
        footer {
              background-color: #94070a;
              text-align: center;
              font-size: 12px;
              color: white;
              padding: 5px;
              margin: 30px auto  0;
              width: 1400px;
          }


    </style>
    <!--    引入全屏滚动js-->
    <script src="js/fullScreenScrolling/jquery-1.8.3.min.js"></script>
    <script src="js/fullScreenScrolling/jquery-ui-1.10.3.min.js"></script>
    <script src="js/fullScreenScrolling/jquery.fullPage.min.js"></script>
    <script>
        $(document).ready(function () {
            // 全屏滚动
            $.fn.fullpage({
                resize: false,
                // slidesColor: ['#1bbc9b', '#4BBFC3', '#7BAABE', '#f90', '#ef820'],
                anchors: ['page1', 'page2', 'page3', 'page4', 'page5'],
                afterLoad: function(anchorLink, index){
                    if(index == 2){
                        $('.section2').find('p').delay(0).animate({
                            bottom: '0' ,speed: '2000'
                        }, 2000, 'easeOutExpo');
                        $('.section2').find('.news li').delay(0).animate({
                            left: '0'
                        }, 2000, 'easeOutExpo');
                        $('.section2').find('.notice li').delay(0).animate({
                            right: '0'
                        }, 2000, 'easeOutExpo');
                        $('.header').animate({
                            top: '-50%'
                        } , 200);
                        $('.header .block').css({background: 'white', 'box-shadow': '0 6px 20px 0 rgba(0, 0, 0, 0.19)'});
                        $('.header').animate({
                            top: '0'
                        });
                        $('.header .block .fab>a,.header .block .fab>p, .logo p,.manger a, .no-item>a').css({color: 'black'})
                    }
                },
                onLeave: function(index, direction){
                    if(index == '2'){
                        $('.section2').find('p').delay(0).animate({
                            bottom: '-120%'
                        }, 1500, 'easeOutExpo');
                        $('.section2').find('.news li').delay(0).animate({
                            left: '-20%'
                        }, 1500, 'easeOutExpo');
                        $('.section2').find('.notice li').delay(0).animate({
                            right: '-20%'
                        }, 1500, 'easeOutExpo');
                        $('.header').animate({
                            top: '-50%'
                        } , 200);
                        $('.header .block').css({background: 'linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0))', 'box-shadow': ''});
                        $('.header').animate({
                            top: '0'
                        });
                        $('.header .block .fab>a,.header .block .fab>p,.logo p,.manger a,.no-item>a').css({color: 'white'})
                    }
                }
            });
        })
    </script>
</head>
<body>
<div class="main">
    <div class="header">
        <%@include file="../../header.jsp"%>
    </div>
    <div class="section section1">
        <div id="myCarousel" class="carousel slide">
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="img/index/item01.gif" style="width: 100%; height: 100vh;object-fit: cover" alt="First slide">
                    <div class="carousel-caption">下雪的东林总是那么美</div>
                </div>
                <div class="item">
                    <img src="img/index/item02.gif" style="width: 100%; height: 100vh;object-fit: cover" alt="Second slide">
                    <div class="carousel-caption">2021年即将来临，你准备好了吗？</div>
                </div>
                <div class="item">
                    <img src="img/index/item03.gif" style="width: 100%; height: 100vh;object-fit: cover" alt="Third slide">
                    <div class="carousel-caption">冬至了，你会和谁一起吃饺子呢？</div>
                </div>
            </div>
            <!-- 轮播（Carousel）导航 -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <div class="section section2">
        <div class="warp_mode">
            <div class="mode">
                <div class="listTitle">
                    <h2>
                        新闻/公告
                        <i class="line_1"></i>
                        <i class="line_2"></i>
                    </h2>
                    <span>一起来看</span>
                </div>
                <div class="content">
                    <button style="flex-basis: 200%; padding:0;margin-top: -20px;margin-left: 0%; margin-bottom: -20px" type="button" class="btn btn-primary"> <a href="more" style="padding: 10px 600px">更多新闻与公告</a></button>
                    <%@include file="news.jsp"%>
                    <%@include file="notice.jsp"%>
                </div>
            </div>
            <%@include file="../../footer.jsp"%>
        </div>
    </div>
<%--    <div class="section section3">--%>
<%--        <h1 style="position: relative;top: 100px; color: blueviolet">啥都没有</h1>--%>
<%--        <img src="img/logo.jpg" alt="" style="width: 100vw; height: 100vh">--%>
<%--    </div>--%>
</div>
</body>
</html>