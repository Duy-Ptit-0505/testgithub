package com.javaweb.service;

import com.javaweb.entity.ChungCuEntity;

import java.util.Map;

public interface ChungCuService {
    Map<Integer, String> getAllChungCu();
    ChungCuEntity findChungCuById(Integer id);
}
