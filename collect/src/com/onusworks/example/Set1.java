package com.onusworks.example;

import java.util.HashSet;
import java.util.Iterator;

public class Set1 {

	public static void main(String[] args) {

		HashSet<String> hash = new HashSet<String>();
		hash.add("one");
		hash.add("two");
		hash.add("three");
		hash.add("four");
		hash.add("five");
		hash.add("one"); // does not accept duplicates

		Iterator<String> itr = hash.iterator();

		while (itr.hasNext()) {

			System.out.println(itr.next());

		}

		hash.remove("four");

	}

}
