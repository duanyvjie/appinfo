package com.hisoft.appinfo.service.devuser;

import com.hisoft.appinfo.dao.devuser.DevMapper;
import com.hisoft.appinfo.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @program: MyProject
 * @description:
 * @author: dyj
 * @create: 2020-09-11 17:05:17
 **/

@Service
@Transactional
public class DevUserServiceImpl implements DevUserService{
    @Autowired
    DevMapper devMapper;

    @Override
    public DevUser getLoginDevUser(String devCode) {

        DevUser devUser = null;
        try {
            devUser = devMapper.getLoginDevUser(devCode);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            throw e;
        }
        return devUser;
    }

    @Override
    public List<AppInfo> getAppinfoList(String softwareName, Integer status, Integer flatfromId, Integer categoryLevel1, Integer categoryLevel2, Integer categoryLevel3, Integer currentPageNo, Integer pageSize) {
        List<AppInfo> appInfoList = null;
        try {
            int from =(currentPageNo-1)*pageSize;
            appInfoList = devMapper.getappInfoList(softwareName,status,flatfromId,categoryLevel1,categoryLevel2,categoryLevel3,from,pageSize);
        } catch (Exception e) {
            e.printStackTrace();
            throw  e;
        }
        return appInfoList;
    }


    @Override
    public List<DataDictionary> getAppStatusList() {
        List<DataDictionary> list = null;
        try {
            list = devMapper.getAppStatusList();
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
        return list;
    }

    @Override
    public List<DataDictionary> getFlatformList() {
        List<DataDictionary> list = null;
        try {
            list = devMapper.getFlatformList();
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
        return list;
    }

    @Override
    public List<AppCategory> queryCategoryLevel1(Integer level) {
        List<AppCategory> list = null;
        try {
            list = devMapper.queryCategoryLevel1(level);
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
        return list;
    }

    @Override
    public List<AppCategory> queryCategoryLevel2(Integer queryCategoryLevel1) {
        List<AppCategory> list = null;
        try {
            list = devMapper.queryCategoryLevel2(queryCategoryLevel1);
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
        return list;
    }

    @Override
    public List<AppCategory> queryCategoryLevel3(Integer queryCategoryLevel2) {
        List<AppCategory> list = null;
        try {
            list = devMapper.queryCategoryLevel3(queryCategoryLevel2);
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
        return list;
    }

    @Override
    public String getAppStautsById(Integer id) {
        String valueName = null;
        try {
            valueName = devMapper.getAppStautsById(id);
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
        return valueName;
    }

    @Override
    public String getCategoryNameById(Integer id) {
        String categoryName = null;
        try {
            categoryName = devMapper.getCategoryNameById(id);
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
        return categoryName;
    }

    @Override
    public AppVersion getAppVersionById(Integer id) {
        AppVersion appVersion = null;
        try {
            appVersion = devMapper.getAppVersionById(id);
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
        return appVersion;
    }

    @Override
    public AppInfo getAppInfoByAPKName(String name) {
        AppInfo appInfo = null;
        try {
            appInfo = devMapper.getAppInfoByAPKName(name);
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
        return appInfo;
    }

    @Override
    public Boolean addAppInfo(AppInfo appInfo) {
        boolean flag = false;
        try {
            Integer add = devMapper.add(appInfo);
            if (add == 1){
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
        return flag;
    }
}
