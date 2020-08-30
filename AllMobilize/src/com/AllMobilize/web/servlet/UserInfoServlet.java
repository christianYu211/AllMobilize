package com.AllMobilize.web.servlet;

import com.AllMobilize.pojo.Admin;
import com.AllMobilize.pojo.Page;
import com.AllMobilize.pojo.ResultInfo;
import com.AllMobilize.pojo.User;
import com.AllMobilize.service.UserService;
import com.AllMobilize.service.impl.UserInfoServiceImpl;
import com.AllMobilize.utils.WebUtils;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.mysql.jdbc.util.Base64Decoder;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Base64;
import java.util.HashMap;
import java.util.Map;

import static com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY;

@WebServlet("/UserInfoServlet")
public class UserInfoServlet extends BaseServlet{

    UserService userService = new UserInfoServiceImpl();

    protected void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        req.getSession().setAttribute("username",username);
        //查询用户是否存在
        User user = userService.login( new User(null,username,password,null,null,null,null,null,null));
        //System.out.println(user);
        //保存反馈信息的
        ResultInfo info = new ResultInfo();
        //检验登录
        if(!userService.existsUsername(username)){
            info.setFlag(false);
            info.setMessage("用户名不存在");
        }else if (user == null){
            info.setFlag(false);
            info.setMessage("用户名或密码错误");

        }else{
            info.setFlag(true);

            req.getSession().setAttribute("user",user);
        }

        //响应数据
        ObjectMapper mapper = new ObjectMapper();
        //设置响应数据类型为json
        resp.setContentType("application/json;charset=utf-8");
        //mapper.writeValue(resp.getOutputStream(),map);
        //将反馈的数据转换成json格式
        String json = mapper.writeValueAsString(info);
        //响应到客户端
        resp.getWriter().write(json);
    }

    /**
     * 注册
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void register(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //获取表单中的验证码
        String code = req.getParameter("code");
        //参数注入
        User user = WebUtils.copyParamToBean(req.getParameterMap(),new User());


        //获取session中的验证码
        String token = (String)req.getSession().getAttribute(KAPTCHA_SESSION_KEY);
        //删除session中的验证码
        req.getSession().removeAttribute(KAPTCHA_SESSION_KEY);
        Map resultinfo = new HashMap();
        if (code == null || !token.equalsIgnoreCase(code)){
            resultinfo.put("flag",false);
            resultinfo.put("message","验证码错误");
            Gson gson = new Gson();
            String json = gson.toJson(resultinfo);
            resp.getWriter().write(json);
        }
        if(!userService.existsUsername(user.getUsername())) {

            int r = userService.regist(user);

            if (r == 1) {
                resultinfo.put("flag", true);
            } else{
                resultinfo.put("flag", false);
                resultinfo.put("message", "注册失败");
            }
        }else{
            resultinfo.put("flag", false);
            resultinfo.put("message", "注册失败");
        }
        Gson gson = new Gson();
        String json = gson.toJson(resultinfo);
        resp.setContentType("application/json;charset=utf-8");
        resp.getWriter().write(json);


    }

    protected void existsUserName(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取参数
        String username = req.getParameter("username");
       // System.out.println(username);
        Map resultmap = new HashMap();
        if(!userService.existsUsername(username)){
            resultmap.put("flag",false);
            resultmap.put("msg","用户名不存在");
        }else{
            resultmap.put("flag",true);
            resultmap.put("msg","用户名已存在");
        }
        Gson gson = new Gson();
        String json = gson.toJson(resultmap);
        resp.getWriter().write(json);
    }

    public void logout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //销毁session中的登录信息
        req.getSession().invalidate();
        //重定向到登录界面
        req.getRequestDispatcher("index.jsp").forward(req,resp);

    }

    /**
     * 分页显示信息
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求参数pageNo和pageSize
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);

        //调用AdminService.page(pageNo,pageSize)
        Page<User> solutionPage = userService.page(pageNo,pageSize);

        //保存page到request域中
        req.setAttribute("page",solutionPage);
        solutionPage.setUrl("UserInfoServlet?action=page");
        //请求转发
        req.getRequestDispatcher("/admin/managersystem/user-list.jsp").forward(req,resp);
    }


}



