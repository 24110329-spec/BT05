package com.thanhthao.SPRINGBOOT.service;
import com.thanhthao.SPRINGBOOT.entity.Category;
import java.util.List;

public interface CategoryService {
    List<Category> findAll();
    Category findById(Long id);
    Category save(Category category);
    void deleteById(Long id);
    List<Category> search(String keyword);
}