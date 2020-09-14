package com.hisoft.appinfo.dao.backenduser;

import com.hisoft.appinfo.pojo.BackendUser;
import org.apache.ibatis.annotations.Param;

public interface BackendUserMapper {
    BackendUser getBackendUser(@Param("userCode") String userCode);
}
