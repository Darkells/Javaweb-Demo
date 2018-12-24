package service;

import dao.Driverdao;

import java.sql.SQLException;

public class adminservice {
    Driverdao driverdao = new Driverdao();
    public boolean fire(String username) throws SQLException {
        if (driverdao.FireDriver(username)){
            return true;
        }else{
            return false;
        }
    }
}
