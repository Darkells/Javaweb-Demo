package web.client.servlet;

import domain.User;
import org.apache.commons.beanutils.BeanUtils;
import service.userservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;
//这是用于司机更新信息用的
@WebServlet("/DerUpdateServlet")
public class DerUpdateServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            User user = new User();
            User loginuser = (User) request.getAttribute("user");
            Map<String, String[]> map = request.getParameterMap();
            BeanUtils.populate(user, map);
            System.out.println(loginuser.getUsername());
        /*user.setUsername(loginuser.getUsername());
        userservice service = new userservice();
        service.DerUpdate(user);*/
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
    }
}
