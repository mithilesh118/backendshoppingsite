package backed.shoping.shoppingsite.model;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name="master_state")
public class MasterState {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String stateCode;
	private String stateName;
	private String stateOrUt;
	private Integer status;
	
	private Date createAt;
	private Date updatedAt;
	
		
}
