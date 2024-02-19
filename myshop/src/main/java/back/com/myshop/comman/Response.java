package back.com.myshop.comman;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

@JsonInclude(Include.NON_NULL)
public class Response {

	private int responseCode;
	private String responseDesc;
	private Object responseObject;
	
	public String getResponseDesc() {
		return responseDesc;
	}
	public Response setResponseDesc(String responseDesc) {
		this.responseDesc = responseDesc;
		return this;
	}
	public int getResponseCode() {
		return responseCode;
	}
	public Response setResponseCode(int responseCode) {
		this.responseCode = responseCode;
		return this;
	}
	public Object getResponseObject() {
		return responseObject;
	}
	public Response setResponseObject(Object responseObject) {
		this.responseObject = responseObject;
		return this;
	}
		
}
