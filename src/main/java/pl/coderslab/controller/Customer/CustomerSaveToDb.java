package pl.coderslab.controller.Customer;

import pl.coderslab.dao.CustomerDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

@WebServlet(name = "CustomerSaveToDb")
public class CustomerSaveToDb extends HttpServlet {

    String link;
    public void init() {

        try {
            link = getInitParameter("link");

        } catch (Exception e) {
            System.out.println("Bląd linków");

        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        Date birthdate = Date.valueOf(request.getParameter("birthdate"));
        int customerPhone = Integer.parseInt(request.getParameter("customerPhone"));


        CustomerDao customerDao = new CustomerDao(name,surname,birthdate, customerPhone);



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("link", link);
        getServletContext().getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
    }

}
