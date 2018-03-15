package org.blog.dto;
/**
 * ·â×°json½á¹û
 * @author Rover
 *
 * @param <T>
 */
public class BlogResult<T> {
	
	private boolean success;
	
	private T data;
	
	private String error;

	public BlogResult(boolean success, T data) {
		super();
		this.success = success;
		this.data = data;
	}

	public BlogResult(boolean success, String error) {
		super();
		this.success = success;
		this.error = error;
	}

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}
	
	
}
