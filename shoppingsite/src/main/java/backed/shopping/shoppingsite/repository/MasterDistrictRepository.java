package backed.shopping.shoppingsite.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import backed.shopping.shoppingsite.model.MasterDistrict;
@Repository
public interface MasterDistrictRepository extends JpaRepository<MasterDistrict, String>{

}
