package com.hisoft.appinfo.controller;

import com.hisoft.appinfo.dao.backenduser.BackendUserMapper;
import com.hisoft.appinfo.pojo.*;
import com.hisoft.appinfo.service.backenduser.BackendUserService;
import com.hisoft.appinfo.service.devuser.DevUserService;
import com.hisoft.appinfo.tools.Constants;
import com.hisoft.appinfo.tools.PageSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @program: MyProject
 * @description:
 * @author: dyj
 * @create: 2020-09-11 19:15:05
 **/
@Controller
@RequestMapping("/backend")
public class BackendController {
    @Autowired
    BackendUserService backendUserService;
    @Autowired
    DevUserService devUserService;

    @RequestMapping("/login")
    public String tomanagerlogin(){
        return "backend_login";
    }

    @RequestMapping("/tomain")
    public String tomain(){
        return "backend_main";
    }

    @RequestMapping("/dologin")
    public String dologin(@RequestParam("userCode") String userCode,
                          @RequestParam("userPassword") String userPassword,
                          HttpSession session, Model model){
        BackendUser backendUser = backendUserService.getBackebdUser(userCode);
        if (null != backendUser) {//登录成功
            if (!backendUser.getUserPassword().equals(userPassword)) {
                model.addAttribute("message","密码输入错误");
                return "redirect:/backend/login";
            }
            session.setAttribute(Constants.USER_BACKEND_SESSION, backendUser);
            return "redirect:/backend/tomain";
        } else {
            model.addAttribute("message","用户名不存在");
            return "redirect:/backend/login";
        }
    }

    @RequestMapping("/dologout")
    public String dologout(HttpSession session){
        session.removeAttribute(Constants.USER_BACKEND_SESSION);
        return "redirect:/backend/login";
    }
    @RequestMapping("/toBackendApplist")
    public String toBackendApplist(@ModelAttribute("appInfo") AppInfo appInfo, Model model,
                               @RequestParam(value = "pageIndex", defaultValue = "1") Integer currentPageNo,
                               @RequestParam(value = "querySoftwareName",defaultValue = "") String querySoftwareName,
                               @RequestParam(value = "queryFlatformId",defaultValue = "0") Integer queryFlatformId,
                               @RequestParam(value = "queryCategoryLevel1",defaultValue = "0") Integer queryCategoryLevel1,
                               @RequestParam(value = "queryCategoryLevel2",defaultValue = "0") Integer queryCategoryLevel2,
                               @RequestParam(value = "queryCategoryLevel3",defaultValue = "0") Integer queryCategoryLevel3){
        List<AppInfo> appInfoList = null;
        int pageSize = Constants.pageSize;
        int totalCount = devUserService.getBackendAppinfoList(querySoftwareName,queryFlatformId,queryCategoryLevel1,queryCategoryLevel2,queryCategoryLevel3,0,0).size();
        PageSupport page = new PageSupport();
        page.setCurrentPageNo(currentPageNo);
        page.setPageSize(pageSize);
        page.setTotalCount(totalCount);

        int totalPageCount = page.getTotalPageCount();
        if (currentPageNo < 1) {
            currentPageNo = 1;
        } else if (currentPageNo > totalPageCount) {
            currentPageNo = totalPageCount;
        }

        appInfoList = devUserService.getBackendAppinfoList(querySoftwareName,queryFlatformId,queryCategoryLevel1,queryCategoryLevel2,queryCategoryLevel3,currentPageNo,pageSize);
        for (AppInfo info : appInfoList) {
            info.setStatusName(devUserService.getAppStautsById( info.getStatus()));
            info.setCategoryLevel1Name(devUserService.getCategoryNameById(info.getCategoryLevel1()));
            info.setCategoryLevel2Name(devUserService.getCategoryNameById(info.getCategoryLevel2()));
            info.setCategoryLevel3Name(devUserService.getCategoryNameById(info.getCategoryLevel3()));
            if (info.getVersionId()!=null){
                info.setAppNewVersionName(devUserService.getAppVersionById(info.getVersionId()).getVersionNo());
            }
        }


        List<DataDictionary> appStatusList = devUserService.getAppStatusList();
        List<DataDictionary> flatformList = devUserService.getFlatformList();

        model.addAttribute("flatformList",flatformList);
        model.addAttribute("appStatusList",appStatusList);

        model.addAttribute("appInfoList",appInfoList);

        model.addAttribute("querySoftwareName",querySoftwareName);
        model.addAttribute("queryFlatformId",queryFlatformId);
        model.addAttribute("queryCategoryLevel1",queryCategoryLevel1);
        model.addAttribute("queryCategoryLevel2",queryCategoryLevel2);
        model.addAttribute("queryCategoryLevel3",queryCategoryLevel3);


        model.addAttribute("totalPageCount", totalPageCount);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("currentPageNo", currentPageNo);
        return "backend_applist";
    }



    @RequestMapping("/check")
    public String check(@RequestParam("aid") Integer appinfoId,@RequestParam("vid") Integer versionId,Model model){
        if (appinfoId == null){
            model.addAttribute("checkError","该app信息不存在");
        }
        AppInfo info = devUserService.getAppInfoById(appinfoId);

        info.setStatusName(devUserService.getAppStautsById( info.getStatus()));
        info.setFlatformName(devUserService.getFlatformNameById(info.getFlatformId()));
        info.setCategoryLevel1Name(devUserService.getCategoryNameById(info.getCategoryLevel1()));
        info.setCategoryLevel2Name(devUserService.getCategoryNameById(info.getCategoryLevel2()));
        info.setCategoryLevel3Name(devUserService.getCategoryNameById(info.getCategoryLevel3()));
        if (info.getVersionId()!=null){
            info.setAppNewVersionName(devUserService.getAppVersionById(info.getVersionId()).getVersionNo());
        }

        model.addAttribute("appinfo",info);

        AppVersion appVersion = devUserService.getAppVersionById(versionId);
        appVersion.setPublishStatusName(devUserService.getPublishStatusById(appVersion.getPublishStatus()));

        model.addAttribute("appVersion",appVersion);
        return "backend_check";
    }

    @RequestMapping("checksave")
    public String checksave(@RequestParam("status") Integer status,@RequestParam("id") Integer appInfoId){
        Boolean update = devUserService.updateAppInfoStatus(appInfoId, status);
        if (update){
            return "redirect:/backend/toBackendApplist";
        }
       else {
            return "backend_check";
        }


    }
}
