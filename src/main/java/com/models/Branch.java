package com.models;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;
 

public class Branch {
private String name,userid;
private String mobile;
private String email;
private String manager;
private String addr,city,state;
Connection con;
CallableStatement csmt;
PreparedStatement psmt;
 
ResultSet rs;
 
public String getName() {
	return name;
}

public String getUserid() {
	return userid;
}

public void setUserid(String userid) {
	this.userid = userid;
}

public void setName(String name) {
	this.name = name;
}

public String getMobile() {
	return mobile;
}

public void setMobile(String mobile) {
	this.mobile = mobile;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}
 
public String getManager() {
	return manager;
}

public void setManager(String manager) {
	this.manager = manager;
}

public String getAddr() {
	return addr;
}

public void setAddr(String addr) {
	this.addr = addr;
}

public String getCity() {
	return city;
}

public void setCity(String city) {
	this.city = city;
}

public String getState() {
	return state;
}

public void setState(String state) {
	this.state = state;
}
public int getId()
{
	int mxid=0;
    try
    {
         DBConnector obj=new  DBConnector();
        con=obj.connect();
        csmt=con.prepareCall("{call getMaxIdUsers()}");
       
         csmt.execute();
         rs=csmt.getResultSet();
                    
        boolean auth=false;
        while(rs.next())
        { System.out.println("true");
            auth=true;
            
            mxid=rs.getInt("mxid");
              
        }
    }
       
     
    catch(Exception ex)
    {
        System.out.println("err="+ex.getMessage());
         
    }
    return mxid;
}
public Branch(ResultSet rs)
{
	try
	{
	name=rs.getString("branchName").toString().trim();
	userid=rs.getString("userid").toString().trim();
	}
	catch (Exception e) {
		// TODO: handle exception
	}
}
 
public boolean branchRegistration()
{
    try
    {
    	String pass;
    	userid=name.split("\\ ")[0]+"@";
    	Random rnd=new Random(9999);
    	pass="Br#"+(rnd.nextInt()+1000);
         DBConnector obj=new  DBConnector();
        con=obj.connect();
        csmt=con.prepareCall("{call insertBranch(?,?,?,?,?,?,?,?,?)}");
        csmt.setString(1, userid);
        csmt.setString(2, pass);
        csmt.setString(3, name);
        csmt.setString(4, mobile);
        csmt.setString(5, email);
        csmt.setString(6, addr);
        csmt.setString(7, manager);
        csmt.setString(8, state);
        csmt.setString(9, city);
         
         
         int n=csmt.executeUpdate();
         
                    
        
        if(n>0)
        {
            try{con.close();}catch(Exception ex){}
            System.out.println("true");
            try {
    		 	Mail obj1=new Mail();
    		 	String uid=userid+""+getId();
    		 	String msg="Dear "+name+" \n (Branch Manager) Your account has been created by the administrator. your userid is "+uid+" and password is "+pass+". \n Thanks.";
    		    obj1.sendMail(msg, email,"Account Activation");
    		    }
    		    catch (Exception e) {
    				// TODO: handle exception
    			}
            return true;
        }
        else
            return false;

        }
       
     
    catch(Exception ex)
    {
        System.out.println("err="+ex.getMessage());
        return false;
    }
}
}
