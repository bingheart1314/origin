package com.bingheart.util.date;

import java.text.SimpleDateFormat;
import java.util.Date;

public class LocalTime {
	
	
	public static String getDate() {
	    Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY-MM-dd HH:mm");
        System.out.println(dateFormat.format(date.getTime()));
        return dateFormat.format(date.getTime());
	}



}
