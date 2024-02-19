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
@Table(name="master_colors")
public class MasterColors {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer colorId;
	private String name;
	private String description;
	private String htmlCode;
	private Integer productId;
	private Integer status;
	private Date createdAt;
	private Date updatedAt;
	private String updatedBy;
	private String createdBy;
	
	
}
