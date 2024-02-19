package back.com.myshop.service;

import java.util.List;

import back.com.myshop.entities.MasterAddress;
import back.com.myshop.entities.MasterDistrict;
import back.com.myshop.entities.MasterState;

public interface MasterService {
	
	
	List<MasterState> getState();
	List<MasterDistrict> getDistrict(String stateCode);
	MasterAddress saveAddress(MasterAddress address); 

}
