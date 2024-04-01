package com.javaweb.converter;

import com.javaweb.entity.CanHoEntity;
import com.javaweb.model.dto.CanHoAddDTO;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CanHoEntityToCanHoAddDTOConverter {
    @Autowired
    private ModelMapper modelMapper;
    public CanHoAddDTO toCanHoAddDTO(CanHoEntity canHoEntity){
        CanHoAddDTO a = modelMapper.map(canHoEntity, CanHoAddDTO.class);
        a.setIdChungCu(canHoEntity.getChungCuEntity().getId());
        a.setTenChungCuCuaCanHo(canHoEntity.getChungCuEntity().getTenChungCu());
        a.setGiaBan(canHoEntity.getGiaBan().toString());
        a.setLuotXem(canHoEntity.getLuotXem().toString());
        return a;
    }
}
