package com.example.model;

import javax.validation.constraints.NotEmpty;

import com.pack.Validatiom.PhoneNo;

//@Entity
public class CorporateModel {
	
	public int corporateId;
	@NotEmpty
	private String corporateName;
	@NotEmpty
	private String corporateAdd;
	@PhoneNo
	private String corporatePhno;

	
	public int getCorporateId() {
		return corporateId;
	}
	public void setCorporateId(int corporateId) {
		this.corporateId = corporateId;
	}
	public String getCorporateName() {
		return corporateName;
	}
	public void setCorporateName(String corporateName) {
		this.corporateName = corporateName;
	}
	public String getCorporateAdd() {
		return corporateAdd;
	}
	public void setCorporateAdd(String corporateAdd) {
		this.corporateAdd = corporateAdd;
	}
	public String getCorporatePhno() {
		return corporatePhno;
	}
	public void setCorporatePhno(String corporatePhno) {
		this.corporatePhno = corporatePhno;
	}

}
