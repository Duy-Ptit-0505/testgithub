package com.javaweb.service.impl;

import com.javaweb.converter.CanHoAddDTOtoCanHoEntityConverter;
import com.javaweb.converter.CanHoEntityToCanHoAddDTOConverter;
import com.javaweb.converter.CanHoEntityToCanHoViewDTOConverter;
import com.javaweb.entity.CanHoEntity;
import com.javaweb.model.dto.CanHoAddDTO;
import com.javaweb.model.dto.CanHoViewDTO;
import com.javaweb.model.request.CanHoRequestAdmin;
import com.javaweb.repository.CanHoRepository;
import com.javaweb.service.CanHoService;
import com.javaweb.utils.NumberUtils;
import com.javaweb.utils.StringUtils;
import com.javaweb.utils.UploadFileUtils;
import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
@Service
@Transactional
public class CanHoServiceImpl implements CanHoService{
    @Autowired
    private CanHoRepository canHoRepository;
    @Autowired
    private CanHoEntityToCanHoViewDTOConverter canHoEntityToCanHoViewDTOConverter;
    @Autowired
    private CanHoEntityToCanHoAddDTOConverter canHoEntityToCanHoAddDTOConverter;
    @Autowired
    private CanHoAddDTOtoCanHoEntityConverter canHoAddDTOtoCanHoEntityConverter;
    @Override
    public List<CanHoViewDTO> findAllCanHo(CanHoRequestAdmin canHoRequest){
        List<CanHoViewDTO> result = new ArrayList<>();
        List<CanHoEntity> list = canHoRepository.findAllCanHo(canHoRequest);
        for(CanHoEntity x : list){
            CanHoViewDTO y = canHoEntityToCanHoViewDTOConverter.toCanHoDTO(x);
            result.add(y);
        }
        return result;
    }
    @Override
    public CanHoViewDTO findCanHoView(Integer id){
        CanHoEntity a = canHoRepository.findById(id).get();
        return  canHoEntityToCanHoViewDTOConverter.toCanHoDTO(a);
    }
    @Override
    public CanHoAddDTO findCanHoAdd(Integer id){
        CanHoEntity a = canHoRepository.findById(id).get();

        return canHoEntityToCanHoAddDTOConverter.toCanHoAddDTO(a);
    }

    @Override
    public void themHoacChinhSuaCanHo(CanHoAddDTO canHoAddDTO){
        Integer id = canHoAddDTO.getId();
        CanHoEntity canHoEntity = canHoAddDTOtoCanHoEntityConverter.toCanHoEntity(canHoAddDTO);
        if(id != null){
            CanHoEntity a = canHoRepository.findById(id).get();
            canHoEntity.setImage(a.getImage());
        }
        saveThumbnail(canHoAddDTO,canHoEntity);
    }
    private void saveThumbnail(CanHoAddDTO buildingDTO, CanHoEntity buildingEntity) {
        String path = "/building/" + buildingDTO.getImageName();
//        String path = "/web/img/" + buildingDTO.getImageName();
        if (null != buildingDTO.getImageBase64()) {
            if (null != buildingEntity.getImage()) {
                if (!path.equals(buildingEntity.getImage())) {
                    File file = new File("C://home/office" + buildingEntity.getImage());
//                    File file = new File("C://Users/Admin/Documents/JavaWeb/Exercise-4/src/main/resources/static" + buildingEntity.getImage());
                    file.delete();
                }
            }

            byte[] bytes = Base64.decodeBase64(buildingDTO.getImageBase64().getBytes());

            System.out.println(1);
            UploadFileUtils.writeOrUpdate(path, bytes);
            System.out.println(1);
            buildingEntity.setImage(path);
            canHoRepository.save(buildingEntity);
        }
    }
    @Override
    public void xoaCanHo(List<Integer> id){

        for(Integer x : id){
            canHoRepository.deleteById(x);
        }

    }
    @Override
    public List<CanHoViewDTO> findTop5CanHoByView(){
        List<CanHoViewDTO> result = new ArrayList<>();
        List<CanHoEntity> list = canHoRepository.findTop5CanHoByView();
        for(CanHoEntity x : list){
            CanHoViewDTO a = canHoEntityToCanHoViewDTOConverter.toCanHoDTO(x);
            result.add(a);
        }
        return result;
    }
//    @Override
//    public void chinhSuaCanHo(CanHoAddDTO canHoAddDTO){
//        CanHoEntity canHoEntity = canHoAddDTOtoCanHoEntityConverter.toCanHoEntity(canHoAddDTO);
//        canHoRepository.
//    }
}
