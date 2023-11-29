package com.onusworks.first.boot;

import com.onusworks.first.Pen;

public class Pencil extends Pen {

	public int weight = 32;

	public static void main(String[] args) {

		Pencil pencil = new Pencil();

		System.out.println("price of the pen is : " + pencil.price);
		System.out.println("weight f the pencil is : " + pencil.weight);
		pencil.write();

	}

}
