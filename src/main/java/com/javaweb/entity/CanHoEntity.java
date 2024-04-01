package com.javaweb.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "canho")
public class CanHoEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "tencanho")
    private String tenCanHo;

    @Column(name = "tang")
    private String tang;
    @Column(name="loaicanho")
    private String loaiCanHo;

    @Column(name="mota")
    private String moTa;
    @Column(name="luotxem")
    private Integer luotXem;
    @Column(name="dientich")
    private Integer dienTich;

    @Column(name="sophongtam")
    private Integer soPhongTam;
    @Column(name="sophongngu")
    private Integer soPhongNgu;

    @Column(name="giaban")
    private Integer giaBan;

    @Column(name="image")
    private String image;

    @Column(name="trangthai")
    private String trangThai;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idchungcu")
    private ChungCuEntity chungCuEntity;

    @OneToMany(mappedBy = "canHoEntity")
    private List<HoaDonEntity> listHoaDon = new ArrayList<>();

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTenCanHo() {
        return tenCanHo;
    }

    public void setTenCanHo(String tenCanHo) {
        this.tenCanHo = tenCanHo;
    }

    public String getLoaiCanHo() {
        return loaiCanHo;
    }

    public void setLoaiCanHo(String loaiCanHo) {
        this.loaiCanHo = loaiCanHo;
    }

    public Integer getDienTich() {
        return dienTich;
    }

    public void setDienTich(Integer dienTich) {
        this.dienTich = dienTich;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }


    public Integer getLuotXem() {
        return luotXem;
    }

    public void setLuotXem(Integer luotXem) {
        this.luotXem = luotXem;
    }

    public Integer getSoPhongTam() {
        return soPhongTam;
    }

    public void setSoPhongTam(Integer soPhongTam) {
        this.soPhongTam = soPhongTam;
    }

    public Integer getSoPhongNgu() {
        return soPhongNgu;
    }

    public void setSoPhongNgu(Integer soPhongNgu) {
        this.soPhongNgu = soPhongNgu;
    }

    public Integer getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(Integer giaBan) {
        this.giaBan = giaBan;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public ChungCuEntity getChungCuEntity() {
        return chungCuEntity;
    }

    public void setChungCuEntity(ChungCuEntity chungCuEntity) {
        this.chungCuEntity = chungCuEntity;
    }

    public List<HoaDonEntity> getListHoaDon() {
        return listHoaDon;
    }

    public void setListHoaDon(List<HoaDonEntity> listHoaDon) {
        this.listHoaDon = listHoaDon;
    }

    public String getTang() {
        return tang;
    }

    public void setTang(String tang) {
        this.tang = tang;
    }
}
