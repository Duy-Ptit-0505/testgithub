package com.javaweb.api.web;

import com.javaweb.converter.CanHoRequestWebToAdmin;
import com.javaweb.model.dto.CanHoAddDTO;
import com.javaweb.model.dto.CanHoViewDTO;
import com.javaweb.model.request.CanHoRequestWeb;
import com.javaweb.service.CanHoService;
import com.javaweb.service.ChungCuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@RestController(value = "CanHoAPIOfWeb")

public class CanHoAPIofWeb {
    @Autowired
    private CanHoService canHoService;
    @Autowired
    private CanHoRequestWebToAdmin canHoRequestWebToAdmin;
    @Autowired
    private ChungCuService chungCuService;






}
