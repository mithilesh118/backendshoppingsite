package back.com.myshop.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import back.com.myshop.comman.Response;
import back.com.myshop.config.Constants;
import back.com.myshop.entities.MasterState;
import back.com.myshop.service.MasterService;

@RestController
@RequestMapping(Constants.CONT_MASTER)
public class MasterController {
	
	@Autowired
	private MasterService masterService;
	
	@GetMapping(Constants.GET_STATE_LIST)
	public Response getStateList() {
		List<MasterState> state=masterService.getState();
		return new Response().setResponseCode(Constants.SUCCESS).setResponseDesc(Constants.SUCCESS_STR).setResponseObject(state);
	}
	
	

}
