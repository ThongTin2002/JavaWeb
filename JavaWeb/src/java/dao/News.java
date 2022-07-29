/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

/**
 *
 * @author PC
 */
public class News {

    private int id;
    private String idAdmin;
    private String des;
    private String dateSubmit;
    private String title;
    private String image;

    public News() {
    }

    public News(int id, String idAdmin, String des, String dateSubmit, String title, String image) {
        this.id = id;
        this.idAdmin = idAdmin;
        this.des = des;
        this.dateSubmit = dateSubmit;
        this.title = title;
        this.image = image;
    }

    public News(String idAdmin, String des, String dateSubmit, String title, String image) {

        this.idAdmin = idAdmin;
        this.des = des;
        this.dateSubmit = dateSubmit;
        this.title = title;
        this.image = image;
    }

    public News(int id, String des, String title, String image) {
        this.id = id;
        this.des = des;
        this.title = title;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIdAdmin() {
        return idAdmin;
    }

    public void setIdAdmin(String idAdmin) {
        this.idAdmin = idAdmin;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getDateSubmit() {
        return dateSubmit;
    }

    public void setDateSubmit(String dateSubmit) {
        this.dateSubmit = dateSubmit;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "News{" + "id=" + id + ", idAdmin=" + idAdmin + ", des=" + des + ", dateSubmit=" + dateSubmit + ", title=" + title + ", image=" + image + '}';
    }

}
