package com.hisoft.appinfo.controller;

import com.alibaba.fastjson.JSONArray;
import com.hisoft.appinfo.pojo.*;
import com.hisoft.appinfo.service.devuser.DevUserService;
import com.hisoft.appinfo.tools.Constants;
import com.hisoft.appinfo.tools.PageSupport;
import com.mysql.jdbc.StringUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.math.RandomUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.*;

/**
 * @program: MyProject
 * @description:
 * @author: dyj
 * @create: 2020-09-11 16:46:31
 **/
@Controller
@RequestMapping("/dev")
public class DevController {
    @Autowired
    DevUserService devUserService;

    @RequestMapping("/login")
    public String login(){
        System.out.println(devUserService);
        return "dev_login";
    }

    @RequestMapping("/tomain")
    public String tomain(){
        return "dev_main";
    }

    @RequestMapping("/dologin")
    public String dologin(@RequestParam("devCode")String devCode,
                          @RequestParam("devPassword") String devPassword, HttpSession session, Model model){
        DevUser devUser = devUserService.getLoginDevUser(devCode);
        if (null != devUser) {//登录成功
            if (!devUser.getDevPassword().equals(devPassword)) {
                model.addAttribute("message","密码输入错误");
                return "redirect:/dev/login";
            }
            session.setAttribute(Constants.USER_DEV_SESSION, devUser);
            return "redirect:/dev/tomain";
        } else {
            model.addAttribute("message","用户名不存在");
            return "redirect:/dev/login";
        }

    }

    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.removeAttribute(Constants.USER_DEV_SESSION);
        return "redirect:/dev/login";
    }

    @RequestMapping("/todev_applist")
    public String todevapplist(@ModelAttribute("appInfo") AppInfo appInfo, Model model,
                               @RequestParam(value = "pageIndex", defaultValue = "1") Integer currentPageNo,
                               @RequestParam(value = "querySoftwareName",defaultValue = "") String querySoftwareName,
                               @RequestParam(value = "queryStatus",defaultValue = "0") Integer queryStatus,
                               @RequestParam(value = "queryFlatformId",defaultValue = "0") Integer queryFlatformId,
                               @RequestParam(value = "queryCategoryLevel1",defaultValue = "0") Integer queryCategoryLevel1,
                               @RequestParam(value = "queryCategoryLevel2",defaultValue = "0") Integer queryCategoryLevel2,
                               @RequestParam(value = "queryCategoryLevel3",defaultValue = "0") Integer queryCategoryLevel3){
        List<AppInfo> appInfoList = null;
        int pageSize = Constants.pageSize;
        int totalCount = devUserService.getAppinfoList(querySoftwareName,queryStatus,queryFlatformId,queryCategoryLevel1,queryCategoryLevel2,queryCategoryLevel3,0,0).size();
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

        appInfoList = devUserService.getAppinfoList(querySoftwareName,queryStatus,queryFlatformId,queryCategoryLevel1,queryCategoryLevel2,queryCategoryLevel3,currentPageNo,pageSize);
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
        model.addAttribute("queryStatus",queryStatus);
        model.addAttribute("queryFlatformId",queryFlatformId);
        model.addAttribute("queryCategoryLevel1",queryCategoryLevel1);
        model.addAttribute("queryCategoryLevel2",queryCategoryLevel2);
        model.addAttribute("queryCategoryLevel3",queryCategoryLevel3);


        model.addAttribute("totalPageCount", totalPageCount);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("currentPageNo", currentPageNo);
        return "dev_applist";
    }

    @RequestMapping("/queryCategoryLevel1.json")
    @ResponseBody
    public String queryCategoryLevel1(@RequestParam(value = "pid",defaultValue = "0")  int level){
        List<AppCategory> list = devUserService.queryCategoryLevel1(level);
        return JSONArray.toJSONString(list);
    }
    @RequestMapping("/queryCategoryLevel2.json")
    @ResponseBody
    public String queryCategoryLevel2(@RequestParam(value = "pid",defaultValue = "0")  int queryCategoryLevel1){
        List<AppCategory> list = devUserService.queryCategoryLevel2(queryCategoryLevel1);
        return JSONArray.toJSONString(list);
    }
    @RequestMapping("/queryCategoryLevel3.json")
    @ResponseBody
    public String queryCategoryLevel3(@RequestParam(value = "pid",defaultValue = "0")  int queryCategoryLevel2){
        List<AppCategory> list = devUserService.queryCategoryLevel3(queryCategoryLevel2);
        return JSONArray.toJSONString(list);
    }
    @RequestMapping("/categorylevellist.json")
    @ResponseBody
    public String categorylevellist(@RequestParam("pid") Integer id){
        List<AppCategory> list = devUserService.queryCategoryLevel(id);
        return JSONArray.toJSONString(list);
    }

    @RequestMapping("/datadictionarylist.json")
    @ResponseBody
    public String getFlatformList(){
        List<DataDictionary> list = devUserService.getFlatformList();
        return JSONArray.toJSONString(list);
    }

    @RequestMapping("/apkexist.json")
    @ResponseBody
    public String apkexist(@RequestParam("APKName") String name){
        //判断用户账号是否可用
        HashMap<String, String> resultMap = new HashMap<String, String>();
        if(StringUtils.isNullOrEmpty(name)){
            resultMap.put("APKName", "empty");
        }
        else{
            AppInfo appInfoByAPKName = devUserService.getAppInfoByAPKName(name);
            if(null != appInfoByAPKName){
                resultMap.put("APKName","exist");
            }else{
                resultMap.put("APKName", "notexist");
            }
        }

        return JSONArray.toJSONString(resultMap);
    }

    @RequestMapping("/todev_add")
    public String todevaddversion(@ModelAttribute("appinfo")AppInfo appInfo){
        return "dev_add";
    }
    @RequestMapping("/appinfoaddsave")
    public String appinfoaddsave(@ModelAttribute("appinfo") @Validated AppInfo appInfo, BindingResult result,
                                 @RequestParam(value = "a_logoPicPath",required = false) MultipartFile logo,
                                 HttpSession session, Model model){

        if (result.hasErrors()){
            return "dev_add";
        }
        String logoPicPath = null;
        String logoLocPath = null;
        if (!logo.isEmpty()){
            String oldName = logo.getOriginalFilename();
            String ext = FilenameUtils.getExtension(oldName);
            Long size = logo.getSize();
            if (size>500*1024*1024){
                model.addAttribute("logoError","上传的文件不能超过50k");
                return "dev_add";
            }else {
                String[] types={"jpg","jpeg","png"};
                if (!Arrays.asList(types).contains(ext)){
                    model.addAttribute("logoError","上传文件的类型只能是jpg,jpeg,png");
                    return "dev_add";
                }
                else {
                    String targetPath = session.getServletContext().getRealPath("statics"+ File.separator+"upload");
                    String fileName = System.currentTimeMillis()+ RandomUtils.nextInt(100000)+"_logo."+ext;
                    File saveFile = new File(targetPath,fileName);
                    if (!saveFile.exists()){
                        saveFile.mkdirs();
                    }
                    try {
                        logo.transferTo(saveFile);
                    } catch (IOException e) {
                        e.printStackTrace();
                        model.addAttribute("workPicPathError","上传失败，请联系管理员");
                        return "dev_add";
                    }
                    logoLocPath = targetPath+File.separator+fileName;

                }
            }
        }

        appInfo.setCreatedBy(((DevUser)session.getAttribute(Constants.USER_DEV_SESSION)).getId());
        appInfo.setCreationDate(new Date());
        appInfo.setLogoLocPath(logoLocPath);

        if(devUserService.addAppInfo(appInfo)){
            return "redirect:/dev/todev_applist";
        }else{
            return "dev_add";
        }


    }

    @RequestMapping("/appinfomodify")
    public String appinfomodify(@RequestParam("id") Integer id,Model model){
        if (id != null){
            AppInfo appInfo = devUserService.getAppInfoById(id);
            appInfo.setStatusName(devUserService.getAppStautsById( appInfo.getStatus()));
            model.addAttribute("appinfo",appInfo);
            return "dev_modify";
        }else {
            throw new RuntimeException("app信息不存在");
        }
    }
    @RequestMapping("/appinfomodifysave")
    public String appinfomodifysave(@ModelAttribute("appinfo") @Validated AppInfo appInfo, BindingResult result,
                                    /*@RequestParam(value = "a_logoPicPath",required = false) MultipartFile logo,*/
                                    HttpSession session){

        appInfo.setModifyBy(((DevUser)session.getAttribute(Constants.USER_DEV_SESSION)).getId());
        appInfo.setModifyDate(new Date());

        Boolean modify = devUserService.modify(appInfo);
        if (modify){
            return "redirect:/dev/todev_applist";
        }else{
            return "dev_modify";
        }

    }

    @RequestMapping("/appversionadd")
    public String appversionadd(@RequestParam("id") Integer appId,Model model,@ModelAttribute("appVersion") AppVersion appVersion){
        List<AppVersion> appVersions = devUserService.getAppVersionByAppId(appId);
        for (AppVersion version : appVersions) {
            version.setPublishStatusName(devUserService.getPublishStatusById(version.getPublishStatus()));
        }
        model.addAttribute("appVersions",appVersions);
        model.addAttribute("appId",appId);
        return "dev_addversion";
    }

    @RequestMapping("/addversionsave")
    public String addversionsave(@ModelAttribute("appVersion") AppVersion appVersion,
                                 @RequestParam("appId") Integer appId,
                                 @RequestParam(value = "a_downloadLink") MultipartFile apkLink,
                                 Model model, HttpSession session){
        String apkLocPath = null;
        String oldName = null;
        if (apkLink!=null){
            oldName = apkLink.getOriginalFilename();
            String ext = FilenameUtils.getExtension(oldName);
            Long size =apkLink.getSize();
            if (size>500*1024*1024){
                model.addAttribute("apkLinkError","apk文件不能超过50k");
                return "dev_addversion";
            }else {
                if (!ext.equals("apk")){
                    model.addAttribute("apkLinkError","只能上传apk文件");
                    return "dev_addversion";
                }
                else {
                    String targetPath = session.getServletContext().getRealPath("statics"+ File.separator+"upload");
                    String fileName = System.currentTimeMillis()+ RandomUtils.nextInt(100000)+"_apk."+ext;
                    File saveFile = new File(targetPath,fileName);
                    if (!saveFile.exists()){
                        saveFile.mkdirs();
                    }
                    try {
                        apkLink.transferTo(saveFile);
                    } catch (IOException e) {
                        e.printStackTrace();
                        model.addAttribute("workPicPathError","上传失败，请联系管理员");
                        return "dev_add";
                    }
                    apkLocPath = targetPath+File.separator+fileName;

                }
            }
        }

       /* appVersion.setAppId(appId);*/
        appVersion.setApkFileName(oldName);
        appVersion.setApkLocPath(apkLocPath);
        appVersion.setDownloadLink(oldName);
        appVersion.setSoftwareName(devUserService.getAppInfoById(appId).getSoftwareName());
        appVersion.setCreatedBy(((DevUser)session.getAttribute(Constants.USER_DEV_SESSION)).getId());
        appVersion.setCreationDate(new Date());

        Boolean addVersion = devUserService.addVersion(appVersion);
        if (addVersion){
            Integer id = appVersion.getId();
            devUserService.modifyAppInfoVersionId(appId,id);
            return "redirect:/dev/todev_applist";
        }else {
            return "dev_addversion";
        }

    }

    @RequestMapping("/appview/{id}")
    public String appview(@PathVariable Integer id, Model model){
        if (id == null){
            model.addAttribute("viewError","该app信息不存在");
        }
        AppInfo info = devUserService.getAppInfoById(id);

            info.setStatusName(devUserService.getAppStautsById( info.getStatus()));
            info.setFlatformName(devUserService.getFlatformNameById(info.getFlatformId()));
            info.setCategoryLevel1Name(devUserService.getCategoryNameById(info.getCategoryLevel1()));
            info.setCategoryLevel2Name(devUserService.getCategoryNameById(info.getCategoryLevel2()));
            info.setCategoryLevel3Name(devUserService.getCategoryNameById(info.getCategoryLevel3()));
            if (info.getVersionId()!=null){
                info.setAppNewVersionName(devUserService.getAppVersionById(info.getVersionId()).getVersionNo());
            }

        model.addAttribute("appinfo",info);

        List<AppVersion> appVersions = devUserService.getAppVersionByAppId(id);
        for (AppVersion version : appVersions) {
            version.setPublishStatusName(devUserService.getPublishStatusById(version.getPublishStatus()));
        }
        model.addAttribute("appVersions",appVersions);
        return "dev_view";
    }

    @RequestMapping("/delapp.json")
    @ResponseBody
    public String delapp(@RequestParam("id")Integer id){
        HashMap<String, String> resultMap = new HashMap<String, String>();
        if(id <= 0){
            resultMap.put("delResult", "notexist");
        }else{
            /*if(devUserService.delAppInfo(id)&&devUserService.delAppVersion(id)){ */
            if(devUserService.delAppInfo(id)){
                if (devUserService.delAppVersion(id)){
                    resultMap.put("delResult", "true");
                }
            }else{
                resultMap.put("delResult", "false");
            }
        }
        return JSONArray.toJSONString(resultMap);
    }

    @RequestMapping("/{id}/sale.json")
    @ResponseBody
    public String salejson(@PathVariable("id") Integer id){
        HashMap<String, String> resultMap = new HashMap<String, String>();
        Integer status = devUserService.getAppInfoById(id).getStatus();
        Integer targetStatus = null;
        if (status==2||status==5){
            targetStatus=4;
        }if (status==4){
            targetStatus=5;
        }
        if(id <= 0){
            resultMap.put("errorCode", "param000001");
        }
        else{
            resultMap.put("errorCode", "0");
            Boolean update = devUserService.updateAppInfoStatus(id, targetStatus);
            if(update){
                resultMap.put("resultMsg", "success");
            }else{
                resultMap.put("resultMsg", "failed");
                resultMap.put("errorCode", "exception000001");
            }
        }
        return JSONArray.toJSONString(resultMap);
    }
}
