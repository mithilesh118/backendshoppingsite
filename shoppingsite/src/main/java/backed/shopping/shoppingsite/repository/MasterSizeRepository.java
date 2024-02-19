package backed.shopping.shoppingsite.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import backed.shopping.shoppingsite.model.MasterProductSize;
@Repository
public interface MasterSizeRepository extends JpaRepository<MasterProductSize, Integer>{

}
