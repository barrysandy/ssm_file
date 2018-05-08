package com.wisdom.travel.Test;

public class TestDate {
	
	public static void main(String[] args) {
//		String time = "2018-01-12";
//		StringBuffer sb = new StringBuffer();
//		sb.append(time.substring(0, 4));
//		sb.append("年");
//		sb.append(time.substring(5, 7));
//		sb.append("月");
//		sb.append(time.substring(8, 10));
//		sb.append("日");
//		System.out.println(sb.toString());
		
		
		
		String time = "2018-5-2 10:12";
		String[] times = time.split(" ");
		String timeAf = times[0];
		String timeAf2 = times[1];
		String[] timesAfArray = timeAf.split("-");
		StringBuffer sb = new StringBuffer();
		sb.append(timesAfArray[0]);
		sb.append("-");
		
		if(timesAfArray[1].length() == 1){
			sb.append("0");
		}
		sb.append(timesAfArray[1]);
		sb.append("-");
		
		if(timesAfArray[2].length() == 1){
			sb.append("0");
		}
		sb.append(timesAfArray[2]);
		sb.append(" ");
		sb.append(timeAf2);
		System.out.println(sb.toString());
	}

}
