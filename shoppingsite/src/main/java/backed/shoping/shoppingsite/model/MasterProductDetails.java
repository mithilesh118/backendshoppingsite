package backed.shoping.shoppingsite.model;

import java.util.Date;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name="master_product_Details")
public class MasterProductDetails {

	private Integer productId;
	private String productName;
	private String sku;
	
	private Integer supplierId;
	private Integer unitId;
	private Integer availableQauntity;
	private String reorderLevel;
	private List<Integer> pictureId;
	private List<Integer> colorId;
	private List<Integer> sizeId;
	private String ranking;
	
	private Integer status;
	private Date createdAt;
	private Date updatedAt;
	private String updatedBy;
	private String createdBy;
	

}
