package com.wy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBConnection {
    private Connection conn = null;  //定义连接的对象
    private Statement st = null;    //设置Statement类的对象
    private ResultSet rs = null;
    private String dbDriver = "com.mysql.cj.jdbc.Driver"; // 数据库的驱动
    private String url = "jdbc:mysql://127.0.0.1:3306/express_information_db?useUnicode=true&characterEncoding=utf8&autoReconnect=true"; // URL地址

    public JDBConnection() {
        try {
            Class.forName(dbDriver).newInstance(); // 加载数据库驱动
            conn = DriverManager.getConnection(url, "express_information", "n1XOOftSyBbqXBfC"); // 加载数据库
            System.out.println("加载成功");
        } catch (Exception ex) {
            System.out.println("数据库加载失败");
        }
    }

    public ResultSet executeQuery(String sql) {
        try {
            st = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            rs = st.executeQuery(sql);                        //执行对数据库的查询操作
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Query Exception");                //在控制台中输入异常信息
        }
        return rs;                  //将查询的结果通过return关键字返回
    }

    public boolean executeUpdata(String sql) {
        try {
            st = conn.createStatement();    //创建声明对象连接
            st.executeUpdate(sql);          //执行添加、修改、删除操作
            return true;                     //如果执行成功则返回true
        } catch (Exception e) {
            e.printStackTrace();
            return false;                           //如果执行成功则返回false
        }
    }

    public static class Test {
        public static void main(String[] args) {
            ResultSet rs1 = null;
            String sql = "select * from tb_Customer";
            JDBConnection op = new JDBConnection();
            rs1 = op.executeQuery(sql);
            if (rs1 != null) {
                System.out.println("1");
            } else {
                System.out.println("2");
            }
        }

    }

}
