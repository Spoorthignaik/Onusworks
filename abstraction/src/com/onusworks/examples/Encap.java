package com.onusworks.examples;

public class Encap {

	private String name;
	private long number;
	private String place;

	public String getName() { 
		// it is used to read the private data members
		return name;
	}

	public long getNumber() {
		return number;
	}

	public String getPlace() {
		return place;
	}

	public void setName(String name) { 
		// it is used to modify the private data members
		this.name = name;
	}

	public void setNumber(long number) {
		this.number = number;
	}

	public void setPlace(String place) {
		this.place = place;
	}

}
