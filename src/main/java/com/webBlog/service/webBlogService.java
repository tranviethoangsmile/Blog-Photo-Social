package com.webBlog.service;

import com.webBlog.model.Conten;
import com.webBlog.model.Reply;
import com.webBlog.model.Report;
import com.webBlog.model.User;

import java.sql.SQLException;
import java.util.List;

public interface webBlogService {
    public User checkUser(String name) throws SQLException;
    public List<User> findAllUser () throws SQLException;
    public List<Conten> findAllConten();
    public void insertUser(User user) throws SQLException;
    public User selectUser(String name) throws SQLException;
    public boolean deleteUser(String name) throws SQLException;
    public boolean deleteConten(int id) throws SQLException;
    public boolean updateUser(User user) throws SQLException;
    public List <User> search (String valueSearch) throws SQLException;
    public User getInfoUser (String name) throws SQLException;
    public List <Conten> getConten() throws SQLException;
    public void insertConten (int id,String userName, String conten, String photo) throws SQLException;
    public List<Conten> findConten(int id);
    public boolean deleteContenUser(int id) throws SQLException;
    public Conten getContenEdit (int id)throws SQLException;
    public void updateConten (int id, String conten, String photo) throws SQLException;
    public void addReport (int user_id,String comment) throws SQLException;
    public List <Report> getReport () throws SQLException;
    public boolean deleteReport (int id) throws SQLException;
    public boolean replyReport (int user_id, String comment )throws SQLException;
    public List <Reply> getReply(int id) throws SQLException;
}
