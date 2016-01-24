package ph.com.alliance.controller.view;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ph.com.alliance.entity.Aircon;
import ph.com.alliance.entity.SpecificSchedule;
import ph.com.alliance.service.ARSService;

public class SpecificScheduleController {
	@Controller
	@RequestMapping("/ars")
	public class AirconController {

		@Autowired
		private ARSService aRSService;
		
	    @RequestMapping(value = "/aircon_schedule", method = RequestMethod.GET)
	    public String viewAirconSchedule(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
	    	System.out.println("-- AIRCON SCHEDULE VIEW --");
	    	
	    	List<SpecificSchedule> specific_schedule_list = aRSService.getSpecificScheduleList();
	    	
	    	map.addAttribute("specific_schedule_list", specific_schedule_list);

	        return "ars/aircon_schedule";
	    }
		
	    
	}

}
