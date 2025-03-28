package com.example.demo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import netscape.javascript.JSObject;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "acc",value="/getAccountDetails")

public class accountDetails extends HttpServlet {

    private static final String file_path="C:\\Files\\Degree\\Semester 2\\Object Oriented Programming\\project\\project\\Data\\user.txt";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("application/json");
        PrintWriter out=response.getWriter();

        try(BufferedReader br=new BufferedReader(new FileReader(file_path))){
            String line;


        }
    }
}
