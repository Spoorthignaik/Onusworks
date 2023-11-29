package com.onusworks.example;

import java.util.ArrayList;

public class ArrayListExamp {
	
	public static void main(String[] args) {
		
		ArrayList<String> ref=new ArrayList<String>();
		ref.add("sahana");
		ref.add("akshatha");
		ref.add("vidya");
		
		 System.out.println("The size of the array is: " + ref.size()); 
		
		//REMOVE
		
		System.out.println("Removing the specified index");
		ref.remove(2);
		System.out.println(ref);
		
		
		 System.out.println("The size of the array is: " + ref.size());
		
		ArrayList<String>ref2=new ArrayList<String>();
		//before insertion
		System.out.println("Is ArrayList Empty: "+ref2.isEmpty());  
		ref2.add("shimoga");
		ref2.add("bangalore");
		
		ref2.remove("bangalore");
		
		ref.addAll(ref2);
		System.out.println("printing all the elements "+ref);
		
		//After insertion
		 System.out.println("Is ArrayList Empty: "+ref2.isEmpty());   
		 
		 System.out.println("The size of the array is: " + ref2.size());  
		
		
	}

}
