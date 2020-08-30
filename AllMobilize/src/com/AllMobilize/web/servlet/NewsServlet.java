package com.AllMobilize.web.servlet;

import com.AllMobilize.pojo.News;
import com.AllMobilize.pojo.Page;
import com.AllMobilize.pojo.Production;
import com.AllMobilize.service.NewsService;
import com.AllMobilize.service.impl.NewsServiceImpl;
import com.AllMobilize.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/NewsServlet")
public class NewsServlet extends BaseServlet{
    NewsService newsService = new NewsServiceImpl();
    /**
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求参数pageNo和pageSize
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);

        //调用customcaseService.page(pageNo,pageSize)
        Page<News> newsPage = newsService.page(pageNo,pageSize);
        System.out.println(newsPage);
        //保存page到request域中
        req.setAttribute("page",newsPage);
        newsPage.setUrl("NewsServlet?action=page");
        //请求转发
        req.getRequestDispatcher("/admin/news/news-list.jsp").forward(req,resp);
    }

}
