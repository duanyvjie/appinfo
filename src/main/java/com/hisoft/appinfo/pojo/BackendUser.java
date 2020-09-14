package com.hisoft.appinfo.pojo;

import lombok.Data;

import java.util.Date;

/**
 * @program: MyProject
 * @description:
 * @author: dyj
 * @create: 2020-09-11 14:53:19
 **/
@Data
public class BackendUser {
    private Integer id;
    private String userCode;
    private String userName;
    private Integer userType;
    private Integer createdBy;
    private Date creationDate;
    private Integer modifyBy;
    private Date modifyDate;
    private String userPassword;

}
