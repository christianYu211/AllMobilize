package com.AllMobilize.test;

import com.AllMobilize.dao.AdminDao;
import com.AllMobilize.dao.impl.AdminDaoImpl;
import org.junit.Test;


class AdminDaoTest {
    @Test
    void queryAdminByUsername() {
        AdminDao ad = new AdminDaoImpl();
        System.out.println(ad.queryAdminByAdminname("admin"));
    }

    @Test
    void queryAdminByUsernameAndPassword() {

    }
    @Test
    public void add(){
        System.out.println("hello");
    }
}