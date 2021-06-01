package proj21_funding.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import proj21_funding.dto.Project;
import proj21_funding.service.ProjectService;

@Controller
public class ProjectListController {
	
	@Autowired
	ProjectService service;
//	@Autowired
//	ProjectMapper mapper;
	
//	모든 프로젝트
	@RequestMapping("/projectListAll")
	public ModelAndView listAll() {
		List<Project> projects = service.showProjectListAll();
		return new ModelAndView("project/list","projects",projects);
	}
	
//	@RequestMapping("/projectListAll")
//	public String listAll(Model model) {
//		List<Project> projects = mapper.selectProjectListAll();
//		model.addAttribute("projects",projects);
//		return "project/list";
//	}
}
