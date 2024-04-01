package com.javaweb.api.admin;

import com.javaweb.model.dto.CanHoAddDTO;
import com.javaweb.service.CanHoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.annotation.MultipartConfig;
import java.util.List;
@MultipartConfig
@RestController
@RequestMapping("/admin/canho")
public class CanHoAPIofAdmin {
    @Autowired
    CanHoService canHoService;
    @PostMapping
    public void ThemHoacSuaCanHo(@RequestBody CanHoAddDTO canHoDTO){


        canHoService.themHoacChinhSuaCanHo(canHoDTO);
    }
    @DeleteMapping("/{id}")
    public void XoaCanHo(@PathVariable List<Integer> id){
        System.out.println("ok");
        canHoService.xoaCanHo(id);

    }
}
