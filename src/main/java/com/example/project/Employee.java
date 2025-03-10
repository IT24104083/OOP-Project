package com.example.project;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
@WebServlet(name = "usr",value = "/employee")
public class Employee extends HttpServlet {
   public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

       int id = Integer.parseInt(req.getParameter("emId"));
       String name = req.getParameter("emName");
       double salary = Double.parseDouble(req.getParameter("salary"));
       int rate = Integer.parseInt(req.getParameter("rating"));

       User U1=new User();

       U1.setId(id);
       U1.setName(name);
       U1.setSalary(salary);
       U1.setRating(rate);

       PrintWriter out=res.getWriter();
       res.setContentType("text/html");
       out.println("<!DOCTYPE html>");
       out.println("<html><body>");
       out.println("<h1>Employee Information</h1>");
       out.println("<pre>"+U1.details()+"</pre>");
       out.println("</body></html>");



   }
   }


class User {
    private int id;
    private String name;
    private double salary;
    private int rating;
    private double bonus;

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public void setRating(int rating) {
        this.rating = rating;

    }

    public double calculateBonus() {
        switch (rating) {
            case 1:
                bonus = 0;
                break;
            case 2:
                bonus=0.05*salary;
                break;
            case 3:
                bonus=0.1*salary;
                break;
            case 4:
                bonus=0.15*salary;
                break;
            case 5:
                bonus=0.2*salary;
                break;
            default:
                System.out.println("Invalid rating value");
                break;
        }
        return bonus;
    }

    public double calculateTotalSalary() {
        return salary + bonus;
    }

    public String details(){
       return "Employee ID: "+id+"\n"
               +"Employee Name: "+name+"\n"
               +"Basic Salary: "+salary+"\n"
               +"Perfomace Rating: "+rating+"\n"
               +"Bonus: "+calculateBonus()+"\n"
               +"Total Salary: "+calculateTotalSalary();

    }
}

