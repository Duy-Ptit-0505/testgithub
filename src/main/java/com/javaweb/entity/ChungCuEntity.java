package com.javaweb.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="chungcu")
public class ChungCuEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "tenchungcu")
    private String tenChungCu;

    @Column(name = "diachi")
    private String diaChi;

    @Column(name = "mota")
    private String moTa;

    @Column(name = "hinhanh")
    private String hinhAnh;

    @OneToMany(mappedBy = "chungCuEntity", fetch = FetchType.LAZY)
    private List<CanHoEntity> listCanHo = new ArrayList<>();

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTenChungCu() {
        return tenChungCu;
    }

    public void setTenChungCu(String tenChungCu) {
        this.tenChungCu = tenChungCu;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
    }

    public List<CanHoEntity> getListCanHo() {
        return listCanHo;
    }

    public void setListCanHo(List<CanHoEntity> listCanHo) {
        this.listCanHo = listCanHo;
    }
}


