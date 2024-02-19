package backed.shopping.shoppingsite.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import backed.shopping.shoppingsite.model.SupplierDetails;
@Repository
public interface SupplierDetailsRepository extends JpaRepository<SupplierDetails, Integer>{

}
