package backed.shopping.shoppingsite.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import backed.shopping.shoppingsite.model.MasterAddress;

@Repository
public interface MasterAddressRepository extends JpaRepository<MasterAddress, Integer>{

}
