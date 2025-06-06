package com.example.usermanagement.dao;

import com.example.usermanagement.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    void insertUser(User user) throws SQLException;

    User selectUser(int id);

    List<User> selectAllUsers();

    boolean deleteUser(int id) throws SQLException;

    boolean updateUser(User user) throws SQLException;

    List<User> selectAllUsersSortedByName();

    List<User> selectUsersByCountry(String country);

    void insertUpdateWithoutTransaction();

    void addUserTransaction(User user, List<Integer> permission);
}
