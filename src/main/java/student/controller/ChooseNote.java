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
 * Servlet for choosing which note to delete by setting all notes as the "notes" attribute
 * and forwarding to chooseNote.jsp
 * @author Zane Miller
 * @version 1.0 5-11-2021
 */
@WebServlet(
        urlPatterns = "/chooseNote"
)
public class ChooseNote extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        GenericDao dao = new GenericDao(Note.class);

        req.setAttribute("notes", dao.getAll());

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/chooseNote.jsp");
        dispatcher.forward(req, res);
    }
}
