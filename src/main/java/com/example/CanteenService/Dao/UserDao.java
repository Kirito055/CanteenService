package com.example.CanteenService.Dao;
import com.example.CanteenService.models.User;
import org.springframework.data.repository.CrudRepository;

public interface UserDao extends CrudRepository<User,Long>{

    User findByUsername(String username);
    User findByEmail(String email);
}
