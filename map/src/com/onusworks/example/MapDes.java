package com.onusworks.example;

import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;


public class MapDes {

	public static void main(String[] args) {

		Map<String, Integer> ref = new HashMap<String, Integer>();
		ref.put("spoorthi", 200);
		ref.put("akshatha", 150);
		ref.put("bindu", 300);
		ref.put("vismaya", 480);
		ref.put("spoorthi", 200);  //does'nt allows duplicate value
		ref.put("sandhya", null);
		ref.put("jeevika", null);

		

		ref.entrySet()
		.stream()
				// Sorted according to the provided Comparator
		.sorted(Map.Entry.comparingByKey(Comparator.reverseOrder()))
				// Performs an action for each element of this stream
		.forEach(System.out::println);
		
	
	}
}
