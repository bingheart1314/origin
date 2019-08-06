package com.bingheart.entity;

import com.mysql.fabric.xmlrpc.base.Data;


public class User {
	
	int user_id;
	String login_name;
	String user_pass;
	String nick_name;
	String in_date;
	String last_login_date;
	int status;
	String mail;
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getLogin_name() {
		return login_name;
	}
	public void setLogin_name(String login_name) {
		this.login_name = login_name;
	}
	public String getUser_pass() {
		return user_pass;
	}
	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}
	public String getNick_name() {
		return nick_name;
	}
	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}

	public String getIn_date() {
		return in_date;
	}
	public void setIn_date(String in_date) {
		this.in_date = in_date;
	}
	public String getLast_login_date() {
		return last_login_date;
	}
	public void setLast_login_date(String last_login_date) {
		this.last_login_date = last_login_date;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", login_name=" + login_name + ", user_pass=" + user_pass + ", nick_name="
				+ nick_name +  " in_date=" + in_date + ", last_login_date=" + last_login_date
				+ ", status=" + status + ", mail=" + mail + "]";
	}


}
