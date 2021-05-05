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
import java.util.ArrayList;
import java.util.List;

@WebServlet(
        urlPatterns = "/search"
)
public class SearchNotes extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String searchTerm = req.getParameter("searchTerm");
        String searchType = req.getParameter("typeRadios");
        GenericDao dao = new GenericDao(Note.class);
        List<Note> results = null;

        if (searchTerm != null) {
            results = dao.findByPropertyEqual(searchType, searchTerm);

//            IF RESULTS ARE EMPTY PUT IT HERE

            req.setAttribute("results", results);
            req.setAttribute("term", searchTerm);
            if (searchType.equals("prospect")) {
                req.setAttribute("prospectSelected", "checked");
            } else if (searchType.equals("college")) {
                req.setAttribute("collegeSelected", "checked");
            } else if (searchType.equals("position")) {
                req.setAttribute("positionSelected", "checked");
            }
        } else {
            req.setAttribute("emptySearch", "true");
        }

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/searchNotes.jsp");
        dispatcher.forward(req, res);
    }
}
