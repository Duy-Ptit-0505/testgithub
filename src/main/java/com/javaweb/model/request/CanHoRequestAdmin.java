package com.javaweb.model.request;

import com.javaweb.model.dto.AbstractDTO;

public class CanHoRequestAdmin extends AbstractDTO {
    private Integer idChungCu;
    private String tang;
    private String tenCanHo;

    private String loaiCanHo;
    private Integer soPhongTam;
    private Integer soPhongNgu;
    private Integer dienTichTu;
    private Integer dienTichDen;
    private Integer giaMuaTu;
    private Integer giaMuaDen;
    private String tenQuanLy;
    private String soDienThoai;

    public Integer getIdChungCu() {
        return idChungCu;
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

    public Integer getGiaMuaTu() {
        return giaMuaTu;
    }

    public String getTenCanHo() {
        return tenCanHo;
    }

    public void setTenCanHo(String tenCanHo) {
        this.tenCanHo = tenCanHo;
    }

    public void setGiaMuaTu(Integer giaMuaTu) {
        this.giaMuaTu = giaMuaTu;
    }

    public Integer getGiaMuaDen() {
        return giaMuaDen;
    }

    public void setGiaMuaDen(Integer giaMuaDen) {
        this.giaMuaDen = giaMuaDen;
    }

    public String getTenQuanLy() {
        return tenQuanLy;
    }

    public void setTenQuanLy(String tenQuanLy) {
        this.tenQuanLy = tenQuanLy;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }
}
