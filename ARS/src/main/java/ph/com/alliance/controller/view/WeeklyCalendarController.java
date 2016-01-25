package ph.com.alliance.controller.view;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ars")
public class WeeklyCalendarController {

    @RequestMapping("/weekly_schedule")
    public String aRSIndex(HttpServletRequest request, HttpServletResponse response, ModelMap map) {
    	System.out.println("-- CALENDAR WEEKLY SCHED PAGE --");
    	
        return "ars/weeklyview";
    }
    
}
