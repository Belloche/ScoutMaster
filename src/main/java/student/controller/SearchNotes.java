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
import java.util.List;

/**
 * Servlet that takes entered search parameters and uses the dao findByPropertyEqual() to query the database, then
 * set the results in the "results" attribute. If the results were empty it sets the "emptyResults" attribute, if
 * search is empty it sets the "emptySearch" attribute, and if a radio is checked and search term is set it sets it
 * attributes to allow for sticky fields on searchNotes.jsp. After everything is done it forwards to searchNotes.jsp
 * @author Zane Miller
 * @version 1.0 5-11-2021
 */
@WebServlet(
        urlPatterns = "/search"
)
public class SearchNotes extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String searchTerm = req.getParameter("searchTerm");
        String searchType = req.getParameter("typeRadios");
        GenericDao dao = new GenericDao(Note.class);
        List<Note> results = null;
//        ResetSearch reset = new ResetSearch();

//        reset.resetSearch(req);

        if (searchTerm != null) {
            results = dao.findByPropertyEqual(searchType, searchTerm);

            if (results.isEmpty()) {
                logger.info("Empty Results");
                req.setAttribute("emptyResults", "true");
                logger.info(req.getAttribute("emptyResults"));
            }

            req.setAttribute("results", results);
            req.setAttribute("term", searchTerm);
        } else {
            req.setAttribute("emptySearch", "true");
        }

        if (searchType != null) {
            if (searchType.equals("prospect")) {
                req.setAttribute("prospectSelected", "checked");
            } else if (searchType.equals("college")) {
                req.setAttribute("collegeSelected", "checked");
            } else if (searchType.equals("position")) {
                req.setAttribute("positionSelected", "checked");
            }
        }

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/searchNotes.jsp");
        dispatcher.forward(req, res);
    }
}
