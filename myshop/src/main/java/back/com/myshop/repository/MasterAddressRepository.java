package back.com.myshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import back.com.myshop.entities.MasterAddress;

@Repository
public interface MasterAddressRepository extends JpaRepository<MasterAddress, Integer>{

}
