package com.javaweb.model.dto;

public class CanHoAddDTO {
    private Integer id;
    private String tenCanHo;
    private Integer idChungCu;
    private String tang;
    private String loaiCanHo;
    private String giaBan;
    private Integer dienTich;
    private Integer soPhongTam;
    private Integer soPhongNgu;
    private String image;
    private String trangThai;

    private String moTa;
    private String luotXem;
    private String tenChungCuCuaCanHo;
    private String imageBase64;
    private String imageName;

    public String getImageBase64() {
        return imageBase64;
    }

    public void setImageBase64(String imageBase64) {
        this.imageBase64 = imageBase64;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public String getLuotXem() {
        return luotXem;
    }

    public void setLuotXem(String luotXem) {
        this.luotXem = luotXem;
    }

    public String getTenChungCuCuaCanHo() {
        return tenChungCuCuaCanHo;
    }

    public void setTenChungCuCuaCanHo(String tenChungCuCuaCanHo) {
        this.tenChungCuCuaCanHo = tenChungCuCuaCanHo;
    }

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

    public Integer getIdChungCu() {
        return idChungCu;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public void setIdChungCu(Integer idChungCu) {
        this.idChungCu = idChungCu;
    }

    public String getTang() {
        return tang;
    }

    public void setTang(String tang) {
        this.tang = tang;
    }

    public String getLoaiCanHo() {
        return loaiCanHo;
    }

    public void setLoaiCanHo(String loaiCanHo) {
        this.loaiCanHo = loaiCanHo;
    }

    public String getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(String giaBan) {
        this.giaBan = giaBan;
    }

    public Integer getDienTich() {
        return dienTich;
    }

    public void setDienTich(Integer dienTich) {
        this.dienTich = dienTich;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
