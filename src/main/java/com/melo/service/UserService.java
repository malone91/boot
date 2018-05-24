package com.melo.service;

import com.melo.dao.UserRepository;
import com.melo.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 业务类逻辑
 * Created by Ablert
 * on 2018/5/23.
 * @author Ablert
 */
@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public User findUserByName(String name) {
        return userRepository.findUserByName(name);
    }
}
