package web.client.servlet;

import domain.Driver;
import org.apache.commons.beanutils.BeanUtils;
import service.driverservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet("/DerRegisterServlet")
public class DerRegisterServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Driver driver = new Driver();
            Map<String, String[]> map = request.getParameterMap();
            BeanUtils.populate(driver, map);
            driverservice service = new driverservice();
            service.Derregister(driver);
            request.getSession().setAttribute("driver", driver);
            response.getWriter().write("success");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("fail");
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

}
