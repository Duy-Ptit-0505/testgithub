package com.javaweb.repository.custom;

import com.javaweb.entity.CanHoEntity;
import com.javaweb.model.request.CanHoRequestAdmin;
import com.javaweb.model.request.CanHoRequestWeb;

import java.util.List;

public interface CanHoRepositoryCustom {
    public List<CanHoEntity> findAllCanHo(CanHoRequestAdmin canHoRequest);
    public List<CanHoEntity> findAllCanHo(CanHoRequestWeb canHoRequest);
    public List<CanHoEntity> findTop5CanHoByView();
}
