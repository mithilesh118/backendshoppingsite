package backed.shopping.shoppingsite.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import backed.shopping.shoppingsite.model.MasterStatus;
@Repository
public interface MasterStatusRepository extends JpaRepository<MasterStatus, Integer>{

}
