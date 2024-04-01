package com.javaweb.service.impl;

import com.javaweb.entity.ChungCuEntity;
import com.javaweb.repository.ChungCuRepository;
import com.javaweb.service.ChungCuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service
@Transactional
public class ChungCuServiceImpl implements ChungCuService {
    @Autowired
    ChungCuRepository chungCuRepository;
    @Override
    public Map<Integer, String> getAllChungCu() {
        List<ChungCuEntity> list = chungCuRepository.findAll();
        Map<Integer, String> map = new HashMap<>();
        for(ChungCuEntity x : list){
            map.put(x.getId(), x.getTenChungCu());
        }
        return map;
    }
    @Override
    public ChungCuEntity findChungCuById(Integer id){
        return chungCuRepository.findById(id).get();
    }
}
