package com.cn.hnust.service;

import com.cn.hnust.pojo.User;

import java.util.List;

public interface IUserService {

    public User getUserById(int userId);
    
    public void insertUser(User user);

    public List<User> select();


}
