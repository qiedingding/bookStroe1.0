/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.footprint.lx.struts.action;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.footprint.dao.ISeekInfoDao;
import com.footprint.dao.entity.seekInfo;
import com.footprint.dao.impl.SeekInfoDAODbimpl;

public class SaveSeekBookAction extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		seekInfo seekInfo = new seekInfo();
		seekInfo.setSeekName(request.getParameter("seekName"));
		seekInfo.setSeekAuthor(request.getParameter("seekAuthor"));
		seekInfo.setSeekPbName(request.getParameter("seekPbName"));
		seekInfo.setSeekEmail(request.getParameter("seekEmail"));
		seekInfo.setSeekContext(request.getParameter("seekContext"));
		ISeekInfoDao seekDAO = new SeekInfoDAODbimpl();
		try {
			if(seekDAO.addSeekInfo(seekInfo)){
				System.out.println(seekInfo);
				request.setAttribute("path", "initIndex.do");
				request.setAttribute("msg", "留言成功");
				
			}
			else{
				request.setAttribute("path", "initIndex.do");
				request.setAttribute("msg", "留言失败");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mapping.findForward("ok");
		
		
	}
}