package ph.com.alliance.controller.view;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Example controller class that hadles static view requests.
 * All requests that returns pages (html, xhtml, jsp, jspx, etc.) is handled here. 
 *
 */
@Controller
@RequestMapping("/")
public class ARSHomeController {
	
    @RequestMapping(method=RequestMethod.GET)
    public String aRSHome(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
    	System.out.println("-- LANDING PAGE --");
    	
        return "ars/landingpage";
    }
    
    

}
