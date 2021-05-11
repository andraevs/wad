package com.example.mvcproducts;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.crypto.password.StandardPasswordEncoder;

public class PasswordTests {
  static final String pass = "password";


  @Test
  void encoderExamples(){
    PasswordEncoder noop = NoOpPasswordEncoder.getInstance();
    System.out.println("Noop password: "+noop.encode(pass));

    PasswordEncoder sha = new StandardPasswordEncoder();
    System.out.println("Sha password: "+sha.encode(pass));
    System.out.println("Sha password: "+sha.encode(pass));
    Assertions.assertTrue(sha.matches(pass,sha.encode(pass)));

    PasswordEncoder bcrypt = new BCryptPasswordEncoder();
    System.out.println("Bcrypt password: "+bcrypt.encode(pass));

  }

}
