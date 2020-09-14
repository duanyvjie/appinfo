package com.hisoft.appinfo.pojo;

import lombok.Data;

import java.util.Date;

/**
 * @program: MyProject
 * @description:
 * @author: dyj
 * @create: 2020-09-11 15:01:55
 **/
@Data
public class AppCategory {
    private Integer id;
    private String categoryCode;
    private String categoryName;
    private Integer parentId;
    private Integer createdBy;
    private Date creationTime;
    private Integer modifyBy;
    private Date modifyDate;

}
