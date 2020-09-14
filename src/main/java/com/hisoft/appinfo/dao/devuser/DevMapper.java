package com.hisoft.appinfo.dao.devuser;

import com.hisoft.appinfo.pojo.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DevMapper {
    DevUser getLoginDevUser(@Param("devCode") String devCode);
    List<AppInfo> getappInfoList(@Param("softwareName") String softwareName,
                                 @Param("status") Integer status,
                                 @Param("flatformId") Integer flatformId,
                                 @Param("categoryLevel1") Integer categoryLevel1,
                                 @Param("categoryLevel2") Integer categoryLevel2,
                                 @Param("categoryLevel3") Integer categoryLevel3,
                                 @Param("from") Integer from,
                                 @Param("pageSize") Integer pageSize);
    List<DataDictionary> getAppStatusList();

    List<DataDictionary> getFlatformList();

    List<AppCategory> queryCategoryLevel1(@Param("level") Integer level);
    List<AppCategory> queryCategoryLevel2(@Param("queryCategoryLevel1") Integer queryCategoryLevel1);
    List<AppCategory> queryCategoryLevel3(@Param("queryCategoryLevel2") Integer queryCategoryLevel2);

    String getAppStautsById(Integer id);
    String getCategoryNameById(Integer id);
    AppVersion getAppVersionById(@Param("id") Integer id);
    AppInfo getAppInfoByAPKName(String name);
    Integer add(AppInfo appInfo);

}
