package com.onusworks.examples.boot;

import com.onusworks.examples.Encap;

public class EncapRunner {
	
	public static void main(String[] args) {
		
		
		Encap ref=new Encap();
		ref.setName("Spoorthi");
		ref.setNumber(456454L);
		ref.setPlace("shivamogga");
		System.out.println("Name : "+ref.getName());
		System.out.println("Number:"+ref.getNumber());
		System.out.println("Place : "+ref.getPlace());

	}

}
