package backed.shoping.shoppingsite.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import backed.shoping.shoppingsite.model.MasterAddress;

@Repository
public interface MasterAddressRepository extends JpaRepository<MasterAddress, Integer>{

}
