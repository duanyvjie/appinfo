package com.hisoft.appinfo.pojo;

import lombok.Data;

import java.util.Date;

/**
 * @program: MyProject
 * @description:
 * @author: dyj
 * @create: 2020-09-11 15:03:44
 **/
@Data
public class AdPromotion {
    private Integer id;
    private Integer appId;
    private String adPicPath;
    private Integer adPV;
    private Integer carouselPosition;
    private Date startTime;
    private Date endTime;
    private Integer createdBy;
    private Date creationDate;
    private Integer modifyBy;
    private Date modifyDate;

}
