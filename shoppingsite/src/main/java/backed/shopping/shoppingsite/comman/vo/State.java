package backed.shopping.shoppingsite.comman.vo;

import lombok.Data;

@Data
public class State {
	
	private String stateCode;
	private String stateName;
	
	public State(String stateCode, String stateName) {
		this.stateCode = stateCode;
		this.stateName = stateName;
	}


	public State() {
		super();
	}

	
}
