package com.thanhthao.SPRINGBOOT.service;
import com.thanhthao.SPRINGBOOT.entity.User;
import java.util.List;

public interface UserService {
    List<User> findAll();
    User findById(Long id);
    User save(User user);
    void deleteById(Long id);
    List<User> search(String keyword);
    User findByUsername(String username);
}