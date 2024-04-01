package com.javaweb.model.response;


public class TimKiemCanHoResponse {
	private Integer id;
	private String canHo;
	private String chungCu;
	private Integer tang;
	private String loaiCanHo;
	private Integer gia;
	private Integer dienTich;
	private Integer soPhongTam;
	private Integer soPhongNgu;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCanHo() {
		return canHo;
	}

	public void setCanHo(String canHo) {
		this.canHo = canHo;
	}

	public String getChungCu() {
		return chungCu;
	}

	public void setChungCu(String chungCu) {
		this.chungCu = chungCu;
	}

	public Integer getTang() {
		return tang;
	}

	public void setTang(Integer tang) {
		this.tang = tang;
	}

	public String getLoaiCanHo() {
		return loaiCanHo;
	}

	public void setLoaiCanHo(String loaiCanHo) {
		this.loaiCanHo = loaiCanHo;
	}

	public Integer getGia() {
		return gia;
	}

	public void setGia(Integer gia) {
		this.gia = gia;
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
}
