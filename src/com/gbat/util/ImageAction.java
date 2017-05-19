package com.gbat.util;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.image.codec.jpeg.ImageFormatException;
import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

public class ImageAction  {

	private ByteArrayInputStream imageStream;
	private String number;

	public  BufferedImage execute() throws ImageFormatException, IOException {
		
		BufferedImage image = new BufferedImage(60, 20,
				BufferedImage.TYPE_INT_RGB);
		
		Random r = new Random();
		Graphics g = image.getGraphics();
		g.setColor(new Color(r.nextInt(255), r.nextInt(255), r.nextInt(255)));
		g.fillRect(0, 0, 67, 20);
		g.setColor(new Color(0, 0, 0));
		this.number = String.valueOf(r.nextInt(99999));
		
		//将验证码数字保存到session中
//		HttpServletRequest request = null;
//		HttpSession session = request.getSession();
//		session.setAttribute("number", number);
		
		g.drawString(this.number, 5, 15);

	
		g.drawLine(r.nextInt(60), r.nextInt(20), r.nextInt(60), r.nextInt(20));
		g.drawLine(r.nextInt(20), r.nextInt(60), r.nextInt(20), r.nextInt(60));
		g.drawLine(r.nextInt(60), r.nextInt(20), r.nextInt(60), r.nextInt(20));
		g.drawLine(r.nextInt(20), r.nextInt(60), r.nextInt(20), r.nextInt(60));
		
//		ByteArrayOutputStream os = new ByteArrayOutputStream();
//		JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(os);
//		encoder.encode(image);
//		
//		
//		byte[] bts = os.toByteArray();
//		imageStream = new ByteArrayInputStream(bts);
		return image;

	}

	public ByteArrayInputStream getImageStream() {
		return imageStream;
	}

	public void setImageStream(ByteArrayInputStream imageStream) {
		this.imageStream = imageStream;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	
}
