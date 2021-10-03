package com.webBlog.model;

import java.sql.Date;

public class Conten {
    int id;
    int user_id;
    String userName;
    String conten;
    Date time;
    String photo;

    public Conten() {
    }

    public Conten(int id, int user_id, String userName, String conten, Date time, String photo) {
        this.id = id;
        this.user_id = user_id;
        this.userName = userName;
        this.conten = conten;
        this.time = time;
        this.photo = photo;
    }

    public Conten(int id, int user_id, String conten, Date time, String photo) {
        this.id = id;
        this.user_id = user_id;
        this.conten = conten;
        this.time = time;
        this.photo = photo;
    }

    public Conten(int id_conten, String conten, Date time, String photo) {
        this.id = id_conten;
        this.conten = conten;
        this.time = time;
        this.photo = photo;
    }

    public Conten(String conten, String photo) {
        this.conten = conten;
        this.photo = photo;
    }

    public Conten(int id, String contenEdit, String photo) {
        this.id = id;
        this.conten = contenEdit;
        this.photo = photo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getConten() {
        return conten;
    }

    public void setConten(String conten) {
        this.conten = conten;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
}
