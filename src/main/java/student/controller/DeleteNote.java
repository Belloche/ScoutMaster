package student.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
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
 * Servlet for deleting a specified note, setting the "deleted" attribute to "true", then forwarding to toolsPage.jsp
 * @author Zane Miller
 * @version 1.0 5-11-2021
 */
@WebServlet(
        urlPatterns = "/deleteNote"
)
public class DeleteNote extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        GenericDao dao = new GenericDao(Note.class);
        Note note = (Note) dao.getById(Integer.parseInt(req.getParameter("id")));

        dao.delete(note);
        req.setAttribute("deleted", "true");
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/toolsPage.jsp");
        dispatcher.forward(req, res);
    }
}
