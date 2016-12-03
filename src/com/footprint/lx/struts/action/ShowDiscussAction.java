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

import com.footprint.dao.IDiscussDao;
import com.footprint.dao.entity.discuss;
import com.footprint.dao.impl.DiscussDAODbimpl;

/** 
 * MyEclipse Struts
 * Creation date: 07-31-2013
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 * @struts.action-forward name="ok" path="/discussList.jsp"
 */
public class ShowDiscussAction extends Action {
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		IDiscussDao discussDAO = new DiscussDAODbimpl();
		List<discuss> discusss;
		try {
			discusss = discussDAO.findAll();
			request.setAttribute("discusss", discusss);
			return mapping.findForward("ok");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
}