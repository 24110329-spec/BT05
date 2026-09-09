package com.thanhthao.SPRINGBOOT.init;
import com.thanhthao.SPRINGBOOT.entity.User;
import com.thanhthao.SPRINGBOOT.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class DataInitializer implements CommandLineRunner {

    @Autowired
    private UserService userService;

    @Override
    public void run(String... args) {
        if (userService.findByUsername("admin") == null) {
            User admin = new User();
            admin.setUsername("admin");
            admin.setPassword("admin123");
            admin.setFullname("Administrator");
            admin.setEmail("admin@example.com");
            admin.setRole("ADMIN");
            userService.save(admin);
            System.out.println("Đã tạo tài khoản admin mặc định: username=admin, password=admin123");
        }
    }
}