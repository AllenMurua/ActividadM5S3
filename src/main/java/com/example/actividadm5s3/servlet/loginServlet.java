package com.example.actividadm5s3.servlet;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet(name = "loginServlet", value = "/login")
public class loginServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String usuario = req.getParameter("usuario");
        String password = req.getParameter("password");

        if ("admin".equals(usuario) && "admin".equals(password)) {
            Cookie usercookie = new Cookie("usuario", usuario);
            usercookie.setMaxAge(30 * 60);
            usercookie.setPath("/");
            resp.addCookie(usercookie);

            resp.sendRedirect("bienvenida.jsp");
        }else {
            resp.sendRedirect("index.jsp?error=1");

        }

    }
}
