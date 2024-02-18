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
@Table(name="master_picture")
public class MasterPicture {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer pictureId;
	private String description;
	private String titles;
	private String extension;
	private String picturePath;
	
	private Integer status;
	private Date createdAt;
	private Date updatedAt;
	private String updatedBy;
	private String createdBy;
	
}
