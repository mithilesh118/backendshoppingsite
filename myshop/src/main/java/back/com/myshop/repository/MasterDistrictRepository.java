package back.com.myshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import back.com.myshop.entities.MasterDistrict;
@Repository
public interface MasterDistrictRepository extends JpaRepository<MasterDistrict, String>{

}
