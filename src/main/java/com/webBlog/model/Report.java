package com.webBlog.model;

import java.sql.Date;

public class Report {
    int id;
    int user_id;
    String conten;
    Date time;

    public Report() {
    }

    public Report(int id, int user_id, String conten, Date time) {
        this.id = id;
        this.user_id = user_id;
        this.conten = conten;
        this.time = time;
    }

    public Report(int id, int user_id, String report) {
        this.id = id;
        this.user_id = user_id;
        this.conten = report;
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
}
