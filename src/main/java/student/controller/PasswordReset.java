package student.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
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
 * Servlet that checks to see if the entered oldPassword matches the user's old password, if it does it updates the
 * user record in the database with the entered newPassword, sets the attribute "passwordChanged" to "true", and
 * forwards to /viewCredentials for confirmation
 * @author Zane Miller
 * @version 1.0 5-11-2021
 */
@WebServlet(
        urlPatterns = "/changePassword"
)
public class PasswordReset extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        GenericDao dao = new GenericDao(Admin.class);
        Admin admin = (Admin) dao.getById(1);
        String oldPassword = req.getParameter("oldPassword");
        String newPassword = req.getParameter("newPassword");
        String currentPassword = admin.getPassword();
        RequestDispatcher dispatcher;

        if (oldPassword.equals(currentPassword)) {
            admin.setPassword(newPassword);
            dao.saveOrUpdate(admin);

            req.setAttribute("passwordChanged", "true");
            dispatcher = getServletContext().getRequestDispatcher("/viewCredentials");
        } else {
            req.setAttribute("incorrect", "true");
            dispatcher = getServletContext().getRequestDispatcher("/changePassword.jsp");
        }

        dispatcher.forward(req, res);
    }
}
