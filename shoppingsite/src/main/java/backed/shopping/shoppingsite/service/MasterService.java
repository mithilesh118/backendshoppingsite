package backed.shopping.shoppingsite.service;

import java.util.List;

import backed.shopping.shoppingsite.model.MasterAddress;
import backed.shopping.shoppingsite.model.MasterDistrict;
import backed.shopping.shoppingsite.model.MasterState;

public interface MasterService {
	
	
	List<MasterState> getState();
	List<MasterDistrict> getDistrict(String stateCode);
	MasterAddress saveAddress(MasterAddress address); 

}
