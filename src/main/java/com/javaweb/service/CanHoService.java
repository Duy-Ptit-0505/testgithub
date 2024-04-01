package com.javaweb.service;

import com.javaweb.model.dto.CanHoAddDTO;
import com.javaweb.model.dto.CanHoViewDTO;
import com.javaweb.model.request.CanHoRequestAdmin;

import java.util.List;

public interface CanHoService {
    List<CanHoViewDTO> findAllCanHo(CanHoRequestAdmin canHoRequest);
    CanHoAddDTO findCanHoAdd(Integer id);
    CanHoViewDTO findCanHoView(Integer id);
    List<CanHoViewDTO> findTop5CanHoByView();
    void themHoacChinhSuaCanHo(CanHoAddDTO canHoAddDTO);
    void xoaCanHo(List<Integer> id);
//    void chinhSuaCanHo(CanHoAddDTO canHoAddDTO);
}
