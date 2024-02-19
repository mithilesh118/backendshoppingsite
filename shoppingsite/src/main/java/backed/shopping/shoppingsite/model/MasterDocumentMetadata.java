package backed.shopping.shoppingsite.model;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name="master_document_metadata")
public class MasterDocumentMetadata {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer productId;
	private String fileName;
	private String description;
	private String title;
	private Integer applicationId;
	private Integer documentType;
	private String contentType;
	private String fileExtension;
	private String docPath;
	
	private Integer status;
	private Date createdAt;
	private Date updatedAt;
	private String updatedBy;
	private String createdBy;
	
}
