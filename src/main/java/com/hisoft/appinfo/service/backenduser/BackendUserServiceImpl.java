package com.hisoft.appinfo.service.backenduser;

import com.hisoft.appinfo.dao.backenduser.BackendUserMapper;
import com.hisoft.appinfo.pojo.BackendUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @program: MyProject
 * @description:
 * @author: dyj
 * @create: 2020-09-11 19:30:11
 **/
@Service
@Transactional
public class BackendUserServiceImpl implements BackendUserService {
    @Autowired
    BackendUserMapper backendUserMapper;
    @Override
    public BackendUser getBackebdUser(String userCode) {
        BackendUser user = null;
        try {
            user = backendUserMapper.getBackendUser(userCode);
        } catch (Exception e) {
            e.printStackTrace();
            throw e;
        }
        return user;
    }
}
