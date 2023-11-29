package com.onusworks.example;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

public class ArrayLi {

	public static void main(String[] args) {

		ArrayList<String> list = new ArrayList<String>();
		list.add("Spoorthi");
		list.add("Vismaya");
		list.add("Bindu");
		list.add("Supreetha");
		list.add("Spoorthi");

		System.out.println("=====sorting the element Names=====");
		Collections.sort(list);

		Iterator itr = list.iterator();
		while (itr.hasNext()) {
			System.out.println("Array List :" + itr.next());
		}

		// reverse

		ArrayList<String> place = new ArrayList<String>();
		place.add("India");
		place.add("Australia");
		place.add("Korea");
		place.add("Newzeland");
		place.add("Canada");

		System.out.println("========for each and Lamda ");

		place.forEach(a -> {
			System.out.println(a);
		});

		System.out.println("========REVERSE=========");
		ListIterator<String> pl = place.listIterator(list.size());
		while (pl.hasPrevious()) {
			String str = pl.previous();
			System.out.println(str);

		}

		
		
		// Integer
		// we cannot add primitive data type , we can use wrapper class

		ArrayList<Integer> li = new ArrayList<Integer>();
		li.add(78);
		li.add(23);
		li.add(108);
		li.add(14);

		System.out.println("========Sorting the Numbers========");
		Collections.sort(li);

		System.out.println("Array List : " + li);

		// for Each

		ArrayList<String> fruit = new ArrayList<String>();
		fruit.add("Mango");
		fruit.add("Pineapple");
		fruit.add("Grapes");
		fruit.add("Pomogranate");
		fruit.add("Apple");

		System.out.println("======sorting the elements=======");
		Collections.sort(fruit);

		for (String ref : fruit) {
			System.out.println(ref);
		}

		System.out.println("======== GET=========");
		// get
		System.out.println("Returning Element :" + fruit.get(0));
		// set
		System.out.println("=========SET=========");

		fruit.set(1, "Stawberry");
		for (String ref2 : fruit) {
			System.out.println(ref2);
		}

		// Linked List
		System.out.println("=========Linked List=======");

		List<String> list2 = new LinkedList<String>();
		list2.add("Sahana");
		list2.add("Swathi");
		list2.add("Soundarya");
		list2.add("Shwetha");
		System.out.println("Linked list elements"+list2);

		List<String>list3=new LinkedList<String>();
		list3.add("black");
		list3.add("blue");
		
		list2.addAll(list3);
		System.out.println("Add all elements"+list2);
		

	}

}
