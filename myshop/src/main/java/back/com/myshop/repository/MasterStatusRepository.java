package back.com.myshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import back.com.myshop.entities.MasterStatus;
@Repository
public interface MasterStatusRepository extends JpaRepository<MasterStatus, Integer>{

}
