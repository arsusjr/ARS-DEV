package ph.com.alliance.controller.view;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
		System.out.println("-- LOGIN --");

		ModelAndView mav = null;
		String email, password;

		email = request.getParameter("email");
		password = request.getParameter("password");

		if (email.isEmpty()) {
			map.addAttribute("ErrorMessage", "Enter Email .");
			mav = new ModelAndView("ars/landingpage");
			
		} else if (password.isEmpty()) {

			map.addAttribute("ErrorMessage", "Enter Password .");
			mav = new ModelAndView("ars/landingpage");
			
		} else if (email.isEmpty() && password.isEmpty()) {

			map.addAttribute("ErrorMessage", "All fields are required .");
			mav = new ModelAndView("ars/landingpage");
		} else {

			User user = aRSService.findUser(email, password);

			request.getSession().setAttribute("first_name", user.getFirstName());
			request.getSession().setAttribute("modified_by", user.getId());
			mav = new ModelAndView("ars/index");
		}

		return mav;

	}

	@RequestMapping(value = "/ars/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response, ModelMap map) {

		System.out.println("-- LOGOUT --");

		request.getSession().invalidate();

		return "ars/landingpage";

	}
}
