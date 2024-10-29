package com.example.actividadm5s3.servlet;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "loginServlet", value = "/login")
public class loginServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String usuario = req.getParameter("usuario");
        String password = req.getParameter("password");

        if ("admin".equals(usuario) && "admin".equals(password)) {
            HttpSession session = req.getSession();
            session.setAttribute("usuario", usuario);

            resp.sendRedirect("bienvenida.jsp");
        }else {
            resp.sendRedirect("index.jsp?error=1");

        }

    }
}
