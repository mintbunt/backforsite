package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import bean.ReqisterBean;
import utils.DBconnection;

public class ReqisterDao {
    public String registerUser(ReqisterBean registerBean) {
        String email = registerBean.getEmail();
        String userName = registerBean.getUserName();
        String password = registerBean.getPassword();
        String role = "User";

        Connection con = null;
        PreparedStatement preparedStatement = null;
        try {
            con = DBconnection.createConnection();
            String query = "insert into registration(ID,Email,userName,password,role) values (NULL,?,?,?,?)"; //Insert user details into the table 'USERS'
            preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, userName);
            preparedStatement.setString(3, password);
            preparedStatement.setString(4, role);

            int i = preparedStatement.executeUpdate();

            if (i != 0)  //Just to ensure data has been inserted into the database
                return "SUCCESS";
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "Увы, что-то пошло не так!";  // On failure, send a message from here.
    }
}
