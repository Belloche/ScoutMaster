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
 * Servlet that takes the chosen draft the user would like to delete, sets it as the "note" attribute, then
 * forwards to deleteNote.jsp
 * @author Zane Miller
 * @version 1.0 5-11-2021
 */
@WebServlet(
        urlPatterns = "/confirm"
)
public class ConfirmDelete extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        GenericDao dao = new GenericDao(Note.class);
        Note note = (Note) dao.getById(Integer.parseInt(req.getParameter("id")));

        req.setAttribute("note", note);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/deleteNote.jsp");
        dispatcher.forward(req, res);
    }
}
