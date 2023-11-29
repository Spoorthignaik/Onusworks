package com.onusworks.first.boot;

import com.onusworks.first.Override;
import com.onusworks.first.Override1;

public class OverrideRunner {
	
	public static void main(String[] args) {
		
		
		Override1 ov=new Override1();
		Override o=new Override();
		ov.start();
		o.start();
	}

}
