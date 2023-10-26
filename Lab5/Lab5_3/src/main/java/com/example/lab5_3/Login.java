package com.example.lab5_3;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
       String user = request.getParameter("username");
       String pwd = request.getParameter("password");
       if((user.equals("admin")) && (pwd.equals("admin"))){
           response.getWriter().println("Login Success");

       }else{
           response.getWriter().println("Login Failed!");
       }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        doGet(request, response);
    }
}