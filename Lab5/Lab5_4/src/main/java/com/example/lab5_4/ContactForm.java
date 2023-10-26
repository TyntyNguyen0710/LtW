package com.example.lab5_4;

import javax.servlet.*;
import java.util.regex.Matcher;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;


@WebServlet(name = "ContactForm", value = "/ContactForm")
public class ContactForm extends HttpServlet {
    public static final Pattern VALID_EMAIL_ADDRESS_REGEX =
            Pattern.compile("^[A-Z0-9.%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);


    public static boolean validate(String emailStr) {
        Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(emailStr);
        return matcher.find();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("mail");
        String service = request.getParameter("service");
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        if (!name.equals("") && validate(email) && service != null){
            response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Phản hồi của bạn đã được ghi lại');");
            pw.println("</script>");
            RequestDispatcher rd=request.getRequestDispatcher("Contact.jsp");
            rd.include(request, response);
        }else{
            response.getWriter().println("Vui lòng kiểm tra và điền đầy đủ thông tin các trường (chứa *)!");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
