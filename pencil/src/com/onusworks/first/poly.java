package com.onusworks.first;

public class poly {

	void sum(int a, long b) {
		System.out.println(a + b);
	}

	void sum(int a, int b, int c) {
		System.out.println(a + b + c);
	}

	
	public static void main(String[] args) {
		poly p=new poly();
		p.sum(3, 5);
		p.sum(3,3,3);
	}
}
