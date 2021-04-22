package com.example.CanteenService.Service;

import com.example.CanteenService.models.User;

public interface UserService {
    User createUser(User user);

    boolean checkUserExists(String username, String email);
}
