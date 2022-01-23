package com.pack.Validatiom;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class PhoneNoConstraintValidator implements ConstraintValidator<PhoneNo,String>  {


	String loginId_pattern ="[a-zA-Z]{4}-[0-9]{3}";
    public boolean isValid(String pwd, ConstraintValidatorContext cvc) {  
      boolean res= pwd.matches(loginId_pattern);
    	System.out.println(res);
    	return res;
    }  
	@Override
	public void initialize(PhoneNo phoneNo) {
	phoneNo.message();
	}
}
