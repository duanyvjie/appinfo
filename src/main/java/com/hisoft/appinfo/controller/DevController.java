package com.hisoft.appinfo.controller;

import com.alibaba.fastjson.JSONArray;
import com.hisoft.appinfo.pojo.AppCategory;
import com.hisoft.appinfo.pojo.AppInfo;
import com.hisoft.appinfo.pojo.DataDictionary;
import com.hisoft.appinfo.pojo.DevUser;
import com.hisoft.appinfo.service.devuser.DevUserService;
import com.hisoft.appinfo.tools.Constants;
import com.hisoft.appinfo.tools.PageSupport;
import com.mysql.jdbc.StringUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.math.RandomUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

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
    public String todevapplist(@ModelAttribute("appInfo") AppInfo appInfo,Model model,
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
    public String appinfoaddsave(@ModelAttribute("appinfo")AppInfo appInfo,
                                 @RequestParam(value = "a_logoPicPath",required = false) MultipartFile logo,
                                 HttpSession session, Model model){
        String logoPicPath = null;
        String logoLocPath = null;
        if (!logo.isEmpty()){
            String oldName = logo.getOriginalFilename();
            String ext = FilenameUtils.getExtension(oldName);
            Long size = logo.getSize();
            if (size>50*1024){
                model.addAttribute("logoError","上传的文件不能超过50k");
                return "dev_add";
            }else {
                String[] types={"jpg","jpeg","png"};
                if (!Arrays.asList().contains(ext)){
                    model.addAttribute("logoError","上传文件的类型只能是jpg,jpeg,png");
                    return "dev_add";
                }else {
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
            return "useradd";
        }


    }
}
