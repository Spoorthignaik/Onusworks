package com.onusworks.example;

import java.util.LinkedList;

public class LinkedList1 {
	
	public static void main(String[] args) {
		
		LinkedList<String> list=new LinkedList<String>();
		list.add("Black");
		list.add("White");
		list.add("Red");
		list.add("Yellow");
		list.add("Orange");
		
		System.out.println("Linked List elements "+list);
		
		list.add(2, "Green");
		System.out.println("Updated the elements : "+list);
		
		LinkedList<String> list2=new LinkedList<String>();
		list2.add("Mango");
		list2.add("Grapes");
		list2.add("Apple");
		list2.add("Banana");
		
		System.out.println("==========ADDING first element==========");
		
		list.addFirst("Grey");
		System.out.println("Adding First Element"+list);
		
		System.out.println("==========ADDING Last element==========");
		list.addLast("violet");
		System.out.println("Adding Last Element"+list);
		
		System.out.println("========Adding all the elements=========");
		list.addAll(list2);
		System.out.println(list);
		
	
		
		
		
	}

}
