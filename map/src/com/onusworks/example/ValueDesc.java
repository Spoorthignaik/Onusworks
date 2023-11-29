package com.onusworks.example;

import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

public class ValueDesc {
	
public static void main(String[] args) {
	

	Map<String, Integer> ref = new HashMap<String, Integer>();
	ref.put("spoorthi", 200);
	ref.put("akshatha", 150);
	ref.put("bindu", 300);
	ref.put("vismaya", 480);

	ref.entrySet().stream()
	.sorted(Map.Entry.comparingByValue(Comparator.reverseOrder()))
	.forEach(System.out::println);
}
}