package com.AllMobilize.test;

import com.AllMobilize.dao.UserInfoDao;
import com.AllMobilize.dao.impl.UserInfoDaoImpl;
import com.AllMobilize.pojo.User;
import org.junit.Test;

import java.util.Date;

public class UserTest {
    @Test
    public void test1(){
        UserInfoDao dao = new UserInfoDaoImpl();
        int result =dao.saveUser(new User(null,"Honey","123456","",new Date(),"","",null,null));
        System.out.println(result);
    }
}
