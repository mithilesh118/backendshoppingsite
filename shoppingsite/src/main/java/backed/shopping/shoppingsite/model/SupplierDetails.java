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
@Table(name="supplier_Details")
public class SupplierDetails {
	

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer supplierId;
	private String companyName;
	private String firstName;
	private String lastName;
	private Integer addressId;
	private String email;
		
	private Integer status;
	private Date createdAt;
	private Date updatedAt;
	private String updatedBy;
	private String createdBy;
	

}
