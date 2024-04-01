package com.javaweb.controller.web;

import com.javaweb.converter.CanHoRequestWebToAdmin;
import com.javaweb.model.dto.CanHoViewDTO;
import com.javaweb.model.request.CanHoRequestWeb;
import com.javaweb.service.CanHoService;
import com.javaweb.service.ChungCuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller(value = "homeControllerOfWeb")
public class HomeController {
	@Autowired
	private ChungCuService chungCuService;
	@Autowired
	private CanHoService canHoService;
	@Autowired
	private CanHoRequestWebToAdmin canHoRequestWebToAdmin;
	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage(@ModelAttribute CanHoRequestWeb canHoRequestWeb, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("web/home");
		List<CanHoViewDTO> list =  canHoService.findAllCanHo(canHoRequestWebToAdmin.toCanHoRequestAdmin(canHoRequestWeb));
        mav.addObject("modelTimKiemUser", canHoRequestWeb);
		Map<Integer, String> mapAllChungCu = chungCuService.getAllChungCu();
		mav.addObject("mapAllChungCu", mapAllChungCu);
		mav.addObject("listCanHo", list);
		List<CanHoViewDTO> top5CanHoByViews = canHoService.findTop5CanHoByView();
		mav.addObject("top5CanHo", top5CanHoByViews);
		return mav;
	}

    @GetMapping(value="/gioi-thieu")
    public ModelAndView introducceBuiding(){
        ModelAndView mav = new ModelAndView("web/introduce");
        return mav;
    }

    @GetMapping(value="/san-pham")
    public ModelAndView buidingList(){
        ModelAndView mav = new ModelAndView("/web/list");
        return mav;
    }

    @GetMapping(value="/tin-tuc")
    public ModelAndView news(){
        ModelAndView mav = new ModelAndView("/web/news");
        return mav;
    }

    @GetMapping(value="/lien-he")
    public ModelAndView contact(){
        ModelAndView mav = new ModelAndView("/web/contact");
        return mav;
    }

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}

	@RequestMapping(value = "/access-denied", method = RequestMethod.GET)
	public ModelAndView accessDenied() {
		return new ModelAndView("redirect:/login?accessDenied");
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return new ModelAndView("redirect:/trang-chu");
	}
	@GetMapping(value = "/web/chitiet/{id}")
	ModelAndView getChiTietCanHo(@PathVariable Integer id, HttpServletRequest httpServletRequest){
		ModelAndView mav = new ModelAndView("/web/chitiet");
		CanHoViewDTO canHoViewDTO = canHoService.findCanHoView(id);
		mav.addObject("canHo", canHoViewDTO);
		return mav;
	}
	@GetMapping(value = "/web/home")
	public ModelAndView getAllCanHo(@ModelAttribute CanHoRequestWeb canHoRequestWeb, HttpServletRequest request){
		ModelAndView mav = new ModelAndView("/web/home");
		List<CanHoViewDTO> list =  canHoService.findAllCanHo(canHoRequestWebToAdmin.toCanHoRequestAdmin(canHoRequestWeb));
		mav.addObject("modelTimKiemUser", canHoRequestWeb);
		Map<Integer, String> mapAllChungCu = chungCuService.getAllChungCu();
		mav.addObject("mapAllChungCu", mapAllChungCu);
		mav.addObject("listCanHo", list);
		return mav;
	}
}
