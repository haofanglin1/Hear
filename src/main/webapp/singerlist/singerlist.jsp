<%--
  Created by IntelliJ IDEA.
  User: zhangfangchao
  Date: 2018/5/30
  Time: 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>歌手列表</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="<%= basePath%>singerlist/resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="<%= basePath%>singerlist/resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="<%= basePath%>singerlist/data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="<%= basePath%>singerlist/files/singerlist/styles.css" type="text/css" rel="stylesheet"/>
    <script src="<%= basePath%>singerlist/resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/axQuery.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/globals.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axutils.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/annotation.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/axQuery.std.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/doc.js"></script>
    <script src="<%= basePath%>singerlist/data/document.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/messagecenter.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/events.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/action.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/expr.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/geometry.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/flyout.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/ie.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/model.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/repeater.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/sto.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/utils.temp.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/variables.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/drag.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/move.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/visibility.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/style.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/adaptive.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/tree.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/init.temp.js"></script>
    <script src="<%= basePath%>singerlist/files/singerlist/data.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/legacy.js"></script>
    <script src="<%= basePath%>singerlist/resources/scripts/axure/viewer.js"></script>
    <script type="text/javascript">
        $axure.utils.getTransparentGifPath = function() { return '<%= basePath%>singerlist/resources/images/transparent.gif'; };
        $axure.utils.getOtherPath = function() { return '<%= basePath%>singerlist/resources/Other.html'; };
        $axure.utils.getReloadPath = function() { return '<%= basePath%>singerlist/resources/reload.html'; };
    </script>

    <link rel="stylesheet" type="text/css" href="<%= basePath%>singerlist/navcss/normalize.css" />
    <link rel="stylesheet" type="text/css" href="<%= basePath%>singerlist/navcss/demo.css" />
    <!--主要样式-->
    <link rel="stylesheet" type="text/css" href="<%= basePath%>singerlist/navcss/component.css" />
    <link rel="stylesheet" type="text/css" href="<%= basePath%>singerlist/navcss/base.css">
    <link rel="stylesheet" type="text/css" href="<%= basePath%>singerlist/navcss/tab.css">
    <link rel="stylesheet" type="text/css" href="<%= basePath%>singerlist/navcss/bootstrap.css">
    <script src="<%= basePath%>singerlist/navjs/js/jquery.min.js"></script>
    <script src="<%= basePath%>singerlist/navjs/navfunc.js"></script>
    <script src="<%= basePath%>singerlist/navjs/classie.js"></script>
    <script src="<%= basePath%>singerlist/navjs/clipboard.min.js"></script>
    <style>
        #logo {
            position: absolute;
            left: 30px;
            width: 164px;
            height: 62px;
        }
        #ul{
            position: absolute;
            left: 190px;
            top: -5px;
        }
        .singerimg{
            height:130px;
            width:130px;
        }
        .imgcontain1{
             position:relative;
             height: auto;
             width: 740px;
             left:38px;
             top:65px;
         }
        .fix{
            display:inline-block;
            width: 300px;
        }
        .imgcontain2{
            position:relative;
            height: auto;
            width: 740px;
            left:38px;
            top:520px;
        }
        .imgs1{
            position:relative;
            float:left;
            margin:24px 7px;
        }
        .imgs2{
            position: relative;
            float:left;
            margin:15px 7px 28px 7px;
            top: -400px;
        }

        .singername{
            display:block;
            text-align: left;
        }
        a{
            text-decoration: none;
            color: #000000;
        }
    </style>
</head>
<body>
<div class="container" style="height: 70px; width: 100%;position:relative;padding-left:0;padding-right:0;">
    <nav class="nav menu menu--miranda" style="background-color:#000000;height: 70px;width: 100%;position:relative;left:0;" >
        <img href="#"  id="logo" src="<%= basePath%>singerlist/navimg/logo.png"></img>
        <ul class="menu__list" id="ul">
            <li class="menu__item menu__item--current" style="margin-left: 1px"><a href="#" class="menu__link">推荐</a></li>
            <li class="menu__item" style="margin-left: 1px"><a href="#" class="menu__link">排行榜</a></li>
            <li class="menu__item" style="margin-left: 1px"><a href="#" class="menu__link">歌单</a></li>
            <li class="menu__item" style="margin-left: 1px"><a href="#" class="menu__link">歌手</a></li>
            <li class="menu__item" style="margin-left: 1px"><a href="#" class="menu__link">我的音乐</a></li>
            <li class="menu__item" style="margin-left: 1px"><a href="#" class="menu__link">朋友</a></li>
            <div class="search d7">
                <form>
                    <input type="text" placeholder="Hear...">
                    <button type="submit"><img src="<%= basePath%>singerlist/navimg/1.jpg"/></button>
                </form>
            </div>
        </ul>
    </nav>
</div>
<!-- /container -->


<%--导航部分结束--%>
<div id="base" style="top:0;">

    <!-- 总背景 (形状) -->
    <div id="u0" class="ax_形状" data-label="总背景" >
        <img id="u0_img" class="img " src="<%= basePath%>singerlist/images/singerlist/总背景_u0.png"/>
        <!-- Unnamed () -->
        <div id="u1" class="text"></div>
    </div>

    <!-- 歌手动态版 (动态面板) -->
    <div id="u2" class="ax_动态面板" data-label="歌手动态版">
        <div id="u2_state0" class="panel_state" data-label="推荐歌手">
            <div id="u2_state0_content" class="panel_state_content">

                <!-- 中间界面背景 (形状) -->
                <div id="u3" class="ax_形状" data-label="中间界面背景">
                    <img id="u3_img" class="img " src="<%= basePath%>singerlist/images/singerlist/中间界面背景_u3.png"/>
                    <!-- Unnamed () -->
                    <div id="u4" class="text"></div>
                </div>

                <!-- 入驻歌手分割线 (横线) -->
                <div id="u5" class="ax_横线" data-label="入驻歌手分割线">
                    <img id="u5_start" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u5_start"/>
                    <img id="u5_end" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u5_end"/>
                    <img id="u5_line" class="img " src="<%= basePath%>singerlist/images/singerlist/入驻歌手分割线_u5_line.png" alt="u5_line"/>
                </div>

                <!-- 入驻歌手 (形状) -->
                <div id="u6" class="ax_文本" data-label="入驻歌手">
                    <img id="u6_img" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif"/>
                    <!-- Unnamed () -->
                    <div id="u7" class="text">
                        <p><span>入驻歌手</span></p>
                    </div>
                </div>
                <%--从数据库查出的 推荐歌手-->入驻歌手 列表--%>
                <div class="imgcontain1">
                    <c:forEach items="${myslist1}" var="singer">
                        <div class="imgs1">
                            <a href="#"><img class="singerimg" src='/music/singerimg/${singer.img}'/></a>
                            <a href="#" class="singername">${singer.name}</a>
                        </div>
                    </c:forEach>
                </div>

                <!-- 热门歌手分割线 (横线) -->
                <div id="u8" class="ax_横线" data-label="热门歌手分割线">
                    <img id="u8_start" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u8_start"/>
                    <img id="u8_end" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u8_end"/>
                    <img id="u8_line" class="img " src="<%= basePath%>singerlist/images/singerlist/入驻歌手分割线_u5_line.png" alt="u8_line"/>
                </div>

                <!-- 热门歌手 (形状) -->
                <div id="u9" class="ax_文本" data-label="热门歌手">
                    <img id="u9_img" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif"/>
                    <!-- Unnamed () -->
                    <div id="u10" class="text">
                        <p><span>热门</span><span>歌手</span></p>
                    </div>
                </div>

                <%--从数据库查出的 推荐歌手-->热门歌手 列表--%>
                <div class="imgcontain2">
                    <%--不明原因左侧留白 加行内元素div修复此问题--%>
                    <%--<div class="fix"></div>--%>

                    <c:forEach items="${recommendslist}" var="singer">
                        <div class="imgs2">
                            <a href="#"><img class="singerimg" src='/music/singerimg/${singer.img}'/></a>
                            <a href="#" class="singername">${singer.name}</a>
                        </div>
                    </c:forEach>

                </div>

            </div>
        </div>
        <div id="u2_state1" class="panel_state" data-label="入驻歌手">
            <div id="u2_state1_content" class="panel_state_content">

                <!-- Unnamed (形状) -->
                <div id="u11" class="ax_形状">
                    <img id="u11_img" class="img " src="<%= basePath%>singerlist/images/singerlist/中间界面背景_u3.png"/>
                    <!-- Unnamed () -->
                    <div id="u12" class="text"></div>
                </div>

                <!-- Unnamed (横线) -->
                <div id="u13" class="ax_横线">
                    <img id="u13_start" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u13_start"/>
                    <img id="u13_end" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u13_end"/>
                    <img id="u13_line" class="img " src="<%= basePath%>singerlist/images/singerlist/入驻歌手分割线_u5_line.png" alt="u13_line"/>
                </div>

                <!-- Unnamed (形状) -->
                <div id="u14" class="ax_文本">
                    <img id="u14_img" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif"/>
                    <!-- Unnamed () -->
                    <div id="u15" class="text">
                        <p><span>入驻歌手</span></p>
                    </div>
                </div>

                <%--从数据库查出的 入驻歌手 列表--%>
                <div class="imgcontain1">
                    <c:forEach items="${myslist2}" var="singer">
                        <div class="imgs1">
                            <a href="#"><img class="singerimg" src='/music/singerimg/${singer.img}'/></a>
                            <a href="#" class="singername">${singer.name}</a>
                        </div>
                    </c:forEach>
                </div>

            </div>
        </div>
        <div id="u2_state2" class="panel_state" data-label="华语男歌手">
            <div id="u2_state2_content" class="panel_state_content">

                <!-- Unnamed (形状) -->
                <div id="u16" class="ax_形状">
                    <img id="u16_img" class="img " src="<%= basePath%>singerlist/images/singerlist/中间界面背景_u3.png"/>
                    <!-- Unnamed () -->
                    <div id="u17" class="text"></div>
                </div>

                <!-- Unnamed (横线) -->
                <div id="u18" class="ax_横线">
                    <img id="u18_start" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u18_start"/>
                    <img id="u18_end" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u18_end"/>
                    <img id="u18_line" class="img " src="<%= basePath%>singerlist/images/singerlist/入驻歌手分割线_u5_line.png" alt="u18_line"/>
                </div>

                <!-- Unnamed (形状) -->
                <div id="u19" class="ax_文本">
                    <img id="u19_img" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif"/>
                    <!-- Unnamed () -->
                    <div id="u20" class="text">
                        <p><span>华语</span><span>男</span><span>歌手</span></p>
                    </div>
                </div>
                <%--查询华语男歌手--%>
                <div class="imgcontain1">
                    <c:forEach items="${chmaleslist}" var="singer">
                        <div class="imgs1">
                            <a href="#"><img class="singerimg" src='/music/singerimg/${singer.img}'/></a>
                            <a href="#" class="singername">${singer.name}</a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div id="u2_state3" class="panel_state" data-label="华语女歌手">
            <div id="u2_state3_content" class="panel_state_content">

                <!-- Unnamed (形状) -->
                <div id="u21" class="ax_形状">
                    <img id="u21_img" class="img " src="<%= basePath%>singerlist/images/singerlist/中间界面背景_u3.png"/>
                    <!-- Unnamed () -->
                    <div id="u22" class="text"></div>
                </div>

                <!-- Unnamed (横线) -->
                <div id="u23" class="ax_横线">
                    <img id="u23_start" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u23_start"/>
                    <img id="u23_end" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u23_end"/>
                    <img id="u23_line" class="img " src="<%= basePath%>singerlist/images/singerlist/入驻歌手分割线_u5_line.png" alt="u23_line"/>
                </div>

                <!-- Unnamed (形状) -->
                <div id="u24" class="ax_文本">
                    <img id="u24_img" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif"/>
                    <!-- Unnamed () -->
                    <div id="u25" class="text">
                        <p><span>华语</span><span>女</span><span>歌手</span></p>
                    </div>
                </div>

                <%--查询华语女歌手--%>
                <div class="imgcontain1">
                    <c:forEach items="${chfemaleslist}" var="singer">
                        <div class="imgs1">
                            <a href="#"><img class="singerimg" src='/music/singerimg/${singer.img}'/></a>
                            <a href="#" class="singername">${singer.name}</a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div id="u2_state4" class="panel_state" data-label="华语组合乐队">
            <div id="u2_state4_content" class="panel_state_content">

                <!-- Unnamed (形状) -->
                <div id="u26" class="ax_形状">
                    <img id="u26_img" class="img " src="<%= basePath%>singerlist/images/singerlist/中间界面背景_u3.png"/>
                    <!-- Unnamed () -->
                    <div id="u27" class="text"></div>
                </div>

                <!-- Unnamed (横线) -->
                <div id="u28" class="ax_横线">
                    <img id="u28_start" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u28_start"/>
                    <img id="u28_end" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u28_end"/>
                    <img id="u28_line" class="img " src="<%= basePath%>singerlist/images/singerlist/入驻歌手分割线_u5_line.png" alt="u28_line"/>
                </div>

                <!-- Unnamed (形状) -->
                <div id="u29" class="ax_文本">
                    <img id="u29_img" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif"/>
                    <!-- Unnamed () -->
                    <div id="u30" class="text">
                        <p><span>华语</span><span>组合</span><span>/乐队</span></p>
                    </div>
                </div>

                <%--查询华语乐队--%>
                <div class="imgcontain1">
                    <c:forEach items="${chbandslist}" var="singer">
                        <div class="imgs1">
                            <a href="#"><img class="singerimg" src='/music/singerimg/${singer.img}'/></a>
                            <a href="#" class="singername">${singer.name}</a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div id="u2_state5" class="panel_state" data-label="欧美男歌手">
            <div id="u2_state5_content" class="panel_state_content">

                <!-- Unnamed (形状) -->
                <div id="u31" class="ax_形状">
                    <img id="u31_img" class="img " src="<%= basePath%>singerlist/images/singerlist/中间界面背景_u3.png"/>
                    <!-- Unnamed () -->
                    <div id="u32" class="text"></div>
                </div>

                <!-- Unnamed (横线) -->
                <div id="u33" class="ax_横线">
                    <img id="u33_start" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u33_start"/>
                    <img id="u33_end" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u33_end"/>
                    <img id="u33_line" class="img " src="<%= basePath%>singerlist/images/singerlist/入驻歌手分割线_u5_line.png" alt="u33_line"/>
                </div>

                <!-- Unnamed (形状) -->
                <div id="u34" class="ax_文本">
                    <img id="u34_img" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif"/>
                    <!-- Unnamed () -->
                    <div id="u35" class="text">
                        <p><span>欧美</span><span>男</span><span>歌手</span></p>
                    </div>
                </div>

                <%--查询欧美男歌手--%>
                <div class="imgcontain1">
                    <c:forEach items="${engmaleslist}" var="singer">
                        <div class="imgs1">
                            <a href="#"><img class="singerimg" src='/music/singerimg/${singer.img}'/></a>
                            <a href="#" class="singername">${singer.name}</a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div id="u2_state6" class="panel_state" data-label="日韩男歌手">
            <div id="u2_state6_content" class="panel_state_content">

                <!-- Unnamed (形状) -->
                <div id="u36" class="ax_形状">
                    <img id="u36_img" class="img " src="<%= basePath%>singerlist/images/singerlist/中间界面背景_u3.png"/>
                    <!-- Unnamed () -->
                    <div id="u37" class="text"></div>
                </div>

                <!-- Unnamed (横线) -->
                <div id="u38" class="ax_横线">
                    <img id="u38_start" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u38_start"/>
                    <img id="u38_end" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u38_end"/>
                    <img id="u38_line" class="img " src="<%= basePath%>singerlist/images/singerlist/入驻歌手分割线_u5_line.png" alt="u38_line"/>
                </div>

                <!-- Unnamed (形状) -->
                <div id="u39" class="ax_文本">
                    <img id="u39_img" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif"/>
                    <!-- Unnamed () -->
                    <div id="u40" class="text">
                        <p><span>日韩男歌手</span></p>
                    </div>
                </div>

                <%--查询日韩男歌手--%>
                <div class="imgcontain1">
                    <c:forEach items="${jkmaleslist}" var="singer">
                        <div class="imgs1">
                            <a href="#"><img class="singerimg" src='/music/singerimg/${singer.img}'/></a>
                            <a href="#" class="singername">${singer.name}</a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div id="u2_state7" class="panel_state" data-label="欧美女歌手">
            <div id="u2_state7_content" class="panel_state_content">

                <!-- Unnamed (形状) -->
                <div id="u41" class="ax_形状">
                    <img id="u41_img" class="img " src="<%= basePath%>singerlist/images/singerlist/中间界面背景_u3.png"/>
                    <!-- Unnamed () -->
                    <div id="u42" class="text"></div>
                </div>

                <!-- Unnamed (横线) -->
                <div id="u43" class="ax_横线">
                    <img id="u43_start" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u43_start"/>
                    <img id="u43_end" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u43_end"/>
                    <img id="u43_line" class="img " src="<%= basePath%>singerlist/images/singerlist/入驻歌手分割线_u5_line.png" alt="u43_line"/>
                </div>

                <!-- Unnamed (形状) -->
                <div id="u44" class="ax_文本">
                    <img id="u44_img" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif"/>
                    <!-- Unnamed () -->
                    <div id="u45" class="text">
                        <p><span>欧美</span><span>女</span><span>歌手</span></p>
                    </div>
                </div>

                <%--查询欧美女歌手--%>
                <div class="imgcontain1">
                    <c:forEach items="${engfemaleslist}" var="singer">
                        <div class="imgs1">
                            <a href="#"><img class="singerimg" src='/music/singerimg/${singer.img}'/></a>
                            <a href="#" class="singername">${singer.name}</a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div id="u2_state8" class="panel_state" data-label="欧美组合乐队">
            <div id="u2_state8_content" class="panel_state_content">

                <!-- Unnamed (形状) -->
                <div id="u46" class="ax_形状">
                    <img id="u46_img" class="img " src="<%= basePath%>singerlist/images/singerlist/中间界面背景_u3.png"/>
                    <!-- Unnamed () -->
                    <div id="u47" class="text"></div>
                </div>

                <!-- Unnamed (横线) -->
                <div id="u48" class="ax_横线">
                    <img id="u48_start" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u48_start"/>
                    <img id="u48_end" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u48_end"/>
                    <img id="u48_line" class="img " src="<%= basePath%>singerlist/images/singerlist/入驻歌手分割线_u5_line.png" alt="u48_line"/>
                </div>

                <!-- Unnamed (形状) -->
                <div id="u49" class="ax_文本">
                    <img id="u49_img" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif"/>
                    <!-- Unnamed () -->
                    <div id="u50" class="text">
                        <p><span>欧美</span><span>组合</span><span>/乐队</span></p>
                    </div>
                </div>

                <%--查询欧美乐队--%>
                <div class="imgcontain1">
                    <c:forEach items="${engbandslist}" var="singer">
                        <div class="imgs1">
                            <a href="#"><img class="singerimg" src='/music/singerimg/${singer.img}'/></a>
                            <a href="#" class="singername">${singer.name}</a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div id="u2_state9" class="panel_state" data-label="日韩女歌手">
            <div id="u2_state9_content" class="panel_state_content">

                <!-- Unnamed (形状) -->
                <div id="u51" class="ax_形状">
                    <img id="u51_img" class="img " src="<%= basePath%>singerlist/images/singerlist/中间界面背景_u3.png"/>
                    <!-- Unnamed () -->
                    <div id="u52" class="text"></div>
                </div>

                <!-- Unnamed (横线) -->
                <div id="u53" class="ax_横线">
                    <img id="u53_start" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u53_start"/>
                    <img id="u53_end" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u53_end"/>
                    <img id="u53_line" class="img " src="<%= basePath%>singerlist/images/singerlist/入驻歌手分割线_u5_line.png" alt="u53_line"/>
                </div>

                <!-- Unnamed (形状) -->
                <div id="u54" class="ax_文本">
                    <img id="u54_img" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif"/>
                    <!-- Unnamed () -->
                    <div id="u55" class="text">
                        <p><span>日韩女歌手</span></p>
                    </div>
                </div>

                <%--查询日韩女歌手--%>
                <div class="imgcontain1">
                    <c:forEach items="${jkfemaleslist}" var="singer">
                        <div class="imgs1">
                            <a href="#"><img class="singerimg" src='/music/singerimg/${singer.img}'/></a>
                            <a href="#" class="singername">${singer.name}</a>
                        </div>
                    </c:forEach>
                </div>

            </div>
        </div>
        <div id="u2_state10" class="panel_state" data-label="日韩组合乐队">
            <div id="u2_state10_content" class="panel_state_content">

                <!-- Unnamed (形状) -->
                <div id="u56" class="ax_形状">
                    <img id="u56_img" class="img " src="<%= basePath%>singerlist/images/singerlist/中间界面背景_u3.png"/>
                    <!-- Unnamed () -->
                    <div id="u57" class="text"></div>
                </div>

                <!-- Unnamed (横线) -->
                <div id="u58" class="ax_横线">
                    <img id="u58_start" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u58_start"/>
                    <img id="u58_end" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u58_end"/>
                    <img id="u58_line" class="img " src="<%= basePath%>singerlist/images/singerlist/入驻歌手分割线_u5_line.png" alt="u58_line"/>
                </div>

                <!-- Unnamed (形状) -->
                <div id="u59" class="ax_文本">
                    <img id="u59_img" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif"/>
                    <!-- Unnamed () -->
                    <div id="u60" class="text">
                        <p><span>日韩</span><span>组合</span><span>/乐队</span></p>
                    </div>
                </div>

                <%--查询日韩乐队--%>
                <div class="imgcontain1">
                    <c:forEach items="${jkbandslist}" var="singer">
                        <div class="imgs1">
                            <a href="#"><img class="singerimg" src='/music/singerimg/${singer.img}'/></a>
                            <a href="#" class="singername">${singer.name}</a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>

    <!-- 左侧导航面板 (动态面板) -->
    <div id="u61" class="ax_动态面板" data-label="左侧导航面板">
        <div id="u61_state0" class="panel_state" data-label="左侧导航">
            <div id="u61_state0_content" class="panel_state_content">

                <!-- 左侧导航背景 (形状) -->
                <div id="u62" class="ax_形状" data-label="左侧导航背景">
                    <img id="u62_img" class="img " src="<%= basePath%>singerlist/images/singerlist/左侧导航背景_u62.png"/>
                    <!-- Unnamed () -->
                    <div id="u63" class="text"></div>
                </div>

                <!-- 推荐 (形状) -->
                <div id="u64" class="ax_文本" data-label="推荐">
                    <img id="u64_img" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif"/>
                    <!-- Unnamed () -->
                    <div id="u65" class="text">
                        <p><span>推荐</span></p>
                    </div>
                </div>

                <!-- 推荐歌手 (形状) -->
                <div id="u66" class="ax_形状" data-label="推荐歌手">
                    <img id="u66_img" class="img " src="<%= basePath%>singerlist/images/singerlist/推荐歌手_u66.png"/>
                    <!-- Unnamed () -->
                    <div id="u67" class="text">
                        <p><span>&#149; 推荐歌手</span></p>
                    </div>
                </div>

                <!-- 入驻歌手 (形状) -->
                <div id="u68" class="ax_形状" data-label="入驻歌手">
                    <img id="u68_img" class="img " src="<%= basePath%>singerlist/images/singerlist/推荐歌手_u66.png"/>
                    <!-- Unnamed () -->
                    <div id="u69" class="text">
                        <p><span>&#149; </span><span>入驻歌手</span></p>
                    </div>
                </div>

                <!-- 分割线一 (横线) -->
                <div id="u70" class="ax_横线" data-label="分割线一">
                    <img id="u70_start" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u70_start"/>
                    <img id="u70_end" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u70_end"/>
                    <img id="u70_line" class="img " src="<%= basePath%>singerlist/images/singerlist/分割线一_u70_line.png" alt="u70_line"/>
                </div>

                <!-- 华语 (形状) -->
                <div id="u71" class="ax_文本" data-label="华语">
                    <img id="u71_img" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif"/>
                    <!-- Unnamed () -->
                    <div id="u72" class="text">
                        <p><span>华语</span></p>
                    </div>
                </div>

                <!-- 华语男歌手 (形状) -->
                <div id="u73" class="ax_形状" data-label="华语男歌手">
                    <img id="u73_img" class="img " src="<%= basePath%>singerlist/images/singerlist/推荐歌手_u66.png"/>
                    <!-- Unnamed () -->
                    <div id="u74" class="text">
                        <p><span>&#149; </span><span>华语男歌手</span></p>
                    </div>
                </div>

                <!-- 华语女歌手 (形状) -->
                <div id="u75" class="ax_形状" data-label="华语女歌手">
                    <img id="u75_img" class="img " src="<%= basePath%>singerlist/images/singerlist/推荐歌手_u66.png"/>
                    <!-- Unnamed () -->
                    <div id="u76" class="text">
                        <p><span>&#149; </span><span>华语</span><span>女</span><span>歌手</span></p>
                    </div>
                </div>

                <!-- 华语组合乐队 (形状) -->
                <div id="u77" class="ax_形状" data-label="华语组合乐队">
                    <img id="u77_img" class="img " src="<%= basePath%>singerlist/images/singerlist/推荐歌手_u66.png"/>
                    <!-- Unnamed () -->
                    <div id="u78" class="text">
                        <p><span>&#149; </span><span>华语</span><span>组合乐队</span></p>
                    </div>
                </div>

                <!-- 分割线二 (横线) -->
                <div id="u79" class="ax_横线" data-label="分割线二">
                    <img id="u79_start" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u79_start"/>
                    <img id="u79_end" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u79_end"/>
                    <img id="u79_line" class="img " src="<%= basePath%>singerlist/images/singerlist/分割线一_u70_line.png" alt="u79_line"/>
                </div>

                <!-- 欧美 (形状) -->
                <div id="u80" class="ax_文本" data-label="欧美">
                    <img id="u80_img" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif"/>
                    <!-- Unnamed () -->
                    <div id="u81" class="text">
                        <p><span>欧美</span></p>
                    </div>
                </div>

                <!-- 欧美男歌手 (形状) -->
                <div id="u82" class="ax_形状" data-label="欧美男歌手">
                    <img id="u82_img" class="img " src="<%= basePath%>singerlist/images/singerlist/推荐歌手_u66.png"/>
                    <!-- Unnamed () -->
                    <div id="u83" class="text">
                        <p><span>&#149; </span><span>欧美</span><span>男歌手</span></p>
                    </div>
                </div>

                <!-- 欧美女歌手 (形状) -->
                <div id="u84" class="ax_形状" data-label="欧美女歌手">
                    <img id="u84_img" class="img " src="<%= basePath%>singerlist/images/singerlist/推荐歌手_u66.png"/>
                    <!-- Unnamed () -->
                    <div id="u85" class="text">
                        <p><span>&#149; </span><span>欧美</span><span>女</span><span>歌手</span></p>
                    </div>
                </div>

                <!-- 欧美组合乐队 (形状) -->
                <div id="u86" class="ax_形状" data-label="欧美组合乐队">
                    <img id="u86_img" class="img " src="<%= basePath%>singerlist/images/singerlist/推荐歌手_u66.png"/>
                    <!-- Unnamed () -->
                    <div id="u87" class="text">
                        <p><span>&#149; </span><span>欧美</span><span>组合乐队</span></p>
                    </div>
                </div>

                <!-- 分割线三 (横线) -->
                <div id="u88" class="ax_横线" data-label="分割线三">
                    <img id="u88_start" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u88_start"/>
                    <img id="u88_end" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif" alt="u88_end"/>
                    <img id="u88_line" class="img " src="<%= basePath%>singerlist/images/singerlist/分割线一_u70_line.png" alt="u88_line"/>
                </div>

                <!-- 日韩 (形状) -->
                <div id="u89" class="ax_文本" data-label="日韩">
                    <img id="u89_img" class="img " src="<%= basePath%>singerlist/resources/images/transparent.gif"/>
                    <!-- Unnamed () -->
                    <div id="u90" class="text">
                        <p><span>日韩</span></p>
                    </div>
                </div>

                <!-- 日韩男歌手 (形状) -->
                <div id="u91" class="ax_形状" data-label="日韩男歌手">
                    <img id="u91_img" class="img " src="<%= basePath%>singerlist/images/singerlist/推荐歌手_u66.png"/>
                    <!-- Unnamed () -->
                    <div id="u92" class="text">
                        <p><span>&#149; </span><span>日韩</span><span>男歌手</span></p>
                    </div>
                </div>

                <!-- 日韩女歌手 (形状) -->
                <div id="u93" class="ax_形状" data-label="日韩女歌手">
                    <img id="u93_img" class="img " src="<%= basePath%>singerlist/images/singerlist/推荐歌手_u66.png"/>
                    <!-- Unnamed () -->
                    <div id="u94" class="text">
                        <p><span>&#149; </span><span>日韩</span><span>女</span><span>歌手</span></p>
                    </div>
                </div>

                <!-- 日韩组合乐队 (形状) -->
                <div id="u95" class="ax_形状" data-label="日韩组合乐队">
                    <img id="u95_img" class="img " src="<%= basePath%>singerlist/images/singerlist/推荐歌手_u66.png"/>
                    <!-- Unnamed () -->
                    <div id="u96" class="text">
                        <p><span>&#149; </span><span>日韩</span><span>组合乐队</span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>


