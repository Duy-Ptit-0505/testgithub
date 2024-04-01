package com.javaweb.converter;

import com.javaweb.entity.CanHoEntity;
import com.javaweb.model.dto.CanHoViewDTO;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component

public class CanHoEntityToCanHoViewDTOConverter {

    @Autowired
    private ModelMapper modelMapper;
    public CanHoViewDTO toCanHoDTO(CanHoEntity canHoEntity){
        CanHoViewDTO canHoDTO = modelMapper.map(canHoEntity, CanHoViewDTO.class);
        canHoDTO.setTenChungCu(canHoEntity.getChungCuEntity().getTenChungCu());
        Integer gia = canHoEntity.getGiaBan();
        Integer luotXem = canHoEntity.getLuotXem();
        canHoDTO.setGiaBan(String.format("%,d", gia));
        canHoDTO.setLuotXem(String.format("%,d", luotXem));
        canHoDTO.setDiaChi(canHoEntity.getChungCuEntity().getDiaChi());
        return canHoDTO;
    }
}
