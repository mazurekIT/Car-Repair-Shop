package pl.coderslab.controller.vehicle;

import pl.coderslab.dao.VehicleDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "VehicleDelete")
public class VehicleDelete extends HttpServlet {
    String link;

    public void init() {
        try {
            link = getInitParameter("link");
        } catch (Exception e) {
            System.out.println("Bląd linków");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        VehicleDao vehicleDao = new VehicleDao();
        try {
            int id = Integer.parseInt(request.getParameter("customer_id"));
            vehicleDao.setId(id);
            vehicleDao.delete();
        } catch (Exception e) {
            System.out.println("Błąd usuwania");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("link", link);
        getServletContext().getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
    }
}
