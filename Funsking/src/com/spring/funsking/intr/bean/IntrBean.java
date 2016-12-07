package com.spring.funsking.intr.bean;

public class IntrBean {

	public IntrBean(int size) {
		data = new int[size];
	}
	
	private String name;
	private int[] data;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int[] getData() {
		return data;
	}
	public void setData(int[] data) {
		this.data = data;
	}
}
