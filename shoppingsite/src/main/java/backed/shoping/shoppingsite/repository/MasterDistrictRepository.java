package backed.shoping.shoppingsite.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import backed.shoping.shoppingsite.model.MasterDistrict;

public interface MasterDistrictRepository extends JpaRepository<MasterDistrict, String>{

}
