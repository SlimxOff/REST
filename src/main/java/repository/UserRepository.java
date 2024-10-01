package repository;

import model.Authorities;
import org.springframework.stereotype.Repository;

import java.util.Arrays;
import java.util.List;

@Repository
public class UserRepository {
    public List<Authorities> getUserAuthorities(String user, String password) {
        if ("admin".equals(user) && "password".equals(password)) {
            return Arrays.asList(Authorities.READ, Authorities.WRITE, Authorities.DELETE);
        }
        return List.of();
    }
}