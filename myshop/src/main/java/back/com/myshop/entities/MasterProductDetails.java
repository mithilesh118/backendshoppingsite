package back.com.myshop.entities;

import java.util.Date;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name="master_product_details")
public class MasterProductDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer productId;
	private String productName;
	private String sku;
	private Integer supplierId;
	private Integer unitId;
	private Integer availableQauntity;
	private String reorderLevel;
	
//	private Integer pictureId;
//	private Integer colorId;
//	private Integer sizeId;
	
	private String ranking;
	private Integer status;
	private Date createdAt;
	private Date updatedAt;
	private String updatedBy;
	private String createdBy;
	

}
