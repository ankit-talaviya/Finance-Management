package Agency;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.loader.custom.Return;
import org.hibernate.type.IntegerType;

import com.efive.agency.hibernate.*;
import Agency.AgencyBean;

public class Agency extends AgencyBean {
	private static SessionFactory factory;
	private Connection conn;
	
	public String index() throws Exception
	{
		try{
				String URL = "jdbc:mysql://localhost/agency";
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(URL,"root","");
				String sql= "SELECT username FROM login WHERE username = ? AND password = ?";
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, username);
				ps.setString(2, password);
				ResultSet rs=ps.executeQuery();
				

				while (rs.next()) {
					username = rs.getString(1);
					System.out.println(username);
					main();
					return "success";
					}
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return "error";
	}			
		
	/*---------------------------main-------------------------*/
	
	public String main() throws Exception {
		Viewtable();
		return "main";
	}
	
	/*------------------Viewtable-------------------------------*/
	int displayrec=5;
	public void Viewtable() throws Exception{
		
		Session session = HibernateSessionFactory.getSession();
		Transaction	tx =null;
		try{	
	
		tx =  session.beginTransaction();
		
		System.out.println("SELECT SubId,SubName,StartDate,EndDate,NoCompany,NoUser,Modules,ContactPer,Address,Pincode,PhoneNo,MobileNo,Email,Fax FROM sub");
		SQLQuery query = session.createSQLQuery("SELECT SubId,SubName,StartDate,EndDate,Address,NoCompany,NoUser,Modules,ContactPer,Pincode,PhoneNo,MobileNo,Email,Fax FROM sub WHERE Active='y' ORDER BY SubId ; ");
		SQLQuery query1 = session.createSQLQuery("SELECT SubId,SubName,StartDate,EndDate,Address,NoCompany,NoUser,Modules,ContactPer,Pincode,PhoneNo,MobileNo,Email,Fax FROM sub WHERE Active='y' ORDER BY SubId limit "+displayrec+"; ");
	
		list =  query1.list();
		list1 = query.list();
		totalrecord= list1.size();
		tx.commit();
		
		dis=displayrec;
		page= currentpage;
		if(currentpage==0)
		{
			page=1;
		}
		
		
		//page=1;
		int start = 1;
		String sre="";
		totalpage = totalrecord/displayrec;
		if(totalrecord % displayrec != 0)
		{
			totalpage++;
		}
		tp=totalpage;
		
		end =page*displayrec;
		start = end-(displayrec-1);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
}
	
/*----------------------calpage--------------------------------------------*/
	
	public void calpage() throws Exception {

		
		Session session = HibernateSessionFactory.getSession();
		Transaction	tx =null;
		
		String sre="";
		try
		{
		PrintWriter out=null;
		response = ServletActionContext.getResponse();
		response.setContentType("text/text;charset=utf-8");
		response.setHeader("cache-control", "no-cache");
		out=response.getWriter();
		page = page + incr;
		if(page>0){
			if(page==1)
			{
				start=(page)-1;
			}
			else
			start=((page)-1)*displayrec;
		}
		
		SQLQuery query3 = session.createSQLQuery("SELECT * FROM sub WHERE Active='y' limit "+start+" , "+displayrec+"");
		list = query3.list();
		if(null!=list && list.size()>0){
			for(int i=0;i<list.size();i++){
				Object[] data=(Object[])list.get(i); 
				
			sre+="<tr>"+
				"<td>"+data[0]+"</td>"+
				"<td>"+data[1]+"</td>"+
				"<td>"+data[2]+"</td>"+
				"<td>"+data[3]+"</td>"+
				"<td>"+
				"<a class=\"text-primary show-tooltip-animation mt-1\" title=\'"+data[8]+"'\"><i class=\"icon-eye\"></i></a></td>"+
				"<td><a href=\"#\" onclick=\"editdata('"+data[0]+"','"+data[1]+"','"+data[2]+"','"+data[3]+"','"+data[4]+"','"+data[5]+"','"+data[6]+"','"+data[7]+"','"+data[8]+"','"+data[9]+"','"+data[10]+"','"+data[11]+"','"+data[12]+"','"+data[13]+"','"+data[14]+"','"+data[15]+"','"+data[16]+"','"+data[17]+"',)\" class=\"text-primary\"><i class=\"icon-edit\"></i></a>+<a href=\"#\" onclick=\"checkDelete('"+data[0]+"')\" class=\"m-l-10 text-danger\"><i class=\"icon-close\"></i></a>"+
                "</td></tr>";}
		}
		
		out.print(sre);
	
		System.out.println(sre);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	private void query(java.lang.String string, IntegerType integerType) {
		
	}

	
	
	
	/*----------------------------redirect---------------------------------*/
	public String redirecttoadd()
	{
		Session session = HibernateSessionFactory.getSession();
		Transaction	tx =null;
		
		System.out.println("ppp"+SubId);
		
		SQLQuery query1 = session.createSQLQuery("SELECT * FROM city");
		citylist =  query1.list();
		
		SQLQuery query2 = session.createSQLQuery("SELECT * FROM state");
		statelist =  query2.list();
		
		SQLQuery query3 = session.createSQLQuery("SELECT * FROM country");
		countrylist = query3.list();
		
		if(null!=SubId && SubId.length()>0){
			SQLQuery query = session.createSQLQuery("SELECT SubId,SubName,StartDate,EndDate,NoCompany,NoUser,Modules,ContactPer,Address,Pincode,PhoneNo,MobileNo,Email,Fax,sub.CityId,sub.StateId,sub.CountryId,sub.Image,Ch1,Ch2,Ch3,Ch4,Ch5 FROM city INNER JOIN state ON city.StateId=state.StateId INNER JOIN sub ON city.StateId=sub.StateId WHERE SubId='"+SubId+"'");
			list =  query.list();
			
			for (int i = 0; i < list.size(); i++) {
				Object[] data=(Object[]) list.get(i);
				SubId=null!=data[0]?data[0].toString():"";
				SubName=null!=data[1]?data[1].toString():"";
				StartDate=null!=data[2]?data[2].toString():"";
				EndDate=null!=data[3]?data[3].toString():"";
				NoCompany=null!=data[4]?data[4].toString():"";
				NoUser=null!=data[5]?data[5].toString():"";
				Modules=null!=data[6]?data[6].toString():"";
				ContactPer=null!=data[7]?data[7].toString():"";
				Address=null!=data[8]?data[8].toString():"";
				Pincode=null!=data[9]?data[9].toString():"";
				PhoneNo=null!=data[10]?data[10].toString():"";
				MobileNo=null!=data[11]?data[11].toString():"";
				Email=null!=data[12]?data[12].toString():"";
				Fax=null!=data[13]?data[13].toString():"";
				CountryId=null!=data[16]?data[16].toString():"";
				StateId=null!=data[15]?data[15].toString():"";
				CityId=null!=data[14]?data[14].toString():"";
				myFileFileName=null!=data[17]?data[17].toString():"";
				Ch1=null!=data[18]?data[18].toString():"";
				Ch2=null!=data[19]?data[19].toString():"";
				Ch3=null!=data[20]?data[20].toString():"";
				Ch4=null!=data[21]?data[21].toString():"";
				Ch5=null!=data[22]?data[22].toString():"";
				System.out.println("file name"+myFileFileName);
			}
		}
	
		return "showadd";
	}
	
	/*----------------------------Add---------------------------------*/
	
	
	public String Add() throws Exception{
		
		Session session = HibernateSessionFactory.getSession();
		Transaction	tx =null;
			
		SQLQuery query1 = session.createSQLQuery("SELECT * FROM city");
		citylist =  query1.list();
		
		SQLQuery query2 = session.createSQLQuery("SELECT * FROM state");
		statelist =  query2.list();
		
		SQLQuery query3 = session.createSQLQuery("SELECT * FROM country");
		countrylist = query3.list();
		
		if(null!=SubId && SubId.length()>0)
		{
			try{	
				
				System.out.println("inside search");

String ck1,ck2,ck3,ck4,ck5;
if(null!=Ch1 && Ch1.length()>0){
	 ck1="Y";
}else{
	ck1="N";
}	
if(null!=Ch2 && Ch2.length()>0){
	 ck2="Y";
}else{
	ck2="N";
}
if(null!=Ch3 && Ch3.length()>0){
	 ck3="Y";
}else{
	ck3="N";
}
if(null!=Ch4 && Ch4.length()>0){
	 ck4="Y";
}else{
	ck4="N";
}
if(null!=Ch5 && Ch5.length()>0){
	 ck5="Y";
}else{
	ck5="N";
}

				if(myFile==null)
				{
					tx =  session.beginTransaction();
					System.out.println("update sub set SubName='"+SubName+"',StartDate='"+StartDate+"',EndDate='"+EndDate+"',NoCompany='"+NoCompany+"',NoUser='"+NoUser+"',Modules='"+Modules+"',ContactPer='"+ContactPer+"',Address='"+Address+"',Pincode='"+Pincode+"',PhoneNo='"+PhoneNo+"',MobileNo='"+MobileNo+"',Email='"+Email+"',Fax='"+Fax+"',CityId='"+CityId+"' ,StateId='"+StateId+"' where SubId='"+SubId+"' ");
					
					SQLQuery  editQuery = session.createSQLQuery("update sub set SubName='"+SubName+"',StartDate='"+StartDate+"',EndDate='"+EndDate+"',NoCompany='"+NoCompany+"',NoUser='"+NoUser+"',Modules='"+Modules+"',ContactPer='"+ContactPer+"',Address='"+Address+"',Pincode='"+Pincode+"',PhoneNo='"+PhoneNo+"',MobileNo='"+MobileNo+"',Email='"+Email+"',Fax='"+Fax+"',CityId='"+CityId+"' ,StateId='"+StateId+"',Ch1='"+ck1+"',Ch2='"+ck2+"',Ch3='"+ck3+"',Ch4='"+ck4+"',Ch5='"+ck5+"' where SubId='"+SubId+"' ");
			 
			 		editQuery.executeUpdate();
					
					session.getTransaction().commit();
					System.out.println("null value");
				}
				else
				{
					String contextPath = request.getServletContext().getRealPath("/");
		            System.out.println("Context Path " + contextPath);
		            File saveFilePath = new File("C:/Users/Admin/Pictures/store/"+ getMyFileFileName());
		            try {
		                FileUtils.copyFile(myFile, saveFilePath);
		            	} 
		            catch (IOException ex) {
		                System.out.println("Couldn't save file: " + ex.getMessage());
		            }
		            tx =  session.beginTransaction();
					System.out.println("update sub set SubName='"+SubName+"',StartDate='"+StartDate+"',EndDate='"+EndDate+"',NoCompany='"+NoCompany+"',NoUser='"+NoUser+"',Modules='"+Modules+"',ContactPer='"+ContactPer+"',Address='"+Address+"',Pincode='"+Pincode+"',PhoneNo='"+PhoneNo+"',MobileNo='"+MobileNo+"',Email='"+Email+"',Fax='"+Fax+"',CityId='"+CityId+"' ,StateId='"+StateId+"',Image='"+getMyFileFileName()+"' where SubId='"+SubId+"' ");
					
					SQLQuery  editQuery = session.createSQLQuery("update sub set SubName='"+SubName+"',StartDate='"+StartDate+"',EndDate='"+EndDate+"',NoCompany='"+NoCompany+"',NoUser='"+NoUser+"',Modules='"+Modules+"',ContactPer='"+ContactPer+"',Address='"+Address+"',Pincode='"+Pincode+"',PhoneNo='"+PhoneNo+"',MobileNo='"+MobileNo+"',Email='"+Email+"',Fax='"+Fax+"',CityId='"+CityId+"' ,StateId='"+StateId+"',Image='"+getMyFileFileName()+"',Ch1='"+ck1+"',Ch2='"+ck2+"',Ch3='"+ck3+"',Ch4='"+ck4+"',Ch5='"+ck5+"' where SubId='"+SubId+"' ");
			 
			 		editQuery.executeUpdate();
					
					session.getTransaction().commit();
				}
				
				
				
		}
				catch(Exception e)
				{
					e.printStackTrace();
				}
	
		}
		
		else{
				
			
			try{	
			
				
				
System.out.println("inside search");
				
String ck1,ck2,ck3,ck4,ck5;
if(null!=Ch1 && Ch1.length()>0){
	 ck1="Y";
}else{
	ck1="N";
}	
if(null!=Ch2 && Ch2.length()>0){
	 ck2="Y";
}else{
	ck2="N";
}
if(null!=Ch3 && Ch3.length()>0){
	 ck3="Y";
}else{
	ck3="N";
}
if(null!=Ch4 && Ch4.length()>0){
	 ck4="Y";
}else{
	ck4="N";
}
if(null!=Ch5 && Ch5.length()>0){
	 ck5="Y";
}else{
	ck5="N";
}


				if(myFile==null)
				{
					tx =  session.beginTransaction();
					System.out.println("insert into sub values(NULL,'"+SubName+"','"+StartDate+"','"+EndDate+"','"+NoCompany+"','"+NoUser+"','"+Modules+"','"+ContactPer+"','"+Address+"','"+Pincode+"','"+PhoneNo+"','"+MobileNo+"','"+Email+"','"+Fax+"','"+CityId+"','"+StateId+"','"+CountryId+"','y','"+ck1+"','"+ck2+"','"+ck3+"','"+ck4+"','"+ck5+"')");
					SQLQuery  insertQuery = session.createSQLQuery("insert into sub values(NULL,'"+SubName+"','"+StartDate+"','"+EndDate+"','"+NoCompany+"','"+NoUser+"','"+Modules+"','"+ContactPer+"','"+Address+"','"+Pincode+"','"+PhoneNo+"','"+MobileNo+"','"+Email+"','"+Fax+"','"+CityId+"','"+StateId+"','"+CountryId+"','y','"+ck1+"','"+ck2+"','"+ck3+"','"+ck4+"','"+ck5+"')");
				
					insertQuery.executeUpdate();
					
					session.getTransaction().commit();
				
					System.out.println("null value");
				}
				else
				{
					String contextPath = request.getServletContext().getRealPath("/");
		            System.out.println("Context Path " + contextPath);
		            File saveFilePath = new File("C:/Users/Admin/Pictures/store/"+ getMyFileFileName());
		            try {
		                FileUtils.copyFile(myFile, saveFilePath);
		            	} 
		            catch (IOException ex) {
		                System.out.println("Couldn't save file: " + ex.getMessage());
		        
		            }
		            tx =  session.beginTransaction();
					System.out.println("insert into sub values(NULL,'"+SubName+"','"+StartDate+"','"+EndDate+"','"+NoCompany+"','"+NoUser+"','"+Modules+"','"+ContactPer+"','"+Address+"','"+Pincode+"','"+PhoneNo+"','"+MobileNo+"','"+Email+"','"+Fax+"','"+CityId+"','"+StateId+"','"+CountryId+"','y','"+getMyFileFileName()+"','"+ck1+"','"+ck2+"','"+ck3+"','"+ck4+"','"+ck5+"')");
					SQLQuery  insertQuery = session.createSQLQuery("insert into sub values(NULL,'"+SubName+"','"+StartDate+"','"+EndDate+"','"+NoCompany+"','"+NoUser+"','"+Modules+"','"+ContactPer+"','"+Address+"','"+Pincode+"','"+PhoneNo+"','"+MobileNo+"','"+Email+"','"+Fax+"','"+CityId+"','"+StateId+"','"+CountryId+"','y','"+getMyFileFileName()+"','"+ck1+"','"+ck2+"','"+ck3+"','"+ck4+"','"+ck5+"')");
				
					insertQuery.executeUpdate();
					
					session.getTransaction().commit();
				
				}
				
				
				
			}
				catch(Exception e)
				{
					e.printStackTrace();
				}
			
				}
		Viewtable();
		return "Add";
	
}
	
	/*------------------------delete-----------*/

	public String Deletedata() throws Exception{
		Session session = HibernateSessionFactory.getSession();
		Transaction	tx =null;
		try{	
			tx =  session.beginTransaction();
			System.out.println("update sub set Active='n' where SubId='"+SubId+"'");
			SQLQuery  deleteQuery = session.createSQLQuery("update sub set Active='n' where SubId="+SubId);
		
			deleteQuery.executeUpdate();
			
			session.getTransaction().commit();
				
		}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		Viewtable();
		return "Delete";
		
		}

/*------------------------Search---------------------------------*/

 public String Ser() throws Exception{
	 	
	 
	 System.out.println("ser==" +ser);
	 Session session = HibernateSessionFactory.getSession();
		PrintWriter out=null;
		out=response.getWriter();
		String sre="";
	
	Transaction	tx =null;
	try{	
		tx =  session.beginTransaction();
		System.out.println("SELECT SubId,SubName,StartDate,EndDate FROM sub WHERE (SubId like '%"+ser+"%' or SubName like '%"+ser+"%' or StartDate like '%"+ser+"%' or EndDate like '%"+ser+"%' or Address like '%"+ser+"%')");
		
		SQLQuery query = session.createSQLQuery("SELECT SubId,SubName,StartDate,EndDate,Address FROM sub WHERE (SubId like '%"+ser+"%' or SubName like '%"+ser+"%' or StartDate like '%"+ser+"%' or EndDate like '%"+ser+"%' or Address like '%"+ser+"%')");
		query.setFirstResult(start);
		query.setMaxResults(displayrec);
		list =  query.list();
		
		SQLQuery query2 = session.createSQLQuery("SELECT SubId,SubName,StartDate,EndDate,Address FROM sub WHERE (SubId like '%"+ser+"%' or SubName like '%"+ser+"%' or StartDate like '%"+ser+"%' or EndDate like '%"+ser+"%' or Address like '%"+ser+"%')");
		list3 = query2.list();
		totalrecord = list3.size();
		totalpage = totalrecord/displayrec;
 		if((totalrecord%displayrec)!=0)
		{
			totalpage++;
		}
 		tp=totalpage;
		
	}
		
	catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return "Ser";

}

 
}