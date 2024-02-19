package back.com.myshop.entities;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name="master_address")

public class MasterAddress {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer addressId;
	private String addressLine1;
	private String addressLine2;
	private String stateCode;
	private String districtCode;
	private String city;
	private String pincode;	
	private Integer status;
	
	private Date createdAt;
	private Date updatedAt;
	private String updatedBy;
	private String createdBy;
	
	

}
