package com.onusworks.example;

import java.util.HashSet;

public class SetExampl {
	
	public static void main(String[] args) {
		
		HashSet<String> set1=new HashSet<String>();
		set1.add("one");
		set1.add("two");
		set1.add("three");
		set1.add("four");
		
		System.out.println(set1);
		
		HashSet<String> set2=new HashSet<String>();
		set2.add("apple");
		set2.add("ball");
		set2.add("car");
		set2.add("dog");
		
		System.out.println(set2);
		
		System.out.println("=======printing All the elements========");
		set1.addAll(set2);
		System.out.println(set1);
		
		System.out.println("=========Removing All the elements");
		set1.removeAll(set2);
		System.out.println(set1);
		
		
		
	}

}
