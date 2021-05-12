package student.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Servlet that invalidates the session to log the user out, and then forwards to /home with a confirmation attribute
 * @author Zane Miller
 * @version 1.0 5-11-2021
 */
@WebServlet(
        urlPatterns = "/logOut"
)
public class LogOut extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.invalidate();

        req.setAttribute("loggedOut", "true");

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/home");
        dispatcher.forward(req, res);
    }
}
