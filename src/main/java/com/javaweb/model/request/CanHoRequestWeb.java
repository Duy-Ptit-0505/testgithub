package com.javaweb.model.request;

public class CanHoRequestWeb {
    private Integer id;
    private Integer idChungCu;
    private String tang;
    private String loaiCanHo;
    private Integer dienTichTu;
    private Integer dienTichDen;
    private Integer giaBanTu;
    private Integer giaBanDen;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public Integer getIdChungCu() {
        return idChungCu;
    }

    public void setIdChungCu(Integer idChungCu) {
        this.idChungCu = idChungCu;
    }

    public Integer getDienTichTu() {
        return dienTichTu;
    }

    public void setDienTichTu(Integer dienTichTu) {
        this.dienTichTu = dienTichTu;
    }

    public Integer getDienTichDen() {
        return dienTichDen;
    }

    public void setDienTichDen(Integer dienTichDen) {
        this.dienTichDen = dienTichDen;
    }

    public Integer getGiaBanTu() {
        return giaBanTu;
    }

    public void setGiaBanTu(Integer giaBanTu) {
        this.giaBanTu = giaBanTu;
    }

    public Integer getGiaBanDen() {
        return giaBanDen;
    }

    public void setGiaBanDen(Integer giaBanDen) {
        this.giaBanDen = giaBanDen;
    }
}
