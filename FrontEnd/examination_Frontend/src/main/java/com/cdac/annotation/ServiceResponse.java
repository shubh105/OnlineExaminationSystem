package com.cdac.annotation;

public class ServiceResponse {

	private String Status;
	public ServiceResponse(String status) {
		super();
		Status = status;
		
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	@Override
	public String toString() {
		return "ServiceResponse [Status=" + Status + "]";
	}
	
}