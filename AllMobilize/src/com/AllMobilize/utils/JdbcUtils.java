package com.AllMobilize.utils;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

public class JdbcUtils {

    private static DruidDataSource dataSource;

    private static ThreadLocal<Connection> conns = new ThreadLocal<Connection>();

    static{
        Properties properties = null;
        try {
            properties = new Properties();
            //读取jdbc.properties属性配置文件
            InputStream inputStream = JdbcUtils.class.getClassLoader().getResourceAsStream("jdbc.properties");
            //从流中添加数据
            properties.load(inputStream);
            //常见数据库连接池
            dataSource = (DruidDataSource) DruidDataSourceFactory.createDataSource(properties);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 获取数据库连接池中的连接
     * @return 如果返回null，说明连接失败
     */
    public static Connection getConnection(){
        Connection connection = conns.get();
        if (connection == null){
            try {
                connection = dataSource.getConnection();
                conns.set(connection);  //保存到TreadLocal对象中，供后面的jdbc操作使用
//                connection.setAutoCommit(false);//设置手动管理事务
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return connection;
    }

    /**
     * 关闭连接，放回数据库连接池
     * @param connection
     */
    public static void closeConnection(Connection connection){
        if (connection != null){
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
