package com.pack.Validatiom;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;  
  
public class PasswordConstraintValidator implements ConstraintValidator<Password,String> {  
	String pword_pattern ="[a-zA-Z]{3}-[0-9]{2}";
    public boolean isValid(String pwd, ConstraintValidatorContext cvc) {  
      boolean res= pwd.matches(pword_pattern);
    	System.out.println(res);
    	return res;
    }  
	@Override
	public void initialize(Password password) {
	password.message();
	}
}