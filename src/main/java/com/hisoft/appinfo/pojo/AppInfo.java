package com.hisoft.appinfo.pojo;

import lombok.Data;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Min;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @program: MyProject
 * @description:
 * @author: dyj
 * @create: 2020-09-11 14:57:41
 **/
@Data
public class AppInfo {
    private Integer id;
    private String softwareName;
    private String APKName;
    private String supportROM;
    private String interfaceLanguage;
    @Min(value = -1,message = "软件大小必须是大于零的数字")
    private BigDecimal softwareSize;
    private Date updateDate;
    private Integer devId;
    private String appInfo;
    private Integer status;
    private Date onSaleDate;
    private Date offSaleDate;
    private Integer flatformId;
    private Integer categoryLevel3;
    @Min(value = -1,message = "下载次数必须是大于零的数字")
    private Integer downloads;
    private Integer createdBy;
    private Date creationDate;
    private Integer modifyBy;
    private Date modifyDate;
    private Integer categoryLevel1;
    private Integer categoryLevel2;
    private String logoPicPath;
    private String logoLocPath;
    private Integer versionId;

    private String statusName;
    private String flatformName;
    private String categoryLevel1Name;
    private String categoryLevel2Name;
    private String categoryLevel3Name;
    private String appNewVersionName;

}
