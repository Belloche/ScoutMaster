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
