/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.footprint.lx.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.footprint.dao.IOrderMainDao;
import com.footprint.dao.impl.OrderMainDAODbimpl;

/** 
 * MyEclipse Struts
 * Creation date: 08-01-2013
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 */
public class UpdateOrderAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		int id = Integer.parseInt(request.getParameter("id"));
		int states = Integer.parseInt(request.getParameter("status"+id));
		IOrderMainDao orderDAO = new OrderMainDAODbimpl();
		orderDAO.update(id, states);
		return mapping.findForward("ok");
	}
}