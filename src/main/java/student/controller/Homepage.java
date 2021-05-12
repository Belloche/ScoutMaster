package student.controller;

import student.entity.Note;
import student.persistence.GenericDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet that calls getAll() on a dao of Notes entities, sets it as the "notes" attribute, and forwards to index.jsp
 * @author Zane Miller
 * @version 1.0 5-11-2021
 */
@WebServlet(
        urlPatterns = {"/home"}
)
public class Homepage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        GenericDao dao = new GenericDao(Note.class);

        req.setAttribute("notes", dao.getAll());

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
        dispatcher.forward(req, res);
    }
}
