package ph.com.alliance.controller.view;

import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ph.com.alliance.entity.Aircon;
import ph.com.alliance.service.ARSService;

/**
 * Example controller class that hadles static view requests.
 * All requests that returns pages (html, xhtml, jsp, jspx, etc.) is handled here. 
 *
 */
@Controller
@RequestMapping("/ars")
public class AirconController {

	@Autowired
	private ARSService aRSService;
	
    @RequestMapping("/aircon_list")
    public String viewAirconList(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
    	System.out.println("-- VIEW AIRCON LIST --");
    	
    	List<Aircon> aircon_list = aRSService.getAirconList();
    	
    	map.addAttribute("airconList", aircon_list);
    	
        return "ars/airconlist";
    }
    
    
    @RequestMapping(value = "/aircon_form", method = RequestMethod.GET)
    public String airconForm(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
    	System.out.println("-- ADD AIRCON SCREEN --");

        return "ars/addaircon";
    }
    
    @RequestMapping(value = "/add_aircon", method = RequestMethod.POST)
    public String addAircon(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
    	System.out.println("-- ADD AIRCON --");
    	
    	String aircon_name = request.getParameter("aircon_name");
    	String description = request.getParameter("description");
    	
    	Aircon airconObject = new Aircon();
    	
    	airconObject.setName(aircon_name);
    	airconObject.setDescription(description);

    	aRSService.insert(airconObject);
    	

        return viewAirconList(request, response, map);
    }
    
}
