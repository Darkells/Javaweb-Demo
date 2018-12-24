package service;

import dao.Orderdao;
import dao.Userdao;
import domain.Order;
import domain.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ArrayHandler;
import utils.DataSouceutil;
import utils.MD5utils;

import javax.security.auth.login.LoginException;
import java.sql.SQLException;
import java.util.List;

public class userservice {
    private Userdao dao = new Userdao();
    //登录
    public User login(String username, String userpassword) throws Exception {
        try {
            //根据登录时表单输入的用户名和密码，查找用户
            User user = dao.checklogin(username, userpassword);
            if (user != null) {
                if (username.equals(user.getUsername())) {
                    if (userpassword.equals(user.getPassword())){
                        return user;
                    }
                }
            }
            throw new Exception("用户名或密码错误");
        } catch (SQLException e) {
            e.printStackTrace();
            throw new Exception("登录失败");
        }
    }

    //注册
    public void sturegister(User user) throws Exception {
        // 调用dao完成注册操作
        try {
            if(dao.checkusername(user.getUsername()) == false){
                dao.sturegister(user);
            }else{
                throw new Exception("已存在用户名");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public boolean checkname(String username) throws Exception{
        return dao.checkusername(username);
    }

    public void updatapassword(User user) throws Exception{
        try {
            dao.updatepassword(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
