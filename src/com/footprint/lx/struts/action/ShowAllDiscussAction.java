/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.footprint.lx.struts.action;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.footprint.dao.IBookInfoDao;
import com.footprint.dao.IDiscussDao;
import com.footprint.dao.entity.discuss;
import com.footprint.dao.impl.BookInfoDAODbimpl;
import com.footprint.dao.impl.DiscussDAODbimpl;


public class ShowAllDiscussAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		IDiscussDao discussDAO = new DiscussDAODbimpl();
		IBookInfoDao bookDAO = new BookInfoDAODbimpl();
		try {
			String id =(String) request.getParameter("bookId");
			int bookId = Integer.parseInt(id);
			List<discuss> discusss = discussDAO.findAll(bookId);
	
			String bookName =  bookDAO.findById(id).getBookName();
			request.setAttribute("bookName", bookName);
			System.out.println(discusss);
			request.setAttribute("discuss", discusss);
			request.setAttribute("bookId", bookId);
			return mapping.findForward("ok");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
}