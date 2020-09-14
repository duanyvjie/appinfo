package com.hisoft.appinfo.pojo;

import lombok.Data;

import java.util.Date;

/**
 * @program: MyProject
 * @description:
 * @author: dyj
 * @create: 2020-09-11 14:51:00
 **/
@Data
public class DataDictionary {
    private Integer id;
    private String typeCode;
    private String typeName;
    private Integer valueId;
    private String valueName;
    private Integer createdBy;
    private Date creationDate;
    private Integer modifyBy;
    private Date modifyDate;

}
