/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dbcontext.DBUtil;
import entity.Admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author PC
 */
public class AdminDao {


    public boolean login(Admin user) {
        DBUtil db = DBUtil.getInstance();
        String sql = "select * from Admin where username=? and password=?";

        Connection con = null;
        try {
            con = db.getConnection();

            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, user.getUsername().trim());
            statement.setString(2, user.getPassword().trim());
            ResultSet rs = statement.executeQuery();

            if (rs.next()) {
                System.out.println("Success");
                return true;
            }

        } catch (Exception ex) {
            Logger.getLogger(AdminDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                DBUtil.closeConnection(con);
            } catch (SQLException ex) {
                Logger.getLogger(AdminDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return false;
    }

    public boolean registerUser(Admin user) {
        DBUtil db = DBUtil.getInstance();
        String sql = "INSERT INTO Admin (avatar, name, username, password)\n"
                + "VALUES (?,?,?,?);";

        Connection con = null;
        try {
            con = db.getConnection();
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, user.getAvatar());
            statement.setString(2, user.getName());
            statement.setString(3, user.getUsername());
            statement.setString(4, (String) user.getPassword());
            int rs = statement.executeUpdate();
            if (rs == 1) {
                System.out.println("success");
                return true;
            }

        } catch (Exception ex) {
            Logger.getLogger(AdminDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                DBUtil.closeConnection(con);
            } catch (SQLException ex) {
                Logger.getLogger(AdminDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return false;
    }

    public String getAmin(int i) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
