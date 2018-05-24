package com.melo.dao;

import com.melo.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * 基于JPA，实现DAO层，操作数据库
 * 例如CrudRepositoty提供了对增删改查操作的实现，
 * PagingAndSortingRepository提供了分页查询方法的实现
 * Created by Ablert
 * on 2018/5/23.
 * @author Ablert
 */
@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    /**
     *只需继承上述JPA提供的某个接口，即可自动继承相关数据操作方法
     * @param name
     * @return
     */
    @Query("select u from User u where u.name = :name")
    User findUserByName(@Param(value = "name") String name);
}
