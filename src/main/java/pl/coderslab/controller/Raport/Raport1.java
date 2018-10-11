package pl.coderslab.controller.Raport;

import pl.coderslab.dao.OrderDao;
import pl.coderslab.dao.Raport1Dao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

@WebServlet(name = "Raport1")
public class Raport1 extends HttpServlet {
    String link;
    public void init() {
        try {
            link = getInitParameter("link");
        } catch (Exception e) {
            System.out.println("Bląd linków");
        }

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String date_start = request.getParameter("date_start");
        String date_end = request.getParameter("date_end");

        ArrayList<Raport1Dao> raport1 = Raport1Dao.getRaport1(date_start, date_end);

        request.setAttribute("raport1",raport1);

        getServletContext().getRequestDispatcher("/WEB-INF/raports-forms/raport1Load.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        request.setAttribute("link", link);
        getServletContext().getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);



    }
}
