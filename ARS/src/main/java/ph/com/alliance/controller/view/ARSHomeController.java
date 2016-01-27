package ph.com.alliance.controller.view;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ph.com.alliance.entity.SpecificSchedule;
import ph.com.alliance.entity.User;
import ph.com.alliance.service.ARSService;

/**
 * Example controller class that hadles static view requests. All requests that
 * returns pages (html, xhtml, jsp, jspx, etc.) is handled here.
 *
 */
@Controller
@RequestMapping("/")
public class ARSHomeController {

	@Autowired
	private ARSService aRSService;

	@RequestMapping(method = RequestMethod.GET)
	public String aRSHome(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
		System.out.println("-- LANDING PAGE --");

		return "ars/landingpage";
	}

	@RequestMapping(value = "/ars/", method = RequestMethod.POST)
	public String login(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
		System.out.println("-- LOGIN --");

		String email, password;
		
		email = request.getParameter("email");
		password = request.getParameter("password");
		
		List<User> user_list = aRSService.getUserList();
		
		for(User u : user_list){
			
			System.out.println("EMAIL: " + u.getEmail());
		}
		
		return "ars/index";

	}

}
