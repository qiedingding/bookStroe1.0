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

import com.footprint.dao.IAdminDao;
import com.footprint.dao.impl.AdminDAODbimpl;

/** 
 * MyEclipse Struts
 * Creation date: 08-01-2013
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 * @struts.action-forward name="ok" path="/background/index.jsp"
 */
public class UpdateAdminAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		int adminId = Integer.parseInt(request.getParameter("adminId"));
		int states = Integer.parseInt(request.getParameter("states")); 
		IAdminDao adminDAO = new AdminDAODbimpl();
		if(adminDAO.update(adminId, states)){
			return mapping.findForward("ok");
		}
		return null;
	}
}