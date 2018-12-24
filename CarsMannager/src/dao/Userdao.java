package dao;

import domain.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ArrayHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import utils.DataSouceutil;
import utils.MD5utils;

import java.sql.SQLException;
import java.util.List;

public class Userdao {
    //用户登录
    public User checklogin(String username, String password) throws SQLException {
        String sql = "select * from user where username=? and password=?";
        QueryRunner runner = new QueryRunner(DataSouceutil.getDataSource());
        return runner.query(sql, new BeanHandler<User>(User.class), username, password);
    }
    //用户注册
    //注册
    public void sturegister(User user) throws SQLException {
        /*Date registter = new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");*/
        String sql = "insert into user(username,password,gender,email,phone,role) values(?,?,?,?,?,?)";
        QueryRunner runner = new QueryRunner(DataSouceutil.getDataSource());
        int row = runner.update(sql, user.getUsername(), user.getPassword(),user.getGender(),
                user.getEmail(), user.getPhone(),"user"
        );
        if (row == 0) {
            throw new RuntimeException();
        }
    }



    //查询
    public boolean checkusername(String username) throws SQLException {
        String sql = "select * from user where username=?";
        QueryRunner runner = new QueryRunner(DataSouceutil.getDataSource());
        Object[] result = runner.query(sql, new ArrayHandler(), username);
        if (result == null) {
            return false;
        } else {
            return true;
        }
    }
    //修改密码
    public void updatepassword(User user) throws Exception{
        String sql = "update user set password = ? where uid = ?";
        QueryRunner runner = new QueryRunner(DataSouceutil.getDataSource());
        int num = runner.update(sql,new Object[]{user.getPassword(),user.getuid()});
        if (num == 0){
            throw new Exception("密码重复");
        }
    }


}
