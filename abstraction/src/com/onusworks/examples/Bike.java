package com.onusworks.examples;

public abstract class Bike {
	
	public Bike() {
		System.out.println("created Bike");
	}
	
	abstract void run();
	
	public void changeGear() {
		System.out.println("created change gear");
	}

}
