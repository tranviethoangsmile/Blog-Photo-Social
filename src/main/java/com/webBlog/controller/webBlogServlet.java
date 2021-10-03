package com.webBlog.controller;

import com.webBlog.model.Conten;
import com.webBlog.model.Reply;
import com.webBlog.model.Report;
import com.webBlog.model.User;
import com.webBlog.service.WebBlogServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

@WebServlet(name = "webBlogServlet", value = "/webblogservlet")
public class webBlogServlet extends HttpServlet {
    static  WebBlogServiceImpl webBlogServlet = new WebBlogServiceImpl();
    static ResourceBundle mybundle = ResourceBundle.getBundle("message");
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String action = request.getParameter("action");
            if(action == null) {
                action = "";
            }
            try {
                switch (action) {
                    case "signup" :
                        break;
                    case  "gotohome" :
                        showAllConten(request,response);
                        break;
                    case "out" :
                        outAccount(request,response);
                        break;
                    case "deleteUser" :
                        deleteUser(request,response);
                        break;
                    case "deleteContenUser" :
                        deteteContenUser(request,response);
                        break;
                    case "deleteConten":
                        deteteConten(request,response);
                        break;
                    case "showHome" :
                        showHome(request,response);
                        break;
                    case "edit" :
                        editConten(request,response);
                        break;
                    case "deleteReport":
                        deleteReport(request,response);
                        break;
                    default:
                        showIndex (request,response);
                        break;
                }
            }catch (Exception e) {
                e.printStackTrace();
            }

    }

    private void replyReport(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int user_id = Integer.parseInt(request.getParameter("user_id"));
        String comment = request.getParameter("comment");
        webBlogServlet.replyReport(user_id,comment);
        showAdmin(request, response);
    }

    private void deleteReport(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        boolean deleteSuccess;
        int id = Integer.parseInt(request.getParameter("id"));
       deleteSuccess = webBlogServlet.deleteReport(id);
       if(deleteSuccess == true) {
            request.setAttribute("deleteSussess","xoá thành công");
           showAdmin(request, response);
       }else {
           request.setAttribute("deleteSussess","xoá không thành công");
           RequestDispatcher dispatcher = request.getRequestDispatcher("layout/admin.jsp");
           showAdmin(request, response);
       }
    }

    private void editConten(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String userName = request.getParameter("userName");
        User user = webBlogServlet.getInfoUser(userName);
        Conten conten = webBlogServlet.getContenEdit(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("layout/formEdit.jsp");
        request.setAttribute("conten",conten);
        request.setAttribute("user",user);
        dispatcher.forward(request, response);
    }


    private void deteteContenUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException {
        int id  = Integer.parseInt(request.getParameter("id"));
        String userName = request.getParameter("userName");
        webBlogServlet.deleteContenUser(id);
        User userInfo = webBlogServlet.getInfoUser(userName);
        HttpSession session = request.getSession();
        List <Conten> ContenOfUser = new ArrayList<>();
        ContenOfUser = webBlogServlet.findConten(userInfo.getId());
        session.setAttribute("ContenOfUser",ContenOfUser);
        request.setAttribute("alert","primary");
        request.setAttribute("message", "Xoá thành công..!!!");
        RequestDispatcher dispatcher = request.getRequestDispatcher("layout/client.jsp");
        dispatcher.forward(request, response);
    }

    private void showHome(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        HttpSession session = request.getSession();
        List <Conten> listContenHome = new ArrayList<>();
        listContenHome = webBlogServlet.getConten();
        session.setAttribute("listContenHome",listContenHome);
        response.sendRedirect("layout/home.jsp");

    }

    private void deteteConten(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id  = Integer.parseInt(request.getParameter("id"));
        webBlogServlet.deleteConten(id);
        HttpSession session = request.getSession();
        session.removeAttribute("userList");
        session.removeAttribute("listConten");
        showAdmin(request, response);
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        String userName = request.getParameter("name");
        webBlogServlet.deleteUser(userName);
        HttpSession session = request.getSession();
        session.removeAttribute("userList");
        session.removeAttribute("listConten");
//        showAdmin(request, response);
        request.setAttribute("alert","primary");
        request.setAttribute("message", "Đã cấm thành công");
//        HttpSession session = request.getSession();
        List<User> userList = new ArrayList<>();
        List <Conten> listConten = new ArrayList<>();
        List <Report> reportList = new ArrayList<>();
        reportList = webBlogServlet.getReport();
        userList = webBlogServlet.findAllUser();
        listConten = webBlogServlet.findAllConten();
        session.setAttribute("listConten",listConten);
        session.setAttribute("userList",userList);
        session.setAttribute("reportList",reportList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/layout/admin.jsp");
        dispatcher.forward(request, response);

    }

    private void outAccount(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        session.invalidate();
        request.setAttribute("alert","primary");
        request.setAttribute("message", "Lần sau ghé chơi nữa nhé..!!!");
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request,response);

    }

    private void showAllConten(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    private void showIndex(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect("index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "signup" :
                    try {
                        signup(request,response);
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                    break;
                case "insertConten" :
                    insertConten (request,response);
                    break;
                case "login":
                    login(request,response);
                    break;
                case "edit":
                    updateConten(request,response);
                    break;
                case "report":
                    addReport (request,response);
                    break;
                case "reply" :
                    replyReport(request,response);
                    break;
                default:
                    showIndex (request,response);
                    break;
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void addReport(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        int user_id = Integer.parseInt(request.getParameter("user_id"));
        String comment = request.getParameter("comment");
        webBlogServlet.addReport(user_id,comment);
        request.setAttribute("alert","primary");
        request.setAttribute("message", "Gửi báo cáo thành công");
        RequestDispatcher dispatcher = request.getRequestDispatcher("layout/client.jsp");
        dispatcher.forward(request, response);

    }

    private void updateConten(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        String conten = request.getParameter("conten");
        String photo = request.getParameter("photo");
        webBlogServlet.updateConten(id,conten,photo);
        String userName = request.getParameter("userName");
        User userInfo = webBlogServlet.getInfoUser(userName);
        HttpSession session = request.getSession();
        List <Conten> ContenOfUser = new ArrayList<>();
        ContenOfUser = webBlogServlet.findConten(userInfo.getId());
        session.setAttribute("ContenOfUser",ContenOfUser);
        request.setAttribute("alert","primary");
        request.setAttribute("message", "Sửa thành công");
        RequestDispatcher dispatcher = request.getRequestDispatcher("layout/client.jsp");
        dispatcher.forward(request, response);

    }

    private void showAdmin(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        HttpSession session = request.getSession();
        List<User> userList = new ArrayList<>();
        List <Conten> listConten = new ArrayList<>();
        List <Report> reportList = new ArrayList<>();
        reportList = webBlogServlet.getReport();
        userList = webBlogServlet.findAllUser();
        listConten = webBlogServlet.findAllConten();
        session.setAttribute("listConten",listConten);
        session.setAttribute("userList",userList);
        session.setAttribute("reportList",reportList);
        response.sendRedirect("/layout/admin.jsp");
    }


    private void insertConten(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String username = request.getParameter("userName");
        String conten = request.getParameter("conten");
        String photo = request.getParameter("photo");
        webBlogServlet.insertConten(id,username,conten,photo);
        request.setAttribute("alert","primary");
        request.setAttribute("message", "Đã gửi thành công");
        User userInfo = webBlogServlet.getInfoUser(username);
        HttpSession session = request.getSession();
        List <Conten> ContenOfUser = new ArrayList<>();
        ContenOfUser = webBlogServlet.findConten(userInfo.getId());
        session.setAttribute("ContenOfUser",ContenOfUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("layout/client.jsp");
        dispatcher.forward(request, response);
    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        User user = webBlogServlet.selectUser(userName);
        if (user == null) {
            request.setAttribute("message", "Tên đăng nhập sai rồi :(");
            request.setAttribute("alert","danger");
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request, response);
        }else {
            try {
                if (user.getUserName().equals(userName)) {
                    if (user.getPassword().equals(password)) {
                        User userInfo = webBlogServlet.getInfoUser(userName);
                        HttpSession session = request.getSession();
                        session.setAttribute("id",userInfo.getId());
                        session.setAttribute("userName",userName);
                        session.setAttribute("infomation",userInfo.getInfomation());
                        session.setAttribute("photo",userInfo.getPhoto());
                        if (userName.equals("admin@gmail.com")) {
                            List<User> userList = new ArrayList<>();
                            List <Conten> listConten = new ArrayList<>();
                            List <Report> reportList = new ArrayList<>();
                            userList = webBlogServlet.findAllUser();
                            listConten = webBlogServlet.findAllConten();
                            reportList = webBlogServlet.getReport();
                            session.setAttribute("listConten",listConten);
                            session.setAttribute("userList",userList);
                            session.setAttribute("reportList",reportList);
                          response.sendRedirect("animation/animation-admin.jsp");
                        } else {
                            List <Conten> ContenOfUser = new ArrayList<>();
                            List <Reply> replyList = new ArrayList<>();
                            replyList = webBlogServlet.getReply(userInfo.getId());
                            ContenOfUser = webBlogServlet.findConten(userInfo.getId());
                            session.setAttribute("ContenOfUser",ContenOfUser);
                            session.setAttribute("replyList",replyList);
                          response.sendRedirect("animation/animation-user.jsp");
                        }
                    } else {
                        request.setAttribute("message", "Mật Khẩu sai rồi");
                        request.setAttribute("alert","danger");
                        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
                        dispatcher.forward(request, response);
                    }
                }
            }catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private void signup(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String rePassword = request.getParameter("repassword");
        String information = new String (request.getParameter("information").getBytes("ISO-8859-1"),"UTF8");
        String birthday = request.getParameter("birthday");
        String photo = request.getParameter("photo");
        String avata = request.getParameter("avata");
        User user = new User();
        WebBlogServiceImpl webBlogServlet = new WebBlogServiceImpl();
        User checkUser = webBlogServlet.checkUser(userName);

        if(!password.equals(rePassword)){
            request.setAttribute("message", "Mật khẩu bạn nhập lại không trùng khớp!!!");
            request.setAttribute("alert", "danger");
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request,response);
        }else
        {
            if(checkUser == null) {
                user.setUserName(userName);
                user.setPassword(password);
                user.setBirthday(birthday);
                user.setInfomation(information);
                user.setPhoto(photo);
                user.setAvatar(avata);
                webBlogServlet.insertUser(user);
                request.setAttribute("alert","primary");
                request.setAttribute("message", "Đăng kí thành công !!!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
                dispatcher.forward(request,response);
            }else {
                request.setAttribute("alert","warning");
                request.setAttribute("message", "Tên người dùng đã tồn tại !!!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
                dispatcher.forward(request,response);
            }
        }
    }
}
