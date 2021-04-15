package controller;

import entity.Note;
import persistence.GenericDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(
        urlPatterns = {"/newNote"}
)
public class NewNote extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        GenericDao dao = new GenericDao(Note.class);
        Note note = new Note();

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/newNote.jsp");
        dispatcher.forward(req, res);
    }
}
