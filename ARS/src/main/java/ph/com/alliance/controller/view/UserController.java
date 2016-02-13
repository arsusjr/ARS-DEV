package ph.com.alliance.controller.view;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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

@Controller
@RequestMapping("/ars")
public class UserController {

	@Autowired
	private ARSService aRSService;

	@RequestMapping("/users")
	public String aRSIndex(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
		System.out.println("-- USER LIST PAGE --");

		List<User> user_list = aRSService.getUserList();

		map.addAttribute("user_list", user_list);

		return "ars/users";
	}

	@RequestMapping("/add_user")
	public String addUser(HttpServletRequest request, HttpServletResponse response, ModelMap map)
			throws ParseException {
		System.out.println("-- ADD USER --");

		String first_name, last_name, email, birthday, tin_no;
		boolean admin_flag;
		Byte adminFlag;

		first_name = request.getParameter("first_name");
		last_name = request.getParameter("last_name");
		email = request.getParameter("email");
		tin_no = request.getParameter("tin_no");
		birthday = request.getParameter("birthday");

		DateFormat dateFormat = new SimpleDateFormat("YYYY/MM/DD");

		Date date = dateFormat.parse(birthday);

		admin_flag = Boolean.parseBoolean(request.getParameter("admin_flag"));

		User userObject = new User();

		userObject.setFirstName(first_name);
		userObject.setFamilyName(last_name);
		userObject.setEmail(email);
		userObject.setTinNo(tin_no);
		userObject.setBirthdate(date);
		userObject.setPassword("12345");
		if (admin_flag == true) {

			adminFlag = 1;

		} else {

			adminFlag = 0;
		}
		userObject.setAdminFlag(adminFlag);

		aRSService.insertUser(userObject);

		return "ars/users";
	}

	@RequestMapping(value = "/edit_user", method = RequestMethod.GET)
	public String editUser(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
		System.out.println("-- EDIT USER --");

		int id = Integer.parseInt(request.getParameter("id"));

		User user = aRSService.getUser(id);

		map.addAttribute("user", user);

		return "ars/edit_user";
	}

	@RequestMapping("/update_user")
	public String updateUser(HttpServletRequest request, HttpServletResponse response, ModelMap map)
			throws ParseException {
		System.out.println("-- UPDATE USER --");

		String first_name, last_name, email, birthday, tin_no;
		boolean admin_flag;
		Byte adminFlag;
		int id;

		id = Integer.parseInt(request.getParameter("id"));

		User user = aRSService.getUser(id);

		first_name = request.getParameter("first_name");
		last_name = request.getParameter("last_name");
		email = request.getParameter("email");
		tin_no = request.getParameter("tin_no");
		birthday = request.getParameter("birthday");

		DateFormat dateFormat = new SimpleDateFormat("YYYY-MM-DD");

		Date date = dateFormat.parse(birthday);

		admin_flag = Boolean.parseBoolean(request.getParameter("admin_flag"));


		user.setFirstName(first_name);
		user.setFamilyName(last_name);
		user.setEmail(email);
		user.setTinNo(tin_no);
		user.setBirthdate(date);
		if (admin_flag == true) {

			adminFlag = 1;

		} else {

			adminFlag = 0;
		}
		user.setAdminFlag(adminFlag);

		aRSService.updateUser(user);

		return "ars/users";
	}

	@RequestMapping(value = "/delete_user")
	public String deleteUser(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
		System.out.println("-- DELETE USER --");

		int id;

		User userObject = new User();
		Byte deleted_flag = 1;
		
		userObject.setDeletedFlag(deleted_flag);
		aRSService.deleteUser(userObject);

		return "ars/users";

	}
}
