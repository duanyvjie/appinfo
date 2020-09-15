package com.hisoft.appinfo.pojo;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;

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
    @NotEmpty(message = "软件名称不能为空")
    private String softwareName;
    @NotEmpty(message = "APKName不能为空")
    private String APKName;
    @NotEmpty(message = "支持的ROM不能为空")
    private String supportROM;
    @NotEmpty(message = "接口语言不能为空")
    private String interfaceLanguage;
    private BigDecimal softwareSize;
    private Date updateDate;
    private Integer devId;
    @NotEmpty(message = "APP信息不能为空")
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
