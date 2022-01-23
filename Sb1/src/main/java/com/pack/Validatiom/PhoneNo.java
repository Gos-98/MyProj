package com.pack.Validatiom;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Constraint(validatedBy =PhoneNoConstraintValidator.class)  
@Target( { ElementType.FIELD } )  
@Retention(RetentionPolicy.RUNTIME)  
public @interface PhoneNo {
	//error message  
    public String message() default "must contain Phone Number";  
    //represents group of constraints     
        public Class<?>[] groups() default {};  
    //represents additional information about annotation  
        public Class<? extends Payload>[] payload() default {};  
}
