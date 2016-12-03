
package com.footprint.lx.struts.action;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.footprint.dao.IUser_aDao;
import com.footprint.dao.IUser_bDao;
import com.footprint.dao.entity.user_a;
import com.footprint.dao.impl.User_aDAODbimpl;
import com.footprint.dao.impl.User_bDAODbimpl;

public class SaveUserAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		user_a user = new user_a();
		user.setCustomerName(request.getParameter("userName"));
		user.setPwd(request.getParameter("pwd"));
		IUser_aDao userDAO = new User_aDAODbimpl();
		IUser_bDao userDAO1 = new User_bDAODbimpl();
		String msg="哈哈哈哈哈哈，你失败了了失败了";
		try {
			if(userDAO.addUser(user)){
				user_a user_tep = userDAO.findByNameAndPwd(request.getParameter("userName"), request.getParameter("pwd"));
				userDAO1.addUser(user_tep.getCustomerId());
				msg="呵呵，成功了";
				String path="initIndex.do";
				request.setAttribute("returnPath", path);
				request.setAttribute("msg", msg);
				return mapping.findForward("ok");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}