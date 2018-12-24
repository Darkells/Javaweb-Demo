package utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;

public class DataSouceutil {
    private static DataSource dataSource = new ComboPooledDataSource();
    //从连接池里获取一个连接
    public static DataSource getDataSource() {
        return dataSource;
    }
}
