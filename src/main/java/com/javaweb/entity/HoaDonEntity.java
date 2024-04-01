package com.javaweb.entity;

import java.sql.Date;

import javax.persistence.*;

@Entity
@Table(name="hoadon")
public class HoaDonEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name="ngaymua")
    private Date ngayMua;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idcanho")
    private CanHoEntity canHoEntity;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "iduser")
    private UserEntity userEntity;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getNgayMua() {
        return ngayMua;
    }

    public void setNgayMua(Date ngayMua) {
        this.ngayMua = ngayMua;
    }

    public CanHoEntity getCanHoEntity() {
        return canHoEntity;
    }

    public void setCanHoEntity(CanHoEntity canHoEntity) {
        this.canHoEntity = canHoEntity;
    }

    public UserEntity getUserEntity() {
        return userEntity;
    }

    public void setUserEntity(UserEntity userEntity) {
        this.userEntity = userEntity;
    }





}

