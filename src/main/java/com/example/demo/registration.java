package com.example.demo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="reg",value = "/register")
public class registration extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("fullname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String gender = request.getParameter("gender");

        customer c1=new customer(name,email,gender);
        c1.display();

        String filepath="C:\\Files\\Degree\\Semester 2\\Object Oriented Programming\\project\\project\\Data\\user.txt";

        try(FileWriter fw = new FileWriter(filepath,true);
        PrintWriter writer = new PrintWriter(fw)){

            writer.println("Full Name: "+name);
            writer.println("Email: "+email);
            writer.println("Password: "+password);
            writer.println("Gender: "+gender);
            writer.println("--------------------------------------------------------------");

            response.setContentType("text/html");
            response.getWriter().println("<h3>Registration Successful</h3>");
        }catch(IOException e){
            e.printStackTrace();
            response.getWriter().println("<h3>Registration Failed</h3>");
        }



    }





}