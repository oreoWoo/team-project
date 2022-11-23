package com.oracle.choongangGroup.hj.controller;

import java.util.List;

import org.springframework.stereotype.Controller;



import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.choongangGroup.hj.model.GradeVo;
import com.oracle.choongangGroup.hj.model.MemberVo;
import com.oracle.choongangGroup.hj.service.MemberService;
import com.oracle.choongangGroup.sh.domain.Lecture;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
@RequiredArgsConstructor

public class MemberController {

	private final MemberService ms;
	
	
	//아이디 받아와서 학적 조회 
	@RequestMapping(value="listEmp")
	public String MemberList(String userid , Model model) {
		System.out.println("MemberController MemberList start. . .  . . ");
		////아이디 임시로 받아오기//
		userid = "22100001";
		MemberVo member = ms.list(userid);
		model.addAttribute("member", member);
		model.addAttribute("userid" ,userid);
		
	
		return "student/detailList";
	}
	
	//학적수정화면
	@GetMapping(value = "updateFormMember")
	public String updateFormMember(String userid, Model model) {
		System.out.println(" MemberController updateFormMember start . . . ");
		MemberVo member = ms.list(userid);
		model.addAttribute("member", member);
		model.addAttribute("userid", userid);
		
		
		return "student/updateFormMember";
		
	}
	
	//아이디 받아와서 원하는 몇개만 학적 수정
	
	@PostMapping(value = "updateMember")
	public String updateEmp(String phone ,String address ,String email ,String subphone , Model model ,String userid) {
		log.info("MemberController updateEmp start. . . ");
		MemberVo member = new MemberVo();
		member.setPhone(phone);
		member.setAddress(address);
		member.setEmail(email);
		member.setSubphone(subphone);
		member.setUserid(userid);
		
		int updateCount = ms.updateMember(member);
		
		model.addAttribute("uptcnt", updateCount);
		return "redirect:listEmp ";
		
		
	}
	
	//성적조회페이지
	@GetMapping(value = "gradeList")
	public String gradeListForm(String userid, Model model ) {
		System.out.println(" MemberController gradeListForm start . . . ");
		
		GradeVo grade =ms.gradeList(userid);
		model.addAttribute("grade", grade);
		model.addAttribute("userid" ,userid);
		
		return "student/gradeListForm";
	}
	
	//학기별 성적조회
	@GetMapping(value = "/grades")
	public String gradeList(String userid, Model model) {
		System.out.println("MemberController gradeList . . . ");
	
		List<Lecture> grades = ms.findgrades();
		model.addAttribute("grades",grades);
		
		
		return "student/gradeList";
		
	}
	
	
	
	
	}
	
	
	
	

