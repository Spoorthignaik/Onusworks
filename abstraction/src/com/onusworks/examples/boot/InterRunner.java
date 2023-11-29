package com.onusworks.examples.boot;

import com.onusworks.examples.Circle;
import com.onusworks.examples.Inter;
import com.onusworks.examples.Rectangle;

public class InterRunner {

	
	public static void main(String[] args) {
		Inter ref=new Rectangle();
		ref.draw();
		Inter ref2=new Circle();
		ref2.draw();
	}
}
