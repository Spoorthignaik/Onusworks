package com.onusworks.example;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class Map1 {

	public static void main(String[] args) {

		Map<String, Double> ref = new LinkedHashMap<String, Double>();
		ref.put("shivamogga", 577201D);
		ref.put("bangalore", 566008D);
		ref.put("davanagere", 577222D);
		ref.put("tumkur", 577878D);
		ref.put("sandhya", null);
		ref.put(null, 900D);

		System.out.println("=========accessing keys=========");
		Set<String> keys = ref.keySet();
		keys.forEach(v -> {
			System.out.println(v);
		});

		System.out.println("========accessing values=========");
		Collection<Double> values = ref.values();
		values.forEach(s -> {
			System.out.println(s);
		});

		System.out.println("========accessing Key & Value=======");
		Set<Entry<String, Double>> entries = ref.entrySet();
		for (Entry<String, Double> entry : entries) {
			System.out.println("Keys =" + entry.getKey() + " & " + "Values=" + entry.getValue());
		}
		
		
		ref.remove("sandhya");
		System.out.println("after removing the element "+ref);
		
		ref.replace("shivamogga", 666666D);
		System.out.println("replacing the elements"+ref);
	}

}
