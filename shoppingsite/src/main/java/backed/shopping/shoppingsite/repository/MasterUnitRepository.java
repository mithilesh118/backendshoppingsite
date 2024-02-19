package backed.shopping.shoppingsite.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import backed.shopping.shoppingsite.model.MasterUnit;
@Repository
public interface MasterUnitRepository extends JpaRepository<MasterUnit, Integer>{

}
