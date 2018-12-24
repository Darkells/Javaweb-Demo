package domain;

public class Driver {
    //司机ID
    private String d_id;
    //用户名
    private String username;
    //用户密码
    private String password;
    //用户邮箱
    private String email;
    //用户手机
    private String phone;
    //用户头像url
    private String url;
    //用户状态
    private String staue;

    public String getStaue() {
        return staue;
    }

    public void setStaue(String staue) {
        this.staue = staue;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getD_id() {
        return d_id;
    }

    public void setD_id(String d_id) {
        this.d_id = d_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    //用户性别
    private String gender;
}
