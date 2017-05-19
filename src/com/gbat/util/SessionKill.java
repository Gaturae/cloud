package com.gbat.util;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SessionKill {

	public void kill(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Enumeration<String>  names = session.getAttributeNames();
		String next = null;
		Object str = null;
		 while (names.hasMoreElements()){
			 next = names.nextElement();
			 System.out.println("kill" + next);
			 str = session.getAttribute(next);
			 if(str.equals("")==false){				 
				 session.setAttribute(next, ""); 			 
			 }
		 }
	}
	
}
