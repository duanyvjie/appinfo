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
    public List<DataDictionary> getAppStatusList();
    public List<DataDictionary> getFlatformList();
    public List<AppCategory> queryCategoryLevel1(Integer level);
    public List<AppCategory> queryCategoryLevel2(Integer queryCategoryLevel1);
    public List<AppCategory> queryCategoryLevel3(Integer queryCategoryLevel2);
    public String getAppStautsById(Integer id);
    public String getCategoryNameById(Integer id);
    AppVersion getAppVersionById(Integer id);
    AppInfo getAppInfoByAPKName(String name);
    Boolean addAppInfo(AppInfo appInfo);
}
