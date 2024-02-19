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
@Table(name="master_document_type")
public class MasterDocumentType {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer docCode;
	private String description;
	private String requiredType;
	private String userFor;
	
	private Integer status;
	private Date createdAt;
	private Date updatedAt;
	private String updatedBy;
	private String createdBy;

}
