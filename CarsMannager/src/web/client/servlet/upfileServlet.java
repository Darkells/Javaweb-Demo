package web.client.servlet;

import domain.Driver;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import service.driverservice;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@MultipartConfig
@WebServlet("/upfileServlet")
public class upfileServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            Driver driver = (Driver) session.getAttribute("driver");
            driverservice service = new driverservice();
            String tempPath = this.getServletContext().getRealPath("/tempPath");
            File tempFile = new File(tempPath);
            if (!tempFile.exists()) {
                tempFile.mkdir();
            }
            //1、创建一个DiskFielItemFactory工厂
            DiskFileItemFactory factory = new DiskFileItemFactory();
            //设置缓冲区大小
            factory.setSizeThreshold(1024 * 100);
            //设置临时文件路径
            factory.setRepository(tempFile);
            //2、创建一个文件上传解析器
            ServletFileUpload uploadparser = new ServletFileUpload(factory);
            //解决上传文件的中文乱码
            uploadparser.setHeaderEncoding("UTF-8");
            if (!ServletFileUpload.isMultipartContent(request)) {
                //不是表单数据
                return;
            }
            List<FileItem> list = uploadparser.parseRequest(request);
            for (FileItem fileitem : list) {
                if (fileitem.isFormField()) {
                    String name = fileitem.getFieldName();
                    String value = fileitem.getString("UTF-8");
                    System.out.println(name + " = " + value);
                } else {
                    String filename = fileitem.getName();
                    int index = filename.lastIndexOf(".");
                    String extention = filename.substring(index);
                    String URL = driver.getD_id() + extention;
                    System.out.println(filename);
                    if (filename == null || filename.trim().equals("")) {
                        continue;
                    }
                    //获取fileitem的上传文件的输入流
                    InputStream in = fileitem.getInputStream();
                    String path = this.getServletContext().getRealPath("/client/driver/upload/");
                    String url = path + "\\" + URL;
                    service.writeurl(URL,driver.getD_id());
                    //创建一个文件输出流
                    FileOutputStream out = new FileOutputStream(url);
                    //创建一个缓冲区
                    byte[] buffer = new byte[1024];
                    //判断输入流中的数据是否已经完全读完的标识
                    int len = 0;
                    while ((len = in.read(buffer)) > 0) {
                        out.write(buffer, 0, len);
                    }
                    in.close();
                    out.close();
                    //删除临时文件
                    fileitem.delete();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
