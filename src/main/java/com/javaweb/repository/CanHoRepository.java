package com.javaweb.repository;

import com.javaweb.entity.CanHoEntity;
import com.javaweb.repository.custom.CanHoRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CanHoRepository extends JpaRepository<CanHoEntity, Integer>, CanHoRepositoryCustom {
    void deleteAllByIdIn(List<Integer> id);
}
