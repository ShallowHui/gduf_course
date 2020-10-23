package edu.gduf.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {


    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        // String requestURI = request.getRequestURI();
        // 如果获取到的这个url路径是在查询后台数据的方法的时候,进行拦截
        HttpSession session = request.getSession();
        Object id_session = session.getAttribute("ID_SESSION");
        if (id_session != null) {
            // 登陆成功的用户，返回true之后，继续访问服务器发送的请求，即此时用户已经登录；
            return true;
        } else {
            // 没有登陆，转向登陆界面
            response.sendRedirect(request.getContextPath() + "/");
            // request.getRequestDispatcher("/login.jsp").forward(request,
            // response);
            return false;
        }
    }
}
