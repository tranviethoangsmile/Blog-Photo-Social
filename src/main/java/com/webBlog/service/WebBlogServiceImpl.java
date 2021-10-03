package com.webBlog.service;

import com.webBlog.model.Conten;
import com.webBlog.model.Reply;
import com.webBlog.model.Report;
import com.webBlog.model.User;


import java.io.ByteArrayOutputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

public class WebBlogServiceImpl implements webBlogService{
    static ResourceBundle mybundle = ResourceBundle.getBundle("db");
    private static String jdbcURL = mybundle.getString("url");
    private static String jdbcUsername = mybundle.getString("user");
    private static String jdbcPassword = mybundle.getString("password");

    private static final String SELECT_USER_SIGUP = "SELECT * FROM users WHERE userName = ?";
    private static final String  INSERT_USER = "CALL signup (?,?,?,?,?,?)";
    private static final String SELECT_USER = "SELECT * FROM login WHERE userName = ?";
    private static final String CHECK_USER = "SELECT COUNT(*) FROM login WHERE userName = ?";
    private static final String GET_INFO = "SELECT id,infomation,photo FROM users WHERE userName = ?;";
    private static final String GET_CONTEN = "SELECT conten,photo FROM conten;";
    private static final String INSERT_CONTEN = "INSERT INTO conten (user_id,userName,conten,time,photo)\n" +
            "VALUES (?,?,?,sysdate(),?)";
    private static final String SELECT_ALL_USER = "SELECT * FROM users WHERE NOT userName = ?";
    private static final String SELECT_ALL_CONTENT = "SELECT * FROM conten";
    private static final String CONTENT_OF_USER = "SELECT id,conten,time,photo FROM conten WHERE user_id = ?;";
    private static final String DELETE_USER = "DELETE FROM login WHERE login.userName LIKE ?;";
    private static final String DELETE_CONTEN = "DELETE FROM conten WHERE conten.id LIKE ?;";
    private static final String GET_CONTEN_EDIT = "SELECT id,conten,photo FROM conten WHERE conten.id = ?;";
    private static final String UPDATE_CONTENT = "UPDATE conten SET conten = ?, photo = ? WHERE id = ?";
    private static final String ADD_REPORT = "INSERT INTO report(user_id,comment) VALUES (?,?)";
    private static final String GET_ALL_REPORT = "SELECT * FROM report";
    private static final String DELETE_REPORT = "DELETE FROM report WHERE id = ?";
    private static final String REPLY_REPORT = "INSERT INTO reply (user_id,comment) VALUES (?,?);";
    private static final String GET_REPLY_OF_ID = "SELECT comment FROM reply WHERE user_id = ?";

    public WebBlogServiceImpl() {
    }
    protected static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName(mybundle.getString("driverName"));
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public User checkUser(String name) throws SQLException {
        User user = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_SIGUP);)
        {
            System.out.println(preparedStatement);
            preparedStatement.setString(1, name);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String userName = rs.getString("userName");
                String password = rs.getString("password");
                user = new User(userName,password);
            }
        }catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }

    @Override
    public List<User> findAllUser() throws SQLException {
        List<User> usersList = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USER);)
        {
            preparedStatement.setString(1,"admin@gmail.com");
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = Integer.parseInt(String.valueOf(rs.getInt("id")));
                String userName = rs.getString("userName");
                String infomation = rs.getString("infomation");
                String birthday = rs.getString("birthday");
                String photo = rs.getString("photo");
                usersList.add(new User(id, userName, infomation, birthday, photo));
            }
        }catch (SQLException e) {
            printSQLException(e);
        }

        return usersList;
    }

    @Override
    public List<Conten> findAllConten() {
        List<Conten> listConten = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CONTENT);)
        {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = Integer.parseInt(String.valueOf(rs.getInt("id")));
                int user_id =  Integer.parseInt(String.valueOf(rs.getInt("user_id")));
                String conten = rs.getString("conten");
                Date time = rs.getDate("time");
                String photo = rs.getString("photo");
                listConten.add(new Conten(id, user_id, conten, time, photo));
            }
        }catch (SQLException e) {
            printSQLException(e);
        }

        return listConten;
    }

    @Override
    public void insertUser(User user) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER);)
        {
            preparedStatement.setString(1,user.getUserName());
            preparedStatement.setString(2,user.getPassword());
            preparedStatement.setString(3,user.getInfomation());
            preparedStatement.setString(4,user.getBirthday());
            preparedStatement.setString(5,user.getPhoto());
            preparedStatement.setString(6,user.getAvatar());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();

        }
        catch (SQLException throwables)
        {
            throwables.printStackTrace();
        }

    }

    @Override
    public User selectUser(String name) throws SQLException {
        User user = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER);)
        {
            System.out.println(preparedStatement);
            preparedStatement.setString(1, name);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String userName = rs.getString("userName");
                String password = rs.getString("password");
                user = new User(userName,password);
            }
        }catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }

    @Override
    public boolean deleteUser(String userName) throws SQLException {
        boolean deleteUserName = true;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_USER);)
        {
            preparedStatement.setString(1, userName);
            System.out.println(preparedStatement);
            deleteUserName = preparedStatement.executeUpdate() > 0;
        }
        catch (SQLException e) {
            printSQLException(e);
        }

        return deleteUserName;
    }

    @Override
    public boolean deleteConten(int id) throws SQLException {
        boolean deleteConten = true;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_CONTEN);)
        {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            deleteConten = preparedStatement.executeUpdate() > 0;
        }
        catch (SQLException e) {
            printSQLException(e);
        }

        return deleteConten;
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return false;
    }

    @Override
    public List<User> search(String valueSearch) throws SQLException {
        return null;
    }

    @Override
    public User getInfoUser(String name) throws SQLException {
        User user = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(GET_INFO);)
        {
            System.out.println(preparedStatement);
            preparedStatement.setString(1, name);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String information = rs.getString("infomation");
                String photo = rs.getString("photo");
                user = new User(id,information,photo);
            }
        }catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }

    @Override
    public List <Conten> getConten() throws SQLException {
        List <Conten> listContenHome = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(GET_CONTEN);)
        {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String conten = rs.getString("conten");
                String photo = rs.getString("photo");
                listContenHome.add(new Conten(conten,photo));
            }
        }catch (SQLException e) {
            printSQLException(e);
        }

        return listContenHome;

    }

    @Override
    public void insertConten(int id,String username, String conten, String photo) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CONTEN);)
        {
            preparedStatement.setInt(1,id);
            preparedStatement.setString(2,username);
            preparedStatement.setString(3,conten);
            preparedStatement.setString(4,photo);
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        }catch (SQLException e) {
            printSQLException(e);
        }

    }

    @Override
    public List<Conten> findConten(int id) {
        List <Conten> listContenUserlist = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(CONTENT_OF_USER);)
        {
            preparedStatement.setInt(1,id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id_conten = Integer.parseInt(String.valueOf(rs.getInt("id")));
                String conten = rs.getString("conten");
                Date time = rs.getDate("time");
                String photo = rs.getString("photo");
                listContenUserlist.add(new Conten(id_conten,conten,time,photo));
            }
        }catch (SQLException e) {
            printSQLException(e);
        }

        return listContenUserlist;
    }

    @Override
    public boolean deleteContenUser(int id) throws SQLException {
        boolean deleteConten = true;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_CONTEN);)
        {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            deleteConten = preparedStatement.executeUpdate() > 0;
        }
        catch (SQLException e) {
            printSQLException(e);
        }

        return deleteConten;
    }

    @Override
    public Conten getContenEdit(int id) throws SQLException {
        Conten conten = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(GET_CONTEN_EDIT);)
        {
            preparedStatement.setInt(1,id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id_conten = Integer.parseInt(String.valueOf(rs.getInt("id")));
                String contenEdit = rs.getString("conten");
                String photo = rs.getString("photo");
                conten = new Conten(id,contenEdit, photo);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return conten;
    }

    @Override
    public void updateConten(int id, String conten, String photo) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CONTENT);)
        {
            preparedStatement.setString(1,conten);
            preparedStatement.setString(2,photo);
            preparedStatement.setInt(3,id);
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        }
        catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public void addReport(int user_id, String comment) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(ADD_REPORT);)
        {
            preparedStatement.setInt(1,user_id);
            preparedStatement.setString(2,comment);

            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        }
        catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public List<Report> getReport() throws SQLException {
        List <Report> reportList = new ArrayList<>();

        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(GET_ALL_REPORT);)
        {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = Integer.parseInt(String.valueOf(rs.getInt("id")));
                int user_id = Integer.parseInt(String.valueOf(rs.getInt("user_id")));
                String report = rs.getString("comment");
                reportList.add(new Report(id, user_id, report));
            }
        }catch (SQLException e) {
            printSQLException(e);
        }
        return reportList;
    }

    @Override
    public boolean deleteReport(int id) throws SQLException {
        boolean deleteReport = true;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_REPORT);)
        {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            deleteReport = preparedStatement.executeUpdate() > 0;
        }
        catch (SQLException e) {

            printSQLException(e);
        }

        return deleteReport;
    }

    @Override
    public boolean replyReport(int user_id, String comment) throws SQLException {
        boolean replyReport = true;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(REPLY_REPORT);)
        {
            preparedStatement.setInt(1,user_id);
            preparedStatement.setString(2,comment);

            System.out.println(preparedStatement);
            replyReport = preparedStatement.executeUpdate() > 0;
        }
        catch (SQLException e) {
            printSQLException(e);
        }
        return replyReport;
    }

    @Override
    public List<Reply> getReply(int id) throws SQLException {
        List <Reply> replyList = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(GET_REPLY_OF_ID))
        {
            preparedStatement.setInt(1,id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String comment = rs.getString("comment");
                replyList.add(new Reply(comment));
            }
        }catch (SQLException e) {
            printSQLException(e);
        }
        return replyList;
    }


    private void printSQLException(SQLException ex) {
            for (Throwable e : ex) {
                if (e instanceof SQLException) {
                    e.printStackTrace(System.err);
                    System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                    System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                    System.err.println("Message: " + e.getMessage());
                    Throwable t = ex.getCause();
                    while (t != null) {
                        System.out.println("Cause: " + t);
                        t = t.getCause();
                    }
                }
            }
        }
}
