package back.com.myshop.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import back.com.myshop.config.Constants;
import back.com.myshop.entities.MasterAddress;
import back.com.myshop.entities.MasterDistrict;
import back.com.myshop.entities.MasterState;
import back.com.myshop.repository.MasterAddressRepository;
import back.com.myshop.repository.MasterDistrictRepository;
import back.com.myshop.repository.MasterStateRepository;
import back.com.myshop.service.MasterService;
@Service
public class MasterServiceImpl implements MasterService {
	
	@Autowired
	private MasterStateRepository masterStateRepository;
	
	@Autowired
	private MasterDistrictRepository districtRepository;
	
	@Autowired
	private MasterAddressRepository addressRepository;

	@Override
	public List<MasterState> getState() {
		
		Optional<List<MasterState>> state=masterStateRepository.findByStatus(Constants.ONE);
		if(state.isPresent()) {
			return state.get();
		}
		
		return null;
	}

	@Override
	public List<MasterDistrict> getDistrict(String stateCode) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MasterAddress saveAddress(MasterAddress address) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
 