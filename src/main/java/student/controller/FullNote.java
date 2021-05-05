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

@WebServlet(
        urlPatterns = {"/fullNote"}
)
public class FullNote extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        GenericDao dao = new GenericDao(Note.class);

        int noteParam = Integer.parseInt(req.getParameter("id"));

        req.setAttribute("note", dao.getById(noteParam));

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/fullNote.jsp");
        dispatcher.forward(req, res);
    }
}
