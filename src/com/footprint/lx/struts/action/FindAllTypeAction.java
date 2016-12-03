/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.footprint.lx.struts.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.footprint.dao.IBookTypeDao;
import com.footprint.dao.entity.BookType;
import com.footprint.dao.impl.BookTypeDAODbimpl;
import com.footprint.lx.struts.fenye.SplitPage;

public class FindAllTypeAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		IBookTypeDao typeDAO = new BookTypeDAODbimpl();
		List<BookType> types = new ArrayList<BookType>();
		int totalRows = typeDAO.getRows();
		HttpSession session = request.getSession();
		SplitPage sp= (SplitPage) session.getAttribute("sp");
		if(sp==null||sp.equals("")){
			SplitPage sp1 = new SplitPage();
			sp1.setTotalRows(totalRows);
			int currentPage=sp1.confirmPage("first");
			sp1.setCurrentPage(currentPage);
			session .setAttribute("sp", sp1);
			sp = sp1;
			System.out.println(sp1+"这里的session为空！！！！！");
			}
		else{
			String flag=request.getParameter("flag");
			sp.setTotalRows(totalRows);
			int currentPage=sp.confirmPage(flag);
			System.out.println("currentPage-----------"+currentPage);
			sp.setCurrentPage(currentPage);
			session .setAttribute("sp", sp);
			System.out.println(sp+"这里的session不不不不为空！！！！！");
		}
		
		try {
			types = typeDAO.findAll(sp);
			request.setAttribute("types", types);
			return mapping.findForward("ok");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}