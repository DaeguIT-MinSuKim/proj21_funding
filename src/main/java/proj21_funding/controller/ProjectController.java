package proj21_funding.controller;

import java.util.List;

import org.apache.ibatis.binding.BindingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import proj21_funding.dto.PrjOption;
import proj21_funding.dto.Project;
import proj21_funding.dto.project.ProjectJoin;
import proj21_funding.service.FundingInfoService;
import proj21_funding.service.PrjOptionService;
import proj21_funding.service.ProjectJoinService;
import proj21_funding.service.ProjectService;

@Controller
public class ProjectController {

	@Autowired
	ProjectService projectService;
	@Autowired
	PrjOptionService optionService;
	@Autowired
	FundingInfoService fundingService;
	@Autowired
	ProjectJoinService joinService;

//	모든 프로젝트
	@RequestMapping("/projectListAll")
	public ModelAndView listAll() {
		List<Project> projects = projectService.showProjectListAll();
		List<ProjectJoin> prjs = joinService.showProjectJoinAll();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("project/list");
		mav.addObject("projects", projects);
		mav.addObject("prjs", prjs);
		return mav;
	}

	@RequestMapping("/sucessImbakProject")
	public ModelAndView ImbakListAll() {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("project/list");
		return mav;
	}

//	@RequestMapping("/projectListByName")
//	public ModelAndView listByName(@ModelAttribute("prjName") Project project, Model model) {
//		List<Project> projects = projectService.showProjectListAll();
//		ModelAndView mav = new ModelAndView("project/list");
//		model.addAttribute("prjName",new String());
//		mav.addObject("projects",projects);
//		return mav;
//	}

//	@RequestMapping("/projectListAll")
//	public String listAll(Model model) {
//		List<Project> projects = mapper.selectProjectListAll();
//		model.addAttribute("projects",projects);
//		return "project/list";
//	}

	@RequestMapping("/prjDetail/{prjNo}")
	public ModelAndView detail(@PathVariable("prjNo") int prjNo) {
		int count;
		int sum;
		List<PrjOption> prj = optionService.showPrjOptionByPrjNo(prjNo);
//		List<Project> prjList=projectService.showProjectListAll();
		try {
			count = fundingService.showCountByPrjNo(prjNo);
			sum = fundingService.showSumByPrjNo(prjNo);
		} catch (BindingException e) {
			count = 0;
			sum = 0;
		}
		ModelAndView mav = new ModelAndView("project/project_detail", "prj", prj);
		mav.addObject("count", count);
		mav.addObject("sum", sum);
		return mav;
	}
}
