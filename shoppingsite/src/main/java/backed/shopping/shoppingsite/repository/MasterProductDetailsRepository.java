package backed.shopping.shoppingsite.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import backed.shopping.shoppingsite.model.MasterProductDetails;
@Repository
public interface MasterProductDetailsRepository extends JpaRepository<MasterProductDetails, Integer>{

}
