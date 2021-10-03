package com.webBlog.model;

public class User {
    int id;
    String userName;
    String password;
    String infomation;
    String birthday;
    String photo;
    String avatar;

    public User() {
    }


    public User(int id, String userName, String password, String infomation, String birthday, String photo, String avatar) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.infomation = infomation;
        this.birthday = birthday;
        this.photo = photo;
        this.avatar = avatar;
    }
    public User(int id, String userName, String password, String infomation, String birthday, String photo) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.infomation = infomation;
        this.birthday = birthday;
        this.photo = photo;

    }


    public User(String userName, String password, String birthday, String photo, String avata) {
        this.userName = userName;
        this.password = password;
        this.birthday = birthday;
        this.photo = photo;
        this.avatar = avata;
    }

    public User(int id,String infomation,String photo) {
        this.id = id;
        this.infomation = infomation;
        this.photo = photo;
    }

    public User(String userName, String password) {
        this.userName = userName;
        this.password = password;
    }

    public User(int id, String userName, String infomation, String birthday, String photo) {
        this.id = id;
        this.userName = userName;
        this.infomation = infomation;
        this.birthday = birthday;
        this.photo = photo;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getInfomation() {
        return infomation;
    }

    public void setInfomation(String infomation) {
        this.infomation = infomation;
    }

    public String getBirthday() {
        return this.birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
}
