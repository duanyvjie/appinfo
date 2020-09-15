package com.hisoft.appinfo.service.devuser;

import com.hisoft.appinfo.pojo.*;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


public interface DevUserService {
    public DevUser getLoginDevUser(String devCode);
    public List<AppInfo> getAppinfoList(String softwareName, Integer status, Integer flatfromId,
                                        Integer categoryLevel1, Integer categoryLevel2, Integer categoryLevel3,
                                        Integer currentPageNo,Integer pageSize);
    public List<AppInfo> getBackendAppinfoList(String softwareName, Integer flatfromId,
                                        Integer categoryLevel1, Integer categoryLevel2, Integer categoryLevel3,
                                        Integer currentPageNo,Integer pageSize);
    public List<DataDictionary> getAppStatusList();
    public List<DataDictionary> getFlatformList();
    public List<AppCategory> queryCategoryLevel1(Integer level);
    public List<AppCategory> queryCategoryLevel2(Integer queryCategoryLevel1);
    public List<AppCategory> queryCategoryLevel3(Integer queryCategoryLevel2);
    public List<AppCategory> queryCategoryLevel(Integer queryCategoryLevel);
    public String getAppStautsById(Integer id);
    public String getFlatformNameById(Integer id);
    public String getCategoryNameById(Integer id);
    AppVersion getAppVersionById(Integer id);
    AppInfo getAppInfoByAPKName(String name);
    AppInfo getAppInfoById(Integer id);
    Boolean addAppInfo(AppInfo appInfo);
    Boolean modify(AppInfo appInfo);
    List<AppVersion> getAppVersionByAppId(Integer versionNo);
    String getPublishStatusById(Integer id);
    Boolean addVersion(AppVersion appVersion);
    Boolean modifyAppInfoVersionId(Integer appInfoId,Integer versionId);
    /*删除APPinfo*/
    Boolean delAppInfo(Integer id);
    /*删除版本信息*/
    Boolean delAppVersion(Integer id);
    Boolean updateAppInfoStatus(Integer appInfoId,Integer targetStatus);

}
