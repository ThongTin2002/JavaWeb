/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dbcontext.DBUtil;
import entity.News;
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
public class NewsDao {

    public List<News> getAllNews() {
        List<News> sl = new ArrayList<>();
        DBUtil db = DBUtil.getInstance();
        String sql = "Select * from News";
        Connection con = null;
        try {
            con = db.getConnection();
            PreparedStatement statement = con.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String idAdmin = rs.getString(2);
                String des = rs.getString(3);
                String daySubmit = rs.getString(4);
                String title = rs.getString(5);
                String image = rs.getString(6);
                News news = new News(id, idAdmin, des, daySubmit, title, image);
                sl.add(news);
            }
            rs.close();
            statement.close();
            con.close();
        } catch (Exception ex) {
            Logger.getLogger(NewsDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sl;
    }

    public boolean addNews(News news) {
        DBUtil db = DBUtil.getInstance();
        String sql = "INSERT INTO News (idadmin, description, daysubmit, title,image)\n"
                + "VALUES (?,?,?,?,?);";

        Connection con = null;
        try {
            con = db.getConnection();
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, news.getIdAdmin());
            statement.setString(2, news.getDes());
            statement.setString(3, news.getDateSubmit());
            statement.setString(4, news.getTitle());
            statement.setString(5, news.getImage());
            int rs = statement.executeUpdate();
            if (rs == 1) {
                System.out.println("success");
                return true;
            }

        } catch (Exception ex) {
            Logger.getLogger(NewsDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                DBUtil.closeConnection(con);
            } catch (SQLException ex) {
                Logger.getLogger(NewsDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return false;
    }

    public void updateNews(News news) throws Exception {
        DBUtil db = DBUtil.getInstance();
        String sql = "UPDATE News \n"
                + "SET description=?, title=?, image=? \n"
                + "WHERE IDNews = ?;";

        Connection con = null;
        PreparedStatement statement = null;
        try {
            con = db.getConnection();
            statement = con.prepareStatement(sql);
            statement.setString(1, news.getDes());
            statement.setString(2, news.getTitle());
            statement.setString(3, news.getImage());
            statement.setInt(4, news.getId());
            statement.execute();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(NewsDao.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(NewsDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                statement.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(NewsDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public News getNews(String idd) {
        List<News> sl = new ArrayList<>();
        int id = Integer.parseInt(idd);
        DBUtil db = DBUtil.getInstance();

        News news = null;
        String sql = "Select * from News where idnews=?";
        Connection con = null;
        try {
            con = db.getConnection();
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                String IDAdmin = rs.getString(2);
                String des = rs.getString(3);
                String daySubmit = rs.getString(4);
                String title = rs.getString(5);
                String image = rs.getString(6);
                news = new News(id, IDAdmin, des, daySubmit, title, image);

            }
            rs.close();
            statement.close();
            con.close();

        } catch (Exception ex) {
            Logger.getLogger(NewsDao.class.getName()).log(Level.SEVERE,
                    null, ex);
        }
        return news;
    }

    public void deleteNews(String idd) throws Exception {
        String sql = "DELETE FROM News WHERE idnews =?";
        DBUtil db = DBUtil.getInstance();
        Connection con = null;
        PreparedStatement statement = null;
        try {
            con = db.getConnection();
            statement = con.prepareStatement(sql);
            int id = Integer.parseInt(idd);
            statement.setInt(1, id);
            statement.execute();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(NewsDao.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(NewsDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                statement.close();
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(NewsDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
