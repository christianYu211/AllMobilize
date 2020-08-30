<%--
  Created by IntelliJ IDEA.
  User: Lenovo+
  Date: 2020/6/8
  Time: 9:28
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
<body class="register-container">
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
                    <a href=""><img src="assets/images/logo.png" alt=""></a>
                </div>
            </div>
        </div>
        <!--mobile header end-->
    </div>



    <!--===========layout-container================-->
    <div class="register-box">
        <form action="" class="am-form" id="registerForm" data-am-validator>
            <fieldset>
                <legend>注册用户<p class="register-info">账号可以使用箱注册，但是仔细核对后，填入正确信息。</p></legend>
                <span class="errorMsg" style="color: red"></span>
                <div class="am-form-group">
                    <div class="am-g">
                        <div class="am-u-md-2 am-padding-0 am-text-right">
                            <label for="username" class="register-name">账号</label>
                        </div>
                        <div class="am-u-md-10">
                            <input type="text" id="username" name="username" minlength="3"
                                   placeholder="输入用户名（至少 3 个字符）" />
                        </div>
                    </div>
                </div>

                <div class="am-form-group">
                    <div class="am-g">
                        <div class="am-u-md-2 am-padding-0 am-text-right">
                            <label for="doc-vld-pwd-1" class="register-pwd">密码</label>
                        </div>
                        <div class="am-u-md-10">
                            <input type="password" id="doc-vld-pwd-1" name="password" placeholder="6 位以上的密码" pattern="^\d{6}$" required/>
                        </div>
                    </div>
                </div>

                <div class="am-form-group">
                    <div class="am-g">
                        <div class="am-u-md-2 am-padding-0 am-text-right">
                            <label for="doc-vld-pwd-2">确认密码</label>
                        </div>
                        <div class="am-u-md-10">
                            <input type="password" id="doc-vld-pwd-2" placeholder="请与上面输入的值一致" data-equal-to="#doc-vld-pwd-1" required/>
                        </div>
                    </div>
                </div>

                <div class="am-form-group">
                    <div class="am-g">
                        <div class="am-u-md-2 am-padding-0 am-text-right">
                            <label for="nickname">姓名</label>
                        </div>
                        <div class="am-u-md-10">
                            <input type="text" id="nickname" name="nickname" placeholder="请输入姓名" required/>
                        </div>
                    </div>
                </div>

                <div class="am-form-group">
                    <div class="am-g">
                        <div class="am-u-md-2 am-padding-0 am-text-right">
                            <label for="birthday">出生日期</label>
                        </div>
                        <div class="am-u-md-10">
                            <input type="date" id="birthday" name="birthday"  required/>

                        </div>
                    </div>
                </div>

                <div class="am-form-group">
                    <div class="am-g">
                        <div class="am-u-md-2 am-padding-0 am-text-right">
                            <label for="sex">性别</label>
                        </div>
                        <div class="am-u-md-10">
                            <input type="radio" id="sex" name="sex" value="男" checked> 男
                            <input type="radio" name="sex" value="女"> 女
                        </div>
                    </div>
                </div>

                <div class="am-form-group">
                    <div class="am-g">
                        <div class="am-u-md-2 am-padding-0 am-text-right">
                            <label for="email">邮箱</label>
                        </div>
                        <div class="am-u-md-10">
                            <input type="text" id="email" name="email" placeholder="请输入邮箱"  required/>
                        </div>
                    </div>
                </div>

                <div class="am-form-group">
                    <div class="am-g">
                        <div class="am-u-md-2 am-padding-0 am-text-right">
                            <label for="code">验证码</label>
                        </div>
                        <div class="am-u-md-10-code">
                            <input type="text" id="code" name="code" placeholder="请输入验证码" required/>
                            <img alt="" id="code_img"  src="kaptcha.jpg" style=" margin-right: 40px; width: 80px;height: 45px;">
                        </div>
                    </div>
                </div>


                <div class="am-g">
                    <div class="am-u-md-10">
                        <button class="am-btn am-btn-secondary" id="sub_btn" type="submit">注册</button>
                    </div>
                </div>

            </fieldset>
        </form>
    </div>

</div>





<script>
    $(function(){

        //$("span.errorMsg").html("hello");
        $("#code_img").click(function () {
            // 在事件响应的 function 函数中有一个 this 对象。这个 this 对象，是当前正在响应事件的 dom 对象 // src 属性表示验证码 img 标签的 图片路径。它可读，可写
            this.src = "${basePath}kaptcha.jpg?d=" + new Date();

        })
        $("#sub_btn").click(function () {
            //验证码
            var code = $("#code").val();
            //去验证码前后空格
            code = $.trim(code);
            if(code == null || code == ""){
                $("span.errorMsg").text("验证码不为空");
                return false;
            }
            $("span.errorMsg").text("");
        })

        $("#username").blur(function () {
            var username = this.value;
            $.getJSON("http://localhost:8080/AllMobilize_war_exploded/UserInfoServlet","action=existsUserName&username="+username,function (data) {
                console.log(data.flag);
                console.log(data.msg);
                if (data.flag){
                    $("span.errorMsg").html(data.msg);
                }else{
                    $("span.errorMsg").html("");
                }
            })
        });

        $("#registerForm").submit(function(){
            //1.发送数据到服务器
              //校验通过,发送ajax请求，提交表单的数据   username=zhangsan&password=123

                $.post("UserInfoServlet?action=register",$(this).serialize(),function(data){
                    //处理服务器响应的数据  data  {flag:true,errorMsg:"注册失败"}

                    if(data.flag){
                        //注册成功，跳转成功页面
                        location.href="index.jsp";
                    }else{
                        //注册失败,给errorMsg添加提示信息
                        alert(data.message);

                    }
                });
            //2.不让页面跳转
            return false;
            //如果这个方法没有返回值，或者返回为true，则表单提交，如果返回为false，则表单不提交
        });



    })
</script>
</body>

</html>

