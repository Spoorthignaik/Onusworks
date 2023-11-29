package com.onusworks.first;

public class Override1 extends Override{
	
	public void start() {
		
		System.out.println("Override1 started...");
	}
	public static void main(String[] args) {
		
	
	Override1 ov=new Override1();
	ov.start();
	}
}
