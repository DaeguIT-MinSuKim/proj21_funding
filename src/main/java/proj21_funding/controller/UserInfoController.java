package proj21_funding.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import proj21_funding.dto.UserInfo;

@Controller
public class UserInfoController {

	@RequestMapping("/account/userInfo")
	public String signUp1(UserInfo userInfo, HttpSession session) {
			
		
		return "account/userInfo";
	}
}