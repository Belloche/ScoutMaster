package student.controller;

import javax.servlet.http.HttpServletRequest;

public class ResetSearch {
    public void resetSearch(HttpServletRequest req) {
        req.removeAttribute("emptyResults");
        req.removeAttribute("results");
        req.removeAttribute("term");
        req.removeAttribute("prospectSelected");
        req.removeAttribute("collegeSelected");
        req.removeAttribute("positionSelected");
        req.removeAttribute("emptySearch");
    }
}
