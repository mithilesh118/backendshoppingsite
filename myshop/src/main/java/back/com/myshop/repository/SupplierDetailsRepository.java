package back.com.myshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import back.com.myshop.entities.SupplierDetails;
@Repository
public interface SupplierDetailsRepository extends JpaRepository<SupplierDetails, Integer>{

}
