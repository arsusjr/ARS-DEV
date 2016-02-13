package ph.com.alliance.controller.view;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ph.com.alliance.entity.Aircon;
import ph.com.alliance.entity.SpecificSchedule;
import ph.com.alliance.service.ARSService;

@Controller
@RequestMapping("/ars")
public class SpecificScheduleController {

	@Autowired
	private ARSService aRSService;

	@RequestMapping(value = "/aircon_schedule")
	public String viewAirconSchedule(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
		System.out.println("-- AIRCON SCHEDULE VIEW --");

		String search = request.getParameter("search");
		
		List<SpecificSchedule> specific_schedule_list = aRSService.getSpecificScheduleList();
		

		map.addAttribute("specific_schedule_list", specific_schedule_list);

		return "ars/aircon_schedule";

	}

	@RequestMapping(value = "/edit_schedule", method = RequestMethod.GET)
	public String editAirconSchedule(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
		System.out.println("-- EDIT SCHEDULE VIEW --");

		int id = Integer.parseInt(request.getParameter("id"));

		String modified_by, modified_date;

		modified_by = request.getSession().getAttribute("modified_by").toString();

		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();

		SpecificSchedule specificSchedule = aRSService.getSchedule(id);

		map.addAttribute("schedule", specificSchedule);

		return "ars/edit_schedule";
	}

	@RequestMapping(value = "/update_schedule", method = RequestMethod.POST)
	public String updateAirconSchedule(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
		System.out.println("-- UPDATE SCHEDULE --");
		
		String aircon_name, date, time_start, time_end;
		
		

		return "ars/aircon_schedule";

	}

}
