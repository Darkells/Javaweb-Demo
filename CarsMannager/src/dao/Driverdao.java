package dao;

import domain.Driver;
import domain.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ArrayHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import utils.DataSouceutil;

import java.sql.SQLException;
import java.util.List;

public class Driverdao {
    public void Derregister(Driver driver) throws SQLException {
        /*Date registter = new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");*/
        String sql1 = "insert into driver(username,password,gender,email,phone) values(?,?,?,?,?)";
        QueryRunner runner = new QueryRunner(DataSouceutil.getDataSource());
        int row = runner.update(sql1, driver.getUsername(), driver.getPassword(),driver.getGender(),
                driver.getEmail(), driver.getPhone()
        );
        if (row == 0) {
            throw new RuntimeException();
        }
    }
    //检查用户名
    public boolean checkusername(String username) throws SQLException {
        String sql = "select * from driver where username=?";
        QueryRunner runner = new QueryRunner(DataSouceutil.getDataSource());
        Object[] result = runner.query(sql, new ArrayHandler(), username);
        if (result == null) {
            return false;
        } else {
            return true;
        }
    }
    //登录
    public Driver checklogin(String username, String password) throws SQLException {
        String sql = "select * from driver where username=? and password=?";
        QueryRunner runner = new QueryRunner(DataSouceutil.getDataSource());
        return runner.query(sql, new BeanHandler<Driver>(Driver.class), username, password);
    }

    public void updatepassword(String username,String password) throws Exception {
        String sql = "update driver set password = ? where username = ?";
        QueryRunner runner = new QueryRunner(DataSouceutil.getDataSource());
        int num = runner.update(sql,new Object[]{password,username});
        if (num == 0){
            throw new Exception("密码重复");
        }
    }

    public void Derupdate(Driver driver) throws Exception {
        String sql = "update driver set phone = ?,email = ? where username = ?";
        QueryRunner runner = new QueryRunner(DataSouceutil.getDataSource());
        int num = runner.update(sql,new Object[]{driver.getPhone(),driver.getEmail(),driver.getUsername()});
        if (num == 0){
            throw new RuntimeException();
        }
    }
    //遍历司机列表
    public List<Driver> FindDrivers() throws SQLException{
        String sql = "select * from driver";
        QueryRunner runner = new QueryRunner(DataSouceutil.getDataSource());
        List<Driver> drivers = runner.query(sql,new BeanListHandler<Driver>(Driver.class));
        return drivers;
    }
    //写入url
    public void write(String URL,String d_id) throws SQLException{
        String sql = "update driver set url = ? where d_id = ?";
        QueryRunner runner = new QueryRunner(DataSouceutil.getDataSource());
        int num = runner.update(sql,new Object[]{URL,d_id});
        if (num == 0){
            throw new RuntimeException();
        }
    }

    //解雇司机
    public boolean FireDriver(String username) throws SQLException{
        String sql = "delete from driver where username = ?";
        QueryRunner runner = new QueryRunner(DataSouceutil.getDataSource());
        int num = runner.update(sql,new Object[]{username});
        if (num != 0){
            return true;
        }else{
            return false;
        }
    }

    public boolean activeDriver(Driver driver) throws SQLException{
        String sql = "update driver set staue = ? where d_id = ?";
        QueryRunner queryRunner = new QueryRunner(DataSouceutil.getDataSource());
        int num = queryRunner.update(sql,new Object[]{driver.getStaue(),driver.getD_id()});
        if (num != 0){
            return  true;
        }else {
            return false;
        }
    }

}
