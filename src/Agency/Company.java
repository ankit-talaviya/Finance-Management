package Agency;

import java.io.PrintWriter;
import java.sql.Connection;

import org.apache.struts2.ServletActionContext;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.type.IntegerType;

import com.efive.agency.hibernate.HibernateSessionFactory;

public class Company extends AgencyBean {
	private static SessionFactory factory;
	private Connection conn; 

	
	public String Start() throws Exception {
		
		Table();
		return "success";
		
	}
	
	/*------------------Table-----------------------*/
	int displayrec=5;
	public void Table() throws Exception{
		
		Session session = HibernateSessionFactory.getSession();
		Transaction	tx =null;
		
		System.out.println("SELECT CompanyId,Company,CityName,StateName,ShortName,Address,ContactNo,Email,WebSite FROM company,city,state WHERE city.StateId=state.StateId AND company.CityId=city.CityId AND Active='y' ");
		SQLQuery query = session.createSQLQuery("SELECT CompanyId,Company,StateName,CityName,ShortName,Address,ContactNo,Email,Website,company.CityId,company.StateId,company.CountryId FROM company,state,city WHERE city.StateId=state.StateId AND company.CityId=city.CityId");
		
		list =  query.list();
	
		SQLQuery query5 = session.createSQLQuery("SELECT CompanyId,Company,StateName,CityName,ShortName,Address,ContactNo,Email,Website,company.CityId,company.StateId,company.CountryId FROM company,state,city WHERE city.StateId=state.StateId AND company.CityId=city.CityId ORDER by CompanyId");
		query5.setFirstResult(0);
		query5.setMaxResults(5);
		list3 = query5.list();
		
		System.out.println("SELECT SubId,SubName FROM sub");
		SQLQuery query1 = session.createSQLQuery("SELECT SubId,SubName FROM sub");

		list1 =  query1.list();
		
		SQLQuery query2 = session.createSQLQuery("SELECT * FROM city");
		citylist =  query2.list();
		
		SQLQuery query3 = session.createSQLQuery("SELECT * FROM state");
		statelist =  query3.list();
		
		SQLQuery query4 = session.createSQLQuery("SELECT * FROM country");
		countrylist = query4.list();
		
		totalrecord= list.size();
		
		
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
		
		
		SQLQuery query3 = session.createSQLQuery("SELECT * FROM company,state,city WHERE city.StateId=state.StateId AND company.CityId=city.CityId");
		query3.setFirstResult(start);
		query3.setMaxResults(displayrec);
		list = query3.list();
		if(null!=list && list.size()>0){
			for(int i=0;i<list.size();i++){
				Object[] data=(Object[])list.get(i); 
				
			sre+="<tr>"+
				"<td>"+data[0]+"</td>"+
				"<td>"+data[2]+"</td>"+
				"<td>"+data[13]+"</td>"+
				"<td>"+data[16]+"</td>"+
				"<td><a href=\"#\" onclick=\"editdata('"+data[0]+"','"+data[2]+"','"+data[10]+"','"+data[9]+"','"+data[8]+"','"+data[3]+"','"+data[4]+"','"+data[5]+"','"+data[6]+"','"+data[7]+"')\" class=\"text-primary\"><i class=\"icon-edit\"></i></a>+<a href=\"#\" onclick=\"checkDelete('"+data[0]+"')\" class=\"m-l-10 text-danger\"><i class=\"icon-close\"></i></a>"+
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

	

		
	
	
	/*-------------------SubId-------------------*/
	
	public void SubId() throws Exception{
		int total = 0,curcompany;
		Session session = HibernateSessionFactory.getSession();
		Transaction	tx =null;
		
		SQLQuery subidQuery = session.createSQLQuery("select * from sub WHERE SubId='"+SubId+"' ");
		
		SQLQuery subid1Query = session.createSQLQuery("select * from company WHERE SubId='"+SubId+"' ");
		
		list = subidQuery.list();
		
		for (int i = 0; i < list.size(); i++) {
			Object[] data=(Object[]) list.get(i);
			total=Integer.parseInt(data[4].toString());
		}
		list = subid1Query.list();
		curcompany=list.size();
		HttpServletResponse response= ServletActionContext.getResponse();
		System.out.println("curcompany"+curcompany +"total" +total);
		response.setContentType("text/text;charset=utf-8");
		response.setHeader("cache-control","no-cache");
		 PrintWriter total1 = response.getWriter();
		if(curcompany < total)
		{
			total1.print ("N");
		}
		else
		{
			total1.print("Y");
		}
		
	}
	
	
	/*-------------------------add---------------------------*/
	
	
public String Add() throws Exception{
		
	Session session = HibernateSessionFactory.getSession();
	Transaction	tx =null;
	
	if(null!=CompanyId && CompanyId.length()>0)
	{
		try{	
			tx =  session.beginTransaction();
			System.out.println("update company set SubId='"+SubId+"',Company='"+Company+"',ShortName='"+ShortName+"',Address='"+Address+"',ContactNo='"+ContactNo+"',Email='"+Email+"',Website='"+Website+"',CityId='"+CityId+"' ,StateId='"+StateId+"' where CompanyId='"+CompanyId+"' ");
			
			SQLQuery editQuery = session.createSQLQuery("update company set SubId='"+SubId+"',Company='"+Company+"',ShortName='"+ShortName+"',Address='"+Address+"',ContactNo='"+ContactNo+"',Email='"+Email+"',Website='"+Website+"',CityId='"+CityId+"' ,StateId='"+StateId+"' where CompanyId='"+CompanyId+"' ");
			editQuery.executeUpdate();
			session.getTransaction().commit();

			}
			catch(Exception e)
			{
				e.printStackTrace();
			}

	}
	
	else{
			
		try{	
			tx =  session.beginTransaction();
			System.out.println("insert into company values(NULL,'"+SubId+"','"+Company+"','"+ShortName+"','"+Address+"','"+ContactNo+"','"+Email+"','"+Website+"','"+CityId+"','"+StateId+"','"+CountryId+"','y')");
			SQLQuery  insertQuery = session.createSQLQuery("insert into company values(NULL,'"+SubId+"','"+Company+"','"+ShortName+"','"+Address+"','"+ContactNo+"','"+Email+"','"+Website+"','"+CityId+"','"+StateId+"','"+CountryId+"','y')");
		
			insertQuery.executeUpdate();
			session.getTransaction().commit();
		}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		Table();
		return "Add";
}

/*------------------------Delete-------------*/

public String Deletedata() throws Exception{
	Session session = HibernateSessionFactory.getSession();
	Transaction	tx =null;
	try{	
		tx =  session.beginTransaction();
		System.out.println("update company set Active='n' where CompanyId='"+CompanyId+"'");
		SQLQuery  deleteQuery = session.createSQLQuery("update company set Active='n' where CompanyId="+CompanyId);
		deleteQuery.executeUpdate();
		
		session.getTransaction().commit();

	}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	Table();
	return "Delete";
	
	}


/*------------------------Search---------------------------------*/
public String Ser() throws Exception{
 	
	 
	 System.out.println("ser==" +ser);
	 Session session = HibernateSessionFactory.getSession();
	Transaction	tx =null;
	try{	
		tx =  session.beginTransaction();
		System.out.println("SELECT CompanyId,Company,StateName,CityName,Address,ContactNo,Email,Website FROM company,state,city WHERE city.StateId=state.StateId AND company.CityId=city.CityId AND (CompanyId like '%"+ser+"%' or Company like '%"+ser+"%' or StateName like '%"+ser+"%' or CityName like '%"+ser+"%')");
		
		SQLQuery query = session.createSQLQuery("SELECT CompanyId,Company,StateName,CityName,ShortName,Address,ContactNo,Email,Website,company.CityId,company.StateId,company.CountryId FROM company,state,city WHERE city.StateId=state.StateId AND company.CityId=city.CityId AND (CompanyId like '%"+ser+"%' or Company like '%"+ser+"%' or StateName like '%"+ser+"%' or CityName like '%"+ser+"%')");
		query.setFirstResult(start);
		query.setMaxResults(displayrec);
		list3 =  query.list();
		
		SQLQuery query2 = session.createSQLQuery("SELECT CompanyId,Company,StateName,CityName,ShortName,Address,ContactNo,Email,Website,company.CityId,company.StateId,company.CountryId FROM company,state,city WHERE city.StateId=state.StateId AND company.CityId=city.CityId AND (CompanyId like '%"+ser+"%' or Company like '%"+ser+"%' or StateName like '%"+ser+"%' or CityName like '%"+ser+"%')");
		list = query2.list();
		
		SQLQuery query5 = session.createSQLQuery("SELECT * FROM city");
		citylist =  query5.list();
		
		SQLQuery query3 = session.createSQLQuery("SELECT * FROM state");
		statelist =  query3.list();
		
		SQLQuery query4 = session.createSQLQuery("SELECT * FROM country");
		countrylist = query4.list();
		
		
		
		
		totalrecord = list.size();
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
