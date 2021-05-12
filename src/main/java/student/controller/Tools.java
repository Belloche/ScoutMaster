package student.controller;

import student.entity.Admin;
import student.persistence.GenericDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet that retrieves the admin from the DB, sets it as the "admin" attribute and forwards to toolsPage.jsp
 * @author Zane Miller
 * @version 1.0 5-12-2021
 */
@WebServlet(
        urlPatterns = "/toolsPage"
)
public class Tools extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        GenericDao dao = new GenericDao(Admin.class);
        Admin admin = (Admin) dao.getById(1);

        req.setAttribute("admin", admin);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/toolsPage.jsp");
        dispatcher.forward(req, res);
    }
}
