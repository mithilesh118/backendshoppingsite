package back.com.myshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import back.com.myshop.entities.MasterProductDetails;
@Repository
public interface MasterProductDetailsRepository extends JpaRepository<MasterProductDetails, Integer>{

}
