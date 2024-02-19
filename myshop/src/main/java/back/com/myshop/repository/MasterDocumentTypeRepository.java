package back.com.myshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import back.com.myshop.entities.MasterDocumentType;
@Repository
public interface MasterDocumentTypeRepository extends JpaRepository<MasterDocumentType, Integer> {

}
