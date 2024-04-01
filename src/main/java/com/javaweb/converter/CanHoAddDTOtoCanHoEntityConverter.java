package com.javaweb.converter;

import com.javaweb.entity.CanHoEntity;
import com.javaweb.entity.ChungCuEntity;
import com.javaweb.model.dto.CanHoAddDTO;
import com.javaweb.service.ChungCuService;
import com.javaweb.utils.StringUtils;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CanHoAddDTOtoCanHoEntityConverter {
    @Autowired
    private ModelMapper modelMapper;
    @Autowired
    private ChungCuService chungCuService;
    public CanHoEntity toCanHoEntity(CanHoAddDTO canHoAddDTO){
        if(!StringUtils.check(canHoAddDTO.getTrangThai())){
            canHoAddDTO.setLuotXem("0");
            canHoAddDTO.setTrangThai("Đang bán");
        }

        CanHoEntity canHoEntity = modelMapper.map(canHoAddDTO, CanHoEntity.class);
        ChungCuEntity chungCuEntity = chungCuService.findChungCuById(canHoAddDTO.getIdChungCu());
        canHoEntity.setChungCuEntity(chungCuEntity);
        canHoEntity.setLuotXem(Integer.parseInt(canHoAddDTO.getLuotXem()));
        System.out.println("1");
        canHoEntity.setGiaBan(Integer.parseInt(canHoAddDTO.getGiaBan()));

        return  canHoEntity;
    }


}
