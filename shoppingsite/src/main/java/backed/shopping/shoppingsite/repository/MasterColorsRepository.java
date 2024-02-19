package backed.shopping.shoppingsite.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import backed.shopping.shoppingsite.model.MasterColors;
@Repository
public interface MasterColorsRepository extends JpaRepository<MasterColors, Integer>{

}
