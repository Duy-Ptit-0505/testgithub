package com.javaweb.converter;

import com.javaweb.model.request.CanHoRequestAdmin;
import com.javaweb.model.request.CanHoRequestWeb;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CanHoRequestWebToAdmin {
    @Autowired
    private ModelMapper modelMapper;
    public CanHoRequestAdmin toCanHoRequestAdmin(CanHoRequestWeb canHoRequestWeb){
        CanHoRequestAdmin canHoRequestAdmin = modelMapper.map(canHoRequestWeb, CanHoRequestAdmin.class);
        return canHoRequestAdmin;
    }
}
