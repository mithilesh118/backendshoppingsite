package backed.shopping.shoppingsite.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import backed.shopping.shoppingsite.model.MasterDocumentMetadata;
@Repository
public interface MasterDocumentMetadataepository  extends JpaRepository<MasterDocumentMetadata, Integer>{

}
