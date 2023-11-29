package com.onusworks.example;

import java.util.LinkedList;

public class LinkedListExamplRunner {
	
	public static void main(String[] args) {
		
		
		LinkedList<LinkedListExampl> list=new LinkedList<LinkedListExampl>();
		
		LinkedListExampl list1=new LinkedListExampl(1, "columbus", "martin", 12, "veda");
		LinkedListExampl list2=new LinkedListExampl(2, "mahabharatha", "Vedavyasa", 32, "Krishna");
		LinkedListExampl list3=new LinkedListExampl(3, "Ramayana", "Valmiki", 66, "Rama");
		LinkedListExampl list4=new LinkedListExampl(4, "Geetanjali", "Rahul", 79, "karthik");

		list.add(list1);
		list.add(list2);
		list.add(list3);
		list.add(list4);
		
		for(LinkedListExampl li:list) {
			System.out.println(li.id+" "+li.name+" "+li.author+" "+" "+li.quantity+" "+li.publisher);
		}
		
		
		
	}

}
