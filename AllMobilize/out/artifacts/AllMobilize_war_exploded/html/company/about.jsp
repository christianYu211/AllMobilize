<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/6/8
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>企业网站模板</title>
    <%--静态包含base标签，css样式，jQuery文件--%>
    <%@include file="/html/common/source.jsp"%>
</head>
<body>
<div class="layout">
    <!--===========layout-header================-->
    <%--  静态包含页面头部--%>
    <%@include file="/html/common/head.jsp"%>
    <!--mobile header start-->
    <div class="m-header">
        <div class="am-g am-show-sm-only">
            <div class="am-u-sm-2">
                <div class="menu-bars">
                    <a href="#doc-oc-demo1" data-am-offcanvas="{effect: 'push'}"><i class="am-menu-toggle-icon am-icon-bars"></i></a>
                    <!-- 侧边栏内容 -->
                    <%--静态包含导航栏--%>
                    <%@include file="/html/common/navigation.jsp"%>
                </div>
            </div>
            <div class="am-u-sm-5 am-u-end">
                <div class="m-logo">
                    <a href=""><img src="../assets/images/logo.png" alt=""></a>
                </div>
            </div>
        </div>
        <!--mobile header end-->
    </div>




    <!--===========layout-container================-->
    <div class="layout-container">
        <div class="page-header">
            <div class="am-container">
                <h1 class="page-header-title">about us</h1>
            </div>
        </div>

        <div class="breadcrumb-box">
            <div class="am-container">
                <ol class="am-breadcrumb">
                    <li><a href="../index.html">首页</a></li>
                    <li class="am-active">联系我们</li>
                </ol>
            </div>
        </div>
    </div>


    <div class="section">
        <div class="container">
            <div class="section--header">
                <h2 class="section--title">云适配</h2>
                <p class="section--description">
                    全球领先HTML5企业移动化解决方案供应商，由前微软美国总部IE浏览器核心研发团队成员及移动互联网行业专家在美国西雅图创立
                    <br>获得了微软创投的扶持以及晨兴资本、IDG资本、天创资本等国际顶级风投机构的投资。
                </p>
            </div>

            <!--about-container start-->
            <div class="about-container">
                <div class="am-g">
                    <div class="am-u-md-6">
                        <div class="our-company-text">
                            <h3>关于云适配你需要知道哪些？</h3>
                            <p>
                                云适配(AllMobilize Inc.) 是全球领先的HTML5企业移动化解决方案供应商，由前微软美国总部IE浏览器核心研发团队成员及移动互联网行业专家在美国西雅图创立，并获得了微软创投的扶持以及晨兴资本、IDG资本、天创资本等国际顶级风投机构的投资。
                            </p>
                            <p>
                                从2012年至今，云适配的开放技术平台已经吸引了超过40万开发者加入；云适配跨屏云也成功应用于超过30万家企业网站，包括微软、联想等世界500强企业，光明网、中国青年报等知名媒体，清华、北大、中科大等知名大学，以及中国政府网、中国共产党网等政府机构。2014年6月，比尔·盖茨先生访华时特地观看了云适配的技术演示，并给予高度的赞赏。
                            </p>
                        </div>
                    </div>

                    <div class="am-u-md-6">
                        <div class="our-company-quote">
                            <div class="am-g">
                                <div class="am-u-md-6">
                                    <div class="our-company-img">
                                        <img src="assets/images/about/ben.jpg" alt="" />
                                    </div>
                                </div>

                                <div class="am-u-md-6">
                                    <p class="our-company-brief">
                                        国家“千人计划”特聘专家、中国企业级HTML5产业联盟主席、HTML5国际标准制定者之一、微软总部IE浏览器核心研发,成功发布了IE8、IE9、IE10,参与了下一代互联网标准HTML5国际标准制定以及IE中HTML5引擎的设计。
                                    </p>
                                    <div class="our-company-quote_author"><strong>陈本峰 Ben</strong><span>云适配创始人CEOy</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--about-container end-->
        </div>
    </div>


    <hr class="section_divider -narrow">


    <div class="section">
        <div class="container">
            <div class="section--header">
                <h2 class="section--title">我们的宗旨</h2>
                <p class="section--description">
                    让人们无论使用任何设备都能安全高效获取信息
                    <br>One Web，Any Device
                </p>
            </div>

            <!--about-container start-->
            <div class="about-container">
                <div class="our-mission">
                    <div class="am-g">
                        <div class="am-u-md-3">
                            <div class="our_mission--item">
                                <div class="figure our_mission--item_media"><img src="assets/images/about/f02.jpg" alt=""></div>
                                <h3 class="our_mission--item_title">品质</h3>
                                <div class="our_mission--item_body">
                                    <p>
                                        全球领先的HTML5解决方案供应商，安全高效解决企业移动化
                                    </p>
                                    <ul>
                                        <li>快捷的移动适配开发</li>
                                        <li>统一的办公通讯门户</li>
                                        <li>完善的安全管理平台</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="am-u-md-3">
                            <div class="our_mission--item">
                                <div class="figure our_mission--item_media"><img src="assets/images/about/f03.jpg" alt=""></div>
                                <h3 class="our_mission--item_title">责任</h3>
                                <div class="our_mission--item_body">
                                    <p>
                                        国产最流行的开源HTML5前端框架，组件丰富，为HTML5开发加速
                                    </p>
                                    <ul>
                                        <li>持续改进 </li>
                                        <li>追求卓越品质</li>
                                        <li>为顾客创造价值</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="am-u-md-3">
                            <div class="our_mission--item">
                                <div class="figure our_mission--item_media"><img src="assets/images/about/f04.jpg" alt=""></div>
                                <h3 class="our_mission--item_title">诚信</h3>
                                <div class="our_mission--item_body">
                                    <p>
                                        全球领先的HTML5解决方案供应商，安全高效解决企业移动化
                                    </p>
                                    <ul>
                                        <li>平等包容</li>
                                        <li>互利共赢</li>
                                        <li>与事业伙伴同成长</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="am-u-md-3">
                            <div class="our_mission--item">
                                <div class="figure our_mission--item_media"><img src="assets/images/about/f01.jpg" alt=""></div>
                                <h3 class="our_mission--item_title">责任</h3>
                                <div class="our_mission--item_body">
                                    <p>
                                        全球领先的HTML5解决方案供应商，安全高效解决企业移动化
                                    </p>
                                    <ul>
                                        <li>快捷的移动适配开发</li>
                                        <li>统一的办公通讯门户</li>
                                        <li>完善的安全管理平台</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--about-container end-->
        </div>
    </div>



    <div class="section" style="margin-top:0px;background-image: url('assets/images/pattern-light.png');">
        <div class="container">
            <div class="section--header">
                <h2 class="section--title">我们的团队</h2>
                <p class="section--description">
                    成员既有超级学霸（来自Harvard、Google、香港科技大学、中国科技大学），
                    <br>也有来自行业的技术大拿。
                </p>
            </div>

            <!--about-container start-->
            <div class="about-container">
                <div class="our-team">
                    <div class="am-g">
                        <div class="am-u-md-3">
                            <div class="team-box">
                                <div class="our-team-img">
                                    <img src="assets/images/about/001.jpg" alt="" />
                                </div>
                                <div class="team_member--body">
                                    <h3 class="team_member--name">John Holland</h3>
                                    <span class="team_member--position">Chief Executive Officer</span>
                                    <span class="team_member--email">
											<a href="">john@financed.com</a>
										</span>
                                    <ul class="team_member--links">
                                        <li><a href="#"><span class="am-icon-facebook"></span></a></li>
                                        <li><a href="#"><span class="am-icon-twitter"></span></a></li>
                                        <li><a href="#"><span class="am-icon-google-plus"></span></a></li>
                                        <li><a href="#"><span class="am-icon-linkedin"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="am-u-md-3">
                            <div class="team-box">
                                <div class="our-team-img">
                                    <img src="assets/images/about/002.jpg" alt="" />
                                </div>
                                <div class="team_member--body">
                                    <h3 class="team_member--name">John Holland</h3>
                                    <span class="team_member--position">Chief Executive Officer</span>
                                    <span class="team_member--email">
                    <a href="">john@financed.com</a>
                  </span>
                                    <ul class="team_member--links">
                                        <li><a href="#"><span class="am-icon-facebook"></span></a></li>
                                        <li><a href="#"><span class="am-icon-twitter"></span></a></li>
                                        <li><a href="#"><span class="am-icon-google-plus"></span></a></li>
                                        <li><a href="#"><span class="am-icon-linkedin"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>


                        <div class="am-u-md-3">
                            <div class="team-box">
                                <div class="our-team-img">
                                    <img src="assets/images/about/003.jpg" alt="" />
                                </div>
                                <div class="team_member--body">
                                    <h3 class="team_member--name">John Holland</h3>
                                    <span class="team_member--position">Chief Executive Officer</span>
                                    <span class="team_member--email">
                    <a href="">john@financed.com</a>
                  </span>
                                    <ul class="team_member--links">
                                        <li><a href="#"><span class="am-icon-facebook"></span></a></li>
                                        <li><a href="#"><span class="am-icon-twitter"></span></a></li>
                                        <li><a href="#"><span class="am-icon-google-plus"></span></a></li>
                                        <li><a href="#"><span class="am-icon-linkedin"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="am-u-md-3">
                            <div class="team-box">
                                <div class="our-team-img">
                                    <img src="assets/images/about/004.jpg" alt="" />
                                </div>
                                <div class="team_member--body">
                                    <h3 class="team_member--name">John Holland</h3>
                                    <span class="team_member--position">Chief Executive Officer</span>
                                    <span class="team_member--email">
                    <a href="">john@financed.com</a>
                  </span>
                                    <ul class="team_member--links">
                                        <li><a href="#"><span class="am-icon-facebook"></span></a></li>
                                        <li><a href="#"><span class="am-icon-twitter"></span></a></li>
                                        <li><a href="#"><span class="am-icon-google-plus"></span></a></li>
                                        <li><a href="#"><span class="am-icon-linkedin"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="am-u-md-3">
                            <div class="team-box">
                                <div class="our-team-img">
                                    <img src="assets/images/about/005.jpg" alt="" />
                                </div>
                                <div class="team_member--body">
                                    <h3 class="team_member--name">John Holland</h3>
                                    <span class="team_member--position">Chief Executive Officer</span>
                                    <span class="team_member--email">
                    <a href="">john@financed.com</a>
                  </span>
                                    <ul class="team_member--links">
                                        <li><a href="#"><span class="am-icon-facebook"></span></a></li>
                                        <li><a href="#"><span class="am-icon-twitter"></span></a></li>
                                        <li><a href="#"><span class="am-icon-google-plus"></span></a></li>
                                        <li><a href="#"><span class="am-icon-linkedin"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="am-u-md-3">
                            <div class="team-box">
                                <div class="our-team-img">
                                    <img src="assets/images/about/006.jpg" alt="" />
                                </div>
                                <div class="team_member--body">
                                    <h3 class="team_member--name">John Holland</h3>
                                    <span class="team_member--position">Chief Executive Officer</span>
                                    <span class="team_member--email">
                    <a href="">john@financed.com</a>
                  </span>
                                    <ul class="team_member--links">
                                        <li><a href="#"><span class="am-icon-facebook"></span></a></li>
                                        <li><a href="#"><span class="am-icon-twitter"></span></a></li>
                                        <li><a href="#"><span class="am-icon-google-plus"></span></a></li>
                                        <li><a href="#"><span class="am-icon-linkedin"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="am-u-md-3">
                            <div class="team-box">
                                <div class="our-team-img">
                                    <img src="assets/images/about/007.jpg" alt="" />
                                </div>
                                <div class="team_member--body">
                                    <h3 class="team_member--name">John Holland</h3>
                                    <span class="team_member--position">Chief Executive Officer</span>
                                    <span class="team_member--email">
                    <a href="">john@financed.com</a>
                  </span>
                                    <ul class="team_member--links">
                                        <li><a href="#"><span class="am-icon-facebook"></span></a></li>
                                        <li><a href="#"><span class="am-icon-twitter"></span></a></li>
                                        <li><a href="#"><span class="am-icon-google-plus"></span></a></li>
                                        <li><a href="#"><span class="am-icon-linkedin"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="am-u-md-3 am-u-end">
                            <div class="team-box">
                                <div class="our-team-img">
                                    <img src="assets/images/about/008.jpg" alt="" />
                                </div>
                                <div class="team_member--body">
                                    <h3 class="team_member--name">John Holland</h3>
                                    <span class="team_member--position">Chief Executive Officer</span>
                                    <span class="team_member--email">
                    <a href="">john@financed.com</a>
                  </span>
                                    <ul class="team_member--links">
                                        <li><a href="#"><span class="am-icon-facebook"></span></a></li>
                                        <li><a href="#"><span class="am-icon-twitter"></span></a></li>
                                        <li><a href="#"><span class="am-icon-google-plus"></span></a></li>
                                        <li><a href="#"><span class="am-icon-linkedin"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!--about-container end-->
            </div>
        </div>
    </div>

    <div class="section">
        <div class="container">
            <div class="section--header">
                <h2 class="section--title">客户评价</h2>
                <p class="section--description">
                    金龙集团为一家微型跨国企业，在全球有50家工厂，办公人员有近5000人，移动信息化选型之路是摸着石头过河，最终采用了云适配的整体解决方案，在移动端也有了像PC端一样的统一办公门户
                </p>
            </div>

            <!--about-container start-->
            <div class="about-container">
                <div class="our-customer-say">
                    <div class="am-g">
                        <div class="am-u-md-4">
                            <div class="our-customer-say-box">
                                <div class="our-customer-say-content">
                                    <p>光明网曾考虑过通过原生App来实现移动化，但是由于无法复用原始业务流程和数据就放弃了，直到选用了云适配整体解决方案后，可以很方便的在Enterplorer上使用一个帐号登录我们的系统，通过VPN随时进入内网。现在已经把我们的邮件系统，CMS内容管理系统都非常好的融合到了一起。</p>
                                </div>
                                <div class="our-customer-say-title">
                                    <figure>
                                        <img src="assets/images/about/tz_pic_active.png" alt="">
                                    </figure>
                                    <strong>光明网 CTO</strong>
                                    <span>屠志</span>
                                </div>
                            </div>
                        </div>

                        <div class="am-u-md-4">
                            <div class="our-customer-say-box">
                                <div class="our-customer-say-content">
                                    <p>光明网曾考虑过通过原生App来实现移动化，但是由于无法复用原始业务流程和数据就放弃了，直到选用了云适配整体解决方案后，可以很方便的在Enterplorer上使用一个帐号登录我们的系统，通过VPN随时进入内网。现在已经把我们的邮件系统，CMS内容管理系统都非常好的融合到了一起。</p>
                                </div>
                                <div class="our-customer-say-title">
                                    <figure>
                                        <img src="assets/images/about/tz_pic_active.png" alt="">
                                    </figure>
                                    <strong>光明网 CTO</strong>
                                    <span>屠志</span>
                                </div>
                            </div>
                        </div>

                        <div class="am-u-md-4">
                            <div class="our-customer-say-box">
                                <div class="our-customer-say-content">
                                    <p>光明网曾考虑过通过原生App来实现移动化，但是由于无法复用原始业务流程和数据就放弃了，直到选用了云适配整体解决方案后，可以很方便的在Enterplorer上使用一个帐号登录我们的系统，通过VPN随时进入内网。现在已经把我们的邮件系统，CMS内容管理系统都非常好的融合到了一起。</p>
                                </div>
                                <div class="our-customer-say-title">
                                    <figure>
                                        <img src="assets/images/about/tz_pic_active.png" alt="">
                                    </figure>
                                    <strong>光明网 CTO</strong>
                                    <span>屠志</span>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!--about-container end-->
        </div>
    </div>


    <%--静态包含contact us,our email,our dress部分--%>
    <%@include file="/html/common/contact_email_adress.jsp"%>


    <!--===========layout-footer================-->
    <div class="layout-footer">
        <div class="footer">
            <div style="background-color:#383d61" class="footer--bg"></div>
            <div class="footer--inner">
                <div class="container">
                    <%--        静态包含页脚--%>
                    <%@include file="/html/common/footer.jsp"%>
                </div>
            </div>
        </div>
    </div>

</body>

</html>

