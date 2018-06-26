package com.od.util;



import java.util.Date;
import java.util.Properties;

import javax.mail.AuthenticationFailedException;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
/**
 * 发送QQ邮箱的前提
 * 		必须先设置独立密码   再去开启Smtp 获取到授权码
 * 发送163邮箱的前提：
 * 		发送者邮箱必须开启smtp服务  设置客户端授权密码
 * QQ邮箱或者163邮箱
 * 		163    端口:25   smtp地址：smtp.163.com
 * 		QQ   端口:587  smtp地址：smtp.qq.com
 * @Description
 * @author 黄世杰  
 * @2018-5-4
 * @version  1.0
 */
public class MailUtil extends Properties {
	
	private static final long serialVersionUID = 1L;
	
  private String port="25";//163端口
	private String host="smtp.163.com";
	private String userName = "308249631@163.com";//发送邮箱地址
	private String passWord = "hdx5201314";//授权码
	
/*	private String port="587";
	private String host="smtp.qq.com";//QQ端口
	private String userName = "";//发送邮箱地址
	private String passWord = "";//授权码	*/
	
//	private String port="";
//	private String host="";
//	private String userName = "";
//	private String passWord = "";
	
	/**
	 * 调用此方法发送邮件  前提示发送者的邮箱是QQ邮箱
	 * @param to_email  接收者的邮箱地址    
	 * @param title   标题
	 * @param msg    发送的内容
	 * @return  
	 * @throws Exception  发送失败则抛异常
	 */
	public void sendMail(String to_email, String title, String content) throws Exception {
		try {
			// 获取系统当前属性
			Properties props = System.getProperties();
			props.setProperty("mail.smtp.auth", "true");
			// 设置发送邮件使用的协议
			props.put("mail.transport.protocol", "smtp"); 
			// 设置smtp服务器  
			props.setProperty("mail.host",host); 
			//设置端口
			props.setProperty("mail.smtp.port",port);
			//props.setProperty("mail.smtp.ssl.enable", "true");
			//props.setProperty("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
			//props.setProperty("mail.smtp.socketFactory.fallback", "false");
			//props.setProperty("mail.smtp.socketFactory.port", "587");
			// 通过系统属性创建一个会话类
			Session session = Session.getInstance(props);
			session.setDebug(true);//设置输出debug信息。true为输出
			// 创建一个message对象，用来创建一封邮箱
			Message message = new MimeMessage(session);
			// 设置邮件发送者邮箱地址
			message.setFrom(new InternetAddress(userName));
			// 设置邮件接收者的邮箱地址,假设只发送给一个人
			InternetAddress[] to = new InternetAddress[1];
			to[0] = new InternetAddress(to_email);
			// 设置邮件发送的类型
			message.setRecipients(MimeMessage.RecipientType.TO, to);
			// 邮件标题
			message.setSubject(title);
			 // 设置时间
			message.setSentDate(new Date());
			// 新建一个MimeMultipart对象来存放多个BodyPart对象
			Multipart mul = new MimeMultipart();
			// 新建一个存放信件内容的BodyPart对象
			BodyPart mdp = new MimeBodyPart(); 
			mdp.setContent(content, "text/html;charset=utf-8");
			 // 将含有信件内容的BodyPart加入到MimeMultipart对象中
			mul.addBodyPart(mdp);
			// 把mul作为消息内容
			message.setContent(mul); 
			// 创建一个传输对象
			Transport transport = session.getTransport("smtp");
			// 建立与服务器的链接   只需要改授权码 fkvixoollxisdfie 和邮箱地址  
			transport.connect(userName,passWord);
			// 发送邮件
			transport.sendMessage(message, message.getAllRecipients());
			// 关闭网邮件传输
			transport.close();
		} catch (AddressException e) {
			e.printStackTrace();
			throw new Exception("接收邮箱地址不存在");
		}catch (AuthenticationFailedException e) {
			e.printStackTrace();
			throw new Exception("发送邮件地址不存在");
		} catch (NoSuchProviderException e) {
			e.printStackTrace();
			throw new Exception("邮箱服务地址不存在");
		} catch (MessagingException e) {
			e.printStackTrace();
			throw new Exception("没有找到连接，邮箱服务地址不存在");
		}
	}

	public String getPort() {
		return port;
	}

	public void setPort(String port) {
		this.port = port;
	}

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
