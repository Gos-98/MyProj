package com.example.model;

import javax.validation.constraints.NotEmpty;

import com.pack.Validatiom.Login;
import com.pack.Validatiom.Password;
import com.pack.Validatiom.PhoneNo;

//@Entity
public class UserModel {

	private int corporateId;
	@Login
	private String userLoginId;
	@Password
	private String userPassword;
	@NotEmpty
	private String userAdd;
	@NotEmpty
	private String userDept;
	@PhoneNo
	private String userPhno;
	private String userStatus;
	private String passChanged;
	
	
	public int getCorporateId() {
		return corporateId;
	}

	public void setCorporateId(int corporateId) {
		this.corporateId = corporateId;
	}

	public String getUserAdd() {
		return userAdd;
	}

	public void setUserAdd(String userAdd) {
		this.userAdd = userAdd;
	}

	public String getUserDept() {
		return userDept;
	}

	public void setUserDept(String userDept) {
		this.userDept = userDept;
	}

	public String getUserPhno() {
		return userPhno;
	}

	public void setUserPhno(String userPhno) {
		this.userPhno = userPhno;
	}

	public String getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}

	public String getPassChanged() {
		return passChanged;
	}

	public void setPassChanged(String passChanged) {
		this.passChanged = passChanged;
	}
	

	public String getUserLoginId() {
		return userLoginId;
	}

	public void setUserLoginId(String userLoginId) {
		this.userLoginId = userLoginId;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
}
