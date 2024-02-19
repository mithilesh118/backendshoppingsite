package back.com.myshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import back.com.myshop.entities.MasterProductSize;
@Repository
public interface MasterSizeRepository extends JpaRepository<MasterProductSize, Integer>{

}
