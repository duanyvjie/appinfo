package com.hisoft.appinfo.service.backenduser;

import com.hisoft.appinfo.pojo.BackendUser;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @program: MyProject
 * @description:
 * @author: dyj
 * @create: 2020-09-11 19:29:00
 **/
@Service
@Transactional
public interface BackendUserService {
    public BackendUser getBackebdUser(String userCode);
}
