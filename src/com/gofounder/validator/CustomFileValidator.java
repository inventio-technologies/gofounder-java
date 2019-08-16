package com.gofounder.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.web.multipart.MultipartFile;
 
import com.gofounder.model.FileUploadModel;
 
@Component
public class CustomFileValidator implements Validator{
public static final String PNG_MIME_TYPE="image/png";
//public static final long TEN_MB_IN_BYTES = 10485760;
public static final long TEN_MB_IN_BYTES = 50485760;
    @Override
    public boolean supports(Class<?> clazz) {
        return FileUploadModel.class.isAssignableFrom(clazz);
    }
 
    @Override
    public void validate(Object target, Errors errors) {
        FileUploadModel fileUploadModel = (FileUploadModel)target;
        MultipartFile file = fileUploadModel.getFile();
        if(file.isEmpty()){
            errors.rejectValue("file", "upload.file.required");
        }
//        else if(!PNG_MIME_TYPE.equalsIgnoreCase(file.getContentType()) ){
//            errors.rejectValue("file", "upload.invalid.file.type");
//        }
       
        else if(file.getSize() > TEN_MB_IN_BYTES){
            errors.rejectValue("file", "upload.exceeded.file.size");
        }
       
    }
 
}
