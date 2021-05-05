package student.controller;

import student.entity.Admin;
import student.entity.Note;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import student.persistence.GenericDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(
        urlPatterns = "/newNote"
)
public class NewNote extends HttpServlet {
    private  final Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        GenericDao dao = new GenericDao(Note.class);
        Note note = new Note();

        note.setUserId(1);
        note.setProspect(req.getParameter("prospect"));
        note.setPosition(req.getParameter("position"));
        note.setCollege(req.getParameter("university"));
        note.setAge(Integer.parseInt(req.getParameter("age")));
        note.setHeightFeet(Integer.parseInt(req.getParameter("feet")));
        note.setHeightInches(Integer.parseInt(req.getParameter("inches")));
        note.setWeight(Integer.parseInt(req.getParameter("weight")));
        note.setReport(req.getParameter("report"));
        note.setRating(req.getParameter("rating"));

        int id = dao.insert(note);
        req.setAttribute("id", id);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/success.jsp");
        dispatcher.forward(req, res);
    }
}
