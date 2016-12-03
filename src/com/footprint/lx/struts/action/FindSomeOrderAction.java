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

import com.footprint.dao.IOrderMainDao;
import com.footprint.dao.entity.orderMain;
import com.footprint.dao.impl.OrderMainDAODbimpl;

/** 
 * MyEclipse Struts
 * Creation date: 07-30-2013
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 * @struts.action-forward name="ok" path="/orderFind.jsp"
 */
public class FindSomeOrderAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		int uid = Integer.parseInt(request.getParameter("id"));
		IOrderMainDao orderDAO = new OrderMainDAODbimpl();
		try {
			List<orderMain> orders = orderDAO.findByUserId(uid);
			request.setAttribute("orders", orders);
			return mapping.findForward("ok");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}