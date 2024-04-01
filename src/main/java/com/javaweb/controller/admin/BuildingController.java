package com.javaweb.controller.admin;

import com.javaweb.model.dto.CanHoAddDTO;
import com.javaweb.model.dto.CanHoViewDTO;
import com.javaweb.model.request.CanHoRequestAdmin;
import com.javaweb.service.CanHoService;
import com.javaweb.service.ChungCuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@RestController
@MultipartConfig
public class BuildingController {
    @Autowired
    private CanHoService canHoService;
    @Autowired
    private ChungCuService chungCuService;
    @GetMapping("/admin/building-list")
    public ModelAndView buildingList(@ModelAttribute CanHoRequestAdmin canHoRequestAdmin, HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/building/list");
        mav.addObject("modelTimKiem", canHoRequestAdmin);
        List<CanHoViewDTO> list = canHoService.findAllCanHo(canHoRequestAdmin);
        mav.addObject("modelKetQua", list);
        Map<Integer, String> mapAllChungCu =chungCuService.getAllChungCu();
        mav.addObject("mapAllChungCu", mapAllChungCu);
        return mav;
    }

    @GetMapping("/admin/building-edit")
    public ModelAndView buildingEdit(@ModelAttribute CanHoAddDTO canHoAddDTO, HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/building/edit");
        mav.addObject("modelEdit", canHoAddDTO);
        Map<Integer, String> mapAllChungCu =chungCuService.getAllChungCu();
        mav.addObject("mapAllChungCu", mapAllChungCu);
        mav.addObject("idCanHo", canHoAddDTO.getId());
        return mav;
    }
    @GetMapping("/admin/building-edit-{id}")
    public  ModelAndView buildingEdit(@PathVariable Integer id){
        ModelAndView mav = new ModelAndView("admin/building/edit");
        CanHoAddDTO a = canHoService.findCanHoAdd(id);
        mav.addObject("modelEdit", a);
        mav.addObject("idCanHo", a.getId());
        return mav;
    }

}
