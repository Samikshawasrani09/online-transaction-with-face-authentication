package com.netbanking;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.annotation.SessionScope;

import com.models.Branch;
import com.models.Login;
import com.models.UserReg; 
 

@Controller
public class NetbankingController {
	@RequestMapping("/netbanking")
	public String myspring()
	{
		return "index.jsp";
	}
	@RequestMapping("/Cities")
	public String cities()
	{
		return "Cities.jsp";
	}
	@RequestMapping("/RCities")
	public String Rcities()
	{
		return "RCities.jsp";
	}
	@RequestMapping("/Branches")
	public String Branches()
	{
		return "Branches.jsp";
	}
	@SessionScope
	@RequestMapping("/adminHome")
	public String adminHome()
	{
		return "admin.jsp";
	}
	@RequestMapping("/branchReg")
	public String branchReg()
	{
		return "RegBranch.jsp";
	}@SessionScope
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
        session.invalidate();
		return "Logout.jsp";
	}@SessionScope
	@RequestMapping("userHome")
	public String userHome()
	{
		return "user.jsp";
	}
	@SessionScope
	@RequestMapping("branchHome")
	public String expertHome()
	{
		return "branch.jsp";
	}
	@SessionScope
	@RequestMapping("/BranchReg")
	public String ExpertReg()
	{
		return "RegBranch.jsp";
	}
	@RequestMapping("/login")
	public String login(HttpServletRequest request)
	{
		Login obj=new Login();
		 try
		 {
			 javax.servlet.http.HttpSession ses=request.getSession(true);
			 
			 if(obj.chkAuthentication(request.getParameter("txtuserid").trim(), request.getParameter("txtpass").trim()))
			 {
				 ses.setAttribute("userid", obj.getUserid());
				 System.out.println("userid="+obj.getUserid());
				 System.out.println("userid="+obj.getuType());
				 System.out.println("userid="+obj.getUserName());
				 ses.setAttribute("utype", obj.getuType());
				 ses.setAttribute("username", obj.getUserName());
				 return obj.getuType()+"Home";
			 }
			 else
			 { 
				 return "Failure.jsp?type=Auth";
			 }
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 System.out.println("err="+e.getMessage());
			 return("Failure.jsp?type=Auth");
		}
		 
	}
	@RequestMapping("/RegBranch")
	public String RegBranch(Branch eobj)
	{
		 
		 try
		 {
			 
			 
			 if(eobj.branchRegistration())
			 {
				 
				 
				 return "Success.jsp?type=Exp";
			 }
			 else
			 { 
				 return "Failure.jsp?type=Auth";
			 }
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 System.out.println("err="+e.getMessage());
			 return("Failure.jsp?type=Auth");
		}
		 
	}
	@RequestMapping("/RegUser")
	public String RegUser(UserReg eobj)
	{
		 
		 try
		 {
			 
			 
			 if(eobj.registration())
			 {
				 
				 
				 return "Success.jsp?type=UserReg";
			 }
			 else
			 { 
				 return "Failure.jsp?type=UserReg";
			 }
		 }
		 catch (Exception e) {
			// TODO: handle exception
			 System.out.println("err="+e.getMessage());
			 return("Failure.jsp?type=UserReg");
		}
		 
	}
}
