package service;

import dao.Orderdao;
import domain.Driver;
import domain.Order;
import domain.User;

import java.util.List;

public class orderservice {
    private Orderdao orderdao = new Orderdao();
    //获取订单列表
    public List<Order> getOrders(Driver driver) throws Exception{
        List<Order> orders = orderdao.getorders(driver.getD_id());
        return orders;
    }
    //用户预约校车
    public void bookcar(Order order) throws Exception{
        orderdao.downOrders(order);
    }
}
