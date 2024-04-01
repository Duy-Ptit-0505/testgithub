package com.javaweb.repository.custom.impl;

import com.javaweb.entity.CanHoEntity;
import com.javaweb.model.request.CanHoRequestAdmin;
import com.javaweb.model.request.CanHoRequestWeb;
import com.javaweb.repository.custom.CanHoRepositoryCustom;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.lang.reflect.Field;
import java.util.List;

@Repository
public class CanHoRepositoryImpl implements CanHoRepositoryCustom {
    @PersistenceContext
    private EntityManager entityManager;
//    public static void joinTable(CanHoRequestAdmin canHoRequest, StringBuilder sql){
//        String tenChungCu = canHoRequest.getTenChungCu();
//        if(StringUtils.check(tenChungCu)){
//            sql.append(" INNER JOIN chungcu on b.idchungcu = chungcu.id ");
//        }
//    }
    public static  void querySpecial(CanHoRequestAdmin canHoRequest, StringBuilder sql){
//        String tenChungCu = canHoRequest.getTenChungCu();
//        if(StringUtils.check(tenChungCu)){
//            sql.append(" AND chungcu.tenchungcu LIKE '%" + tenChungCu + "%' ");
//        }
        Integer giaMuaTu = canHoRequest.getGiaMuaTu();
        Integer giaMuaDen = canHoRequest.getGiaMuaDen();
        Integer dienTichTu = canHoRequest.getDienTichTu();
        Integer dienTichDen = canHoRequest.getDienTichDen();
        if(giaMuaTu != null || giaMuaDen != null || dienTichTu != null || dienTichDen != null){
            if(giaMuaTu != null){
                sql.append(" AND b.giaban >= " + giaMuaTu);
            }
            if(giaMuaDen != null){
                sql.append(" AND b.giaban <= " + giaMuaDen);
            }
            if(dienTichTu != null){
                sql.append(" AND b.dientich >= " + dienTichTu);
            }
            if(dienTichDen != null){
                sql.append(" AND b.dientich <= " + dienTichDen);
            }
        }
    }
    public static void queryNomal(CanHoRequestAdmin canHoRequest, StringBuilder sql){
        try {
            Field field[] = CanHoRequestAdmin.class.getDeclaredFields();
            for(Field item : field){
                item.setAccessible(true);
                String fieldName = item.getName();
                if(!fieldName.equals("tenQuanLy") && !fieldName.equals("soDienThoai") && !fieldName.equals("giaMuaTu")
                        && !fieldName.equals("giaMuaDen") && !fieldName.equals("dienTichTu") && !fieldName.equals("dienTichDen")){
                    Object value =  item.get(canHoRequest);
                    if(value != null && !value.equals("") ){
                        if(item.getType().getName().equals("java.lang.Integer")){
                            sql.append(" AND b." + fieldName + " = " + value);

                        }else if (item.getType().getName().equals("java.lang.String")){
                            sql.append(" AND b." + fieldName + " LIKE '%" + value + "%' ");
                        }
                    }
                }
            }
        } catch (Exception e){
            e.printStackTrace();
        }
    }
    @Override
    public List<CanHoEntity> findAllCanHo(CanHoRequestAdmin canHoRequest) {
        StringBuilder sql = new StringBuilder("SELECT b.* FROM canho b");
        StringBuilder where = new StringBuilder(" WHERE 1 = 1 ");
//        joinTable(canHoRequest,sql);
        queryNomal(canHoRequest,where);
        querySpecial(canHoRequest,where);
        where.append(" AND b.trangthai LIKE '%Đang bán%' GROUP BY b.id ");
        sql.append(where);

        Query query = entityManager.createNativeQuery(sql.toString(),CanHoEntity.class);
        List<CanHoEntity> list = query.getResultList();
        return list;
    }

    @Override
    public List<CanHoEntity> findAllCanHo(CanHoRequestWeb canHoRequest) {
        return null;
    }
    @Override
    public List<CanHoEntity> findTop5CanHoByView(){
        String sql = "SELECT b.* FROM canho b ORDER BY luotxem DESC LIMIT 5";
        Query query = entityManager.createNativeQuery(sql,CanHoEntity.class);
        List<CanHoEntity> list = query.getResultList();
        return list;
    }
}
