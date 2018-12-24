package service;

import dao.Driverdao;
import domain.Driver;
import domain.User;

import java.sql.SQLException;
import java.util.List;

public class driverservice {
    Driverdao dao = new Driverdao();
    public void Derregister(Driver driver) throws Exception{
        // 调用dao完成注册操作
        try {
            if(dao.checkusername(driver.getUsername()) == false){
                dao.Derregister(driver);
            }else{
                throw new Exception("已存在用户名");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void DerUpdatepassword(String username,String password) throws Exception{
        try {
            dao.updatepassword(username,password);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new Exception("密码重复");
        }
    }

    //获取司机列表
    public List<Driver> FindDriver() throws Exception{
        List<Driver> drivers = dao.FindDrivers();
        return drivers;
    }

    public Driver login(String username, String userpassword) throws Exception {
        try {
            //根据登录时表单输入的用户名和密码，查找用户
            Driver driver = dao.checklogin(username, userpassword);
            if (driver != null) {
                if (username.equals(driver.getUsername())) {
                    if (userpassword.equals(driver.getPassword())){
                        return driver;
                    }
                }
            }
            throw new Exception("用户名或密码错误");
        } catch (SQLException e) {
            e.printStackTrace();
            throw new Exception("登录失败");
        }
    }
    //写入url
    public void writeurl(String URL,String d_id){
        try {
            dao.write(URL,d_id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
