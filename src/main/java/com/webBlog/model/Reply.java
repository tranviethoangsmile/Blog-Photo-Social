package com.webBlog.model;

public class Reply {
    int id;
    String conten;

    public Reply() {
    }

    public Reply(int id, String conten) {
        this.id = id;
        this.conten = conten;
    }

    public Reply(String comment) {
        this.conten = comment;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getConten() {
        return conten;
    }

    public void setConten(String conten) {
        this.conten = conten;
    }
}
