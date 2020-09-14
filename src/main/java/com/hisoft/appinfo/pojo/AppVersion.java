package com.hisoft.appinfo.pojo;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

/**
 * @program: MyProject
 * @description:
 * @author: dyj
 * @create: 2020-09-11 14:55:11
 **/
@Data
public class AppVersion {
    private Integer id;
    private Integer appId;
    private String versionNo;
    private String versionInfo;
    private Integer publishStatus;
    private String downloadLink;
    private BigDecimal versionSize;
    private Integer createdBy;
    private Date creationDate;
    private Integer modifyBy;
    private Date modifyDate;
    private String apkLocPath;
    private String apkFileName;

}
