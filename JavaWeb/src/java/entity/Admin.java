/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author PC
 */
public class Admin {

    private int id;
    private String avatar;
    private String name;
    private String username;
    private String password;

    public Admin() {
    }

    public Admin(int id, String avatar, String name, String username, String password) {
        this.id = id;
        this.avatar = avatar;
        this.name = name;
        this.username = username;
        this.password = password;
    }

    public Admin(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public Admin(String avatar, String name, String username, String password) {

        this.avatar = avatar;
        this.name = name;
        this.username = username;
        this.password = password;
    }

    public Admin(int id, String avatar, String name, String username) {
        this.id = id;
        this.avatar = avatar;
        this.name = name;
        this.username = username;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Admin{" + "id=" + id + ", avatar=" + avatar + ", name=" + name + ", username=" + username + ", password=" + password + '}';
    }

}
