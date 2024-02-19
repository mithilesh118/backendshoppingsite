package backed.shopping.shoppingsite.serviceimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import backed.shopping.shoppingsite.comman.Constants;
import backed.shopping.shoppingsite.model.MasterAddress;
import backed.shopping.shoppingsite.model.MasterDistrict;
import backed.shopping.shoppingsite.model.MasterState;
import backed.shopping.shoppingsite.repository.MasterAddressRepository;
import backed.shopping.shoppingsite.repository.MasterDistrictRepository;
import backed.shopping.shoppingsite.repository.MasterStateRepository;
import backed.shopping.shoppingsite.service.MasterService;
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
 