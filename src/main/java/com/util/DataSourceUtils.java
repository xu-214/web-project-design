package com.util;

import com.entity.New;

import javax.annotation.Resource;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

@WebListener
public class DataSourceUtils implements ServletContextListener {
    @Resource(name = "jdbc/MySQL")
    private static DataSource dSource;
    public static Connection getConnection() throws SQLException {
        return dSource.getConnection();
    }
}