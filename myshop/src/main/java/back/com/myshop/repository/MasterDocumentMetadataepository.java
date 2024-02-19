package back.com.myshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import back.com.myshop.entities.MasterDocumentMetadata;
@Repository
public interface MasterDocumentMetadataepository  extends JpaRepository<MasterDocumentMetadata, Integer>{

}
