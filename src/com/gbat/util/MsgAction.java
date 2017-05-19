package com.gbat.util;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.aliyuncs.sms.model.v20160927.SingleSendSmsRequest;
import com.aliyuncs.sms.model.v20160927.SingleSendSmsResponse;
import com.gbat.util.ParamString;


import net.sf.json.JSONObject;

public class MsgAction {
	
	
	private String code;
	private String number;
	private Map<String, Object> map;
	
	public String msg(){
		

		Random r = new Random();
		String codeNum = String.valueOf(r.nextInt(99999));
		
		this.code = codeNum;
		map = new HashMap<String, Object>();
		ParamString ps = new ParamString();
		ps.setCode(codeNum);
		ps.setName("");
			
		//map.put("code", codeNum);
		
		//JSONObject smsParam = JSONObject.fromObject(ps);
		//map.put("ps", ps);
		String msg = "{'code':'"+codeNum+"','name':''}";
		//System.out.println(msg);
		//System.out.println(number);
		
		IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", "LTAINAUvjirRiai6", "eJZogutemtJC16C5POfHqwsKKj0AmZ");
        try {
			DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", "Sms",  "sms.aliyuncs.com");
		} catch (ClientException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        	IAcsClient client = new DefaultAcsClient(profile);
        	SingleSendSmsRequest request = new SingleSendSmsRequest();
       try {
           request.setSignName("‘∆º∆À„");
           request.setTemplateCode("SMS_39175001");
           request.setParamString(msg);
           request.setRecNum(this.number);
           SingleSendSmsResponse httpResponse = client.getAcsResponse(request);
       } catch (ServerException e) {
           e.printStackTrace();
       }
       catch (ClientException e) {
           e.printStackTrace();
       }
       
       return "success";
	}


	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}


	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public Map<String, Object> getMap() {
		return map;
	}

	public void setMap(Map<String, Object> map) {
		this.map = map;
	}

	
}
