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
@Table(name="master_district")
public class MasterDistrict {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String districtCode;
	private String districtName;
	
	private String stateCode;
	private Integer status;
	
	private Date createAt;
	private Date updatedAt;
	

}
