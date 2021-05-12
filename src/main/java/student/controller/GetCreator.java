package student.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.SortedSet;
import java.util.TreeSet;

/**
 * Servlet that gets a url of the Hipolabs Universities List API, passes it to the getResults() method to get
 * a SortedSet of college names, sets it as the "universities" attribute, then forwards to newNote.jsp
 * @author Zane Miller
 * @version 1.0 5-11-2021
 */
@WebServlet(
        urlPatterns = "/noteCreator"
)
public class GetCreator extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        URL url = new URL("http://universities.hipolabs.com/search?country=United%20States");
        SortedSet<String> universities = getResults(url);

        req.setAttribute("universities", universities);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/newNote.jsp");
        dispatcher.forward(req, res);
    }

    /**
     * Takes a URL from doGet(), opens a connection, reads the results and puts them in a JSONArray, which is then
     * looped through and each result is turned into a JSONObject, and each JSONObject has its name put in the
     * universities SortedSet and returned to doGet()
     *
     * @param url the url of JSON objects
     * @return the SortedSet of college names
     */
    public SortedSet<String> getResults(URL url) {
        HttpURLConnection connection;
        BufferedReader reader;
        String line;
        StringBuffer stringBuffer = new StringBuffer();
        SortedSet<String> universities = new TreeSet<String>();

        try {
            connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");

            reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            while ((line = reader.readLine()) != null) {
                stringBuffer.append(line);
            }
            reader.close();
            connection.disconnect();

            JSONArray schools = new JSONArray(stringBuffer.toString());
            for (int i = 0; i < schools.length(); i++) {
                JSONObject school = schools.getJSONObject(i);
                String name = school.getString("name");
                universities.add(name);
            }
        } catch (Exception exc) {
            logger.error("Exception caught");
            logger.error(exc);
        }

        return universities;
    }
}
