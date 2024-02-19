package back.com.myshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import back.com.myshop.entities.MasterUnit;
@Repository
public interface MasterUnitRepository extends JpaRepository<MasterUnit, Integer>{

}
