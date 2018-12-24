package dao;

import domain.Order;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import utils.DataSouceutil;

import java.sql.SQLException;
import java.util.List;

public class Orderdao {
    //司机获取订单列表
    public List<Order> getorders(String d_id) throws SQLException{
        String sql = "select * from orders where d_id = ?";
        QueryRunner runner = new QueryRunner(DataSouceutil.getDataSource());
        List<Order> list = runner.query(sql,new BeanListHandler<Order>(Order.class),d_id);
        return list;
    }

    //用户预约校车订单
    public void downOrders(Order order) throws SQLException{
        String sql = "insert into orders(uid,d_id,start,end,s_time,e_time) values(?,?,?,?,?,?)";
        QueryRunner runner = new QueryRunner(DataSouceutil.getDataSource());
        int row = runner.update(sql, order.getUid(), order.getD_id(),order.getStart(),
                order.getEnd(), order.getS_time(),order.getE_time()
        );
        if (row == 0) {
            throw new RuntimeException();
        }
    }

    //用户获取订单列表
    public List<Order> Ugetorders(String uid) throws SQLException{
        String sql = "select * from orders where uid = ?";
        QueryRunner runner = new QueryRunner(DataSouceutil.getDataSource());
        List<Order> orders = runner.query(sql,new BeanListHandler<Order>(Order.class),uid);
        return orders;
    }

}
