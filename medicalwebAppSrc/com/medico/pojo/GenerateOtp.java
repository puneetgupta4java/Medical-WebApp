package com.medico.pojo;

import java.util.Random;

public class GenerateOtp {
	public static String genOtp(){
		String otp1 = null;
		String n ="0123456789";
		Random r = new Random();
		char[] otp = new char[6];
		for(int i = 0;i<6;i++){
			otp[i] = n.charAt(r.nextInt(n.length()));
		}
		otp1 = new String(otp);
		return otp1;
	}
}
