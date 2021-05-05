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
import java.util.List;

@WebServlet(
        urlPatterns = "/toolsPage"
)
public class Tools extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        GenericDao dao = new GenericDao(Admin.class);
        Admin retrievedAdmin = null;

        List<Admin> adminList = dao.findByPropertyEqual("username", req.getUserPrincipal().getName());
        for (Admin admin : adminList) {
            retrievedAdmin = admin;
        }

        req.setAttribute("admin", retrievedAdmin);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/toolsPage.jsp");
        dispatcher.forward(req, res);
    }
}
