package com.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl {
    @Autowired
    UserDAO userDao;
    public UserVO getUser(UserVO vo){
        return userDao.getUser(vo);
    }
}
