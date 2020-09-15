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

    List<AppInfo> getBackendappInfoList(@Param("softwareName") String softwareName,
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
    List<AppCategory> queryCategoryLevel(@Param("queryCategoryLevel") Integer queryCategoryLevel);

    String getAppStautsById(Integer id);
    String getCategoryNameById(Integer id);
    String getFlatformNameById(Integer id);
    AppVersion getAppVersionById(@Param("id") Integer id);
    AppInfo getAppInfoByAPKName(String name);
    AppInfo getAppInfoById(Integer id);
    Integer add(AppInfo appInfo);

    Integer modify(AppInfo appInfo);
    List<AppVersion> getAppVersionByAppId(Integer appId);
    String getPublishStatusById(Integer id);

    Integer addVersion(AppVersion appVersion);
    Integer modifyAppInfoVersionId(@Param("appInfoId") Integer appInfoId,@Param("versionid") Integer versionId);
    /*删除APPinfo*/
    Integer delAppInfo(Integer id);
    /*删除版本信息*/
    Integer delAppVersion(Integer id);
    /*上架下架操作*/
    Integer updateAppInfoStatus(@Param("appInfoId")Integer appaInfoId,@Param("targetStatus") Integer targetStatus);

    Integer updateAppInfoStatus(Integer status);

}
