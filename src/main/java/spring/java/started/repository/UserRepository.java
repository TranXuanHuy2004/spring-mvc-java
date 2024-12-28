package spring.java.started.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import spring.java.started.domain.User;
import java.util.List;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
    User save(User user);

    List<User> findByEmail(String email);

    User findById(long id);

    void deleteById(long id);

}
